using UnityEngine;
using System.Collections;

public class HighscoreEntry : MonoBehaviour 
{
	public GUIText[] inputLabels = new GUIText[CGame.maxPlayers];
	public GUIText timer;
	public GameOverScreenLogic gameOverLogic;

	private float timeToInput = 45.0f; // 30 seconds 

	private bool[] playersPlaying;
	private bool[] movedStick = new bool[CGame.maxPlayers];
	private int[] selectedCharacter = new int[CGame.maxPlayers];
	private int maxChars;
	private int[] charactersUsed = new int[CGame.maxPlayers];

	private string[] characters = new string[] { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z",
												 "0", "1", "2", "3", "4", "6", "7", "8", "9",
												 "_", "!", " "};


	void Start () 
	{
		playersPlaying = CGame.Singleton.readyPlayers;
		maxChars = characters.Length;

		for (int i = 0; i < playersPlaying.Length; ++i)
		{
			if (playersPlaying[i])
			{
				inputLabels[i].gameObject.SetActive(true);
			}
			else
			{
				inputLabels[i].gameObject.SetActive(false);
			}
		}
	}
	
	void Update ()
	{
		// input
		for(int i = 0; i < playersPlaying.Length; ++i)
		{
			if (playersPlaying[i] && charactersUsed[i] < 3)
			{
				if (charactersUsed[i] < 3 && inputLabels[i].text.Length > 0)
				{
					inputLabels[i].text = inputLabels[i].text.Substring(0, inputLabels[i].text.Length - 1);
				}

				float moveY = InputDevice.GetAxisY(i);
				if (moveY == 0.0f)
				{
					movedStick[i] = false;
				}
				if (movedStick[i] == false)
				{
					if (moveY == 0.0f)
					{
					}
					else if (moveY > 0.001f)
					{
						movedStick[i] = true;
						++selectedCharacter[i];
						if (selectedCharacter[i] >= maxChars)
						{
							selectedCharacter[i] = 0;
						}
					}
					else if (moveY < 0.001f)
					{
						movedStick[i] = true;

						--selectedCharacter[i];
						if (selectedCharacter[i] < 0)
						{
							selectedCharacter[i] = maxChars - 1;
						}
					}
				}

				if (InputDevice.GetA_Up(i))
				{
					++charactersUsed[i];
					inputLabels[i].text += characters[selectedCharacter[i]];
				}
				else if (InputDevice.GetB_Up(i))
				{
					if (charactersUsed[i] > 0)
					{
						--charactersUsed[i];
						inputLabels[i].text = inputLabels[i].text.Substring(0, inputLabels[i].text.Length - 1);
					}
				}

				// Add the last selected character to highlight it
				if (charactersUsed[i] < 3)
				{
					inputLabels[i].text += characters[selectedCharacter[i]];
				}
			}
		}

		bool bothDone = false;
		for (int i = 0; i < playersPlaying.Length; ++i)
		{
			if(playersPlaying[i])
			{
				// If player 2 or higher and previous player IS playing
				if (i > 0 && playersPlaying[0])
				{
					bothDone = bothDone && charactersUsed[i] == 3;
				}
				else
				{
					bothDone = charactersUsed[i] == 3;
				}
			}
		}

		timeToInput -= Time.deltaTime;
		if (timeToInput < 0.0f)
		{
			timeToInput = 0.0f;
		}
		timer.text = Mathf.Round(timeToInput).ToString();

		if (timeToInput <= 0.0f || bothDone)
		{
			int playerCount = 1;
			string newName = "";
			if (playersPlaying[0] && playersPlaying[1])
			{
				newName = inputLabels[0].text + " & " + inputLabels[1].text;
				playerCount = 2;
			}
			else if (playersPlaying[0])
			{
				newName = inputLabels[0].text;
			}
			else
			{
				newName = inputLabels[1].text;
			}

			int level = 1;
			Highscore newScore = new Highscore(newName, CGame.Singleton.HighscoreTimer, level);
			CGame.Singleton.SetNewHighscore(playerCount, newScore);

			gameOverLogic.state = GameOverScreenLogic.EScreenState.GameOver;
			gameOverLogic.secondaryGameOverText.text = newScore.ToString();
			gameOverLogic.gameOverPage.SetActive(true);
			gameOverLogic.inputHighscore.SetActive(false);
		}
	}
}
