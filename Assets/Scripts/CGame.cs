using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CGame : MonoBehaviour 
{
	public const int maxPlayers = 2;
	public enum EGameState
	{
		Title,
		CharacterSelect,
		Kitchen,
		Gameover,
	}

	public enum EWinState
	{
		Win,
		Lose,
		HighscoreBeaten,
	}

    private float restartTimer = 0.0f;
    private float restartTimerMax = 10.0f;

	public EGameState currentState = EGameState.Kitchen;
	public EWinState winState = EWinState.Win;

    static CGame gameInstance;
    public static CGame Singleton
	{
		get 
        {
            if (gameInstance == null)
			{
                gameInstance = GameObject.Find("Game").GetComponent<CGame>();
                if (gameInstance == null)
                {
                    Debug.LogError("Could not find game instance.");
                }
			}
            return gameInstance;
		}
	}

    private PlayerController winner;
    
	// if bool == false, do not spawn him
    public bool[] readyPlayers = new bool[maxPlayers];

	//
	public PlayerController.EPropType[] chosenHeroes = new PlayerController.EPropType[maxPlayers];

    public List<PlayerController> players;

	private HighscoreData highscoreData;
	public HighscoreData HighscoreData
	{
		get { return highscoreData; }
		set { highscoreData = value; }
	}

	private float highscoreTimer;
	public float HighscoreTimer
	{
		get { return highscoreTimer; }
		set { highscoreTimer = value; }
	}

    static bool initialised = false;

    public void Awake()
    {
        if (!initialised)
        {
            gameInstance = gameObject.GetComponent<CGame>();

			InitialiseHighscores();

            DontDestroyOnLoad(gameInstance.gameObject);
            initialised = true;
        }
        else
        {
            Destroy(gameObject);
        }
    }

	private void InitialiseHighscores()
	{
		highscoreData = Transform.FindObjectOfType<HighscoreData>();
		if (highscoreData == null)
		{
			GameObject go = Instantiate(Resources.Load("Prefabs/HighscoreData")) as GameObject;
			highscoreData = go.GetComponent<HighscoreData>();
		}
		LoadData();
	}
	
	public void SetWinner(PlayerController _Player)
	{
		winner = _Player;
	}
	
	void OnGUI()
	{
		if(winner != null)
		{
 
			// CHange this later to be the player name <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
			if(GUI.Button(new Rect(20.0f, 20.0f, 200.0f, 200.0f), "Winner = " + winner.playerIndex))
			{
				Application.LoadLevel("victory");
			}
		}
	}

    public void Update()
    {
        if (InputDevice.GetC(0) && InputDevice.GetC(1))
        {
            restartTimer += Time.deltaTime;

            if (restartTimer >= 10.0f)
            {
                restartTimer = 0.0f;
                CGame.Singleton.currentState = CGame.EGameState.Title;
                Application.LoadLevel("title");
            }
        }
        else
        {
            restartTimer = 0.0f;
        }
    }


	public bool HasScoreBeenBeaten(int players, float time)
	{
		return (highscoreData.HasScoreBeenBeaten(players, time));
	}

	public void SetNewHighscore(int players, Highscore score)
	{
		highscoreData.SetNewScore(players, score);
		SaveData();
	}

	[ContextMenu("TimeTest")]
	public void Test()
	{
		double second = 1.0 ;
		double milisecond = second * 0.001;
		double minute = second * 60.0f;

		double numSeconds = 24.0;
		double numMiliseconds = 987;
		double numMinutes = 37.0;

		System.TimeSpan time = System.TimeSpan.FromSeconds(((minute * numMinutes)) + ((second * numSeconds)) + ((milisecond * numMiliseconds)));
		double removeThousand = numMiliseconds % 1000.0f;
		double removeHundred = numMiliseconds % 100.0f;

		Debug.Log(removeHundred);
		Debug.Log(removeThousand);
		Debug.Log("Min: " + time.Minutes.ToString("D2"));
		Debug.Log("Sec: " + time.Seconds.ToString("D2"));
		Debug.Log("MS: " + ((int)(time.Milliseconds * 0.01f)).ToString("D2"));
		Debug.Log("MSS: " + ((int)removeHundred).ToString("D2"));
	}


	[ContextMenu("SaveTest")]
	public void SaveData()
	{
		LevelSerializer.SaveObjectTreeToFile("highscores" + ".scores", highscoreData.gameObject);
	}

	[ContextMenu("POP")]
	public void PopulateSomeData()
	{
		List<Highscore> player1Scores = highscoreData.GetHighScoreList(0);
		player1Scores.Add(new Highscore("JAD", 659.99, 1));
		player1Scores.Add(new Highscore("MAN", 659.99, 1));
		player1Scores.Add(new Highscore("MUG", 659.99, 1));
		player1Scores.Add(new Highscore("SCT", 659.99, 1));
		player1Scores.Add(new Highscore("SOT", 659.99, 1));
		player1Scores.Add(new Highscore("KIT", 659.99, 1));
		player1Scores.Add(new Highscore("JIM", 659.99, 1));
		player1Scores.Add(new Highscore("SPG", 659.99, 1));
		player1Scores.Add(new Highscore("CLK", 659.99, 1));
		player1Scores.Add(new Highscore("MUG", 659.99, 1));

		List<Highscore> player2Scores = highscoreData.GetHighScoreList(1);
		player2Scores.Add(new Highscore("CAN & JAD", 659.99, 1));
		player2Scores.Add(new Highscore("MUG & TOM", 659.99, 1));
		player2Scores.Add(new Highscore("KIT & SPE", 659.99, 1));
		player2Scores.Add(new Highscore("DST & SCT", 659.99, 1));
		player2Scores.Add(new Highscore("MUG & MAN", 659.99, 1));
		player2Scores.Add(new Highscore("KIM & SPE", 659.99, 1));
		player2Scores.Add(new Highscore("MUG & BOB", 659.99, 1));
		player2Scores.Add(new Highscore("JIM & SPE", 659.99, 1));
		player2Scores.Add(new Highscore("SPE & NAT", 659.99, 1));
		player2Scores.Add(new Highscore("SIM & MAT", 659.99, 1));
	}



	[ContextMenu("LoadTest")]
	public void LoadData()
	{

		if (currentState == EGameState.Title)
		{
			
			bool caught = false;
			try
			{
				LevelSerializer.LoadObjectTreeFromFile("highscores" + ".scores");
			}
			catch (System.IO.FileNotFoundException)
			{
				caught = true;
			}
			catch (System.IO.IsolatedStorage.IsolatedStorageException)
			{
				caught = true;
			}

			if (caught || highscoreData.GetHighScoreList(0).Count < 10)
			{
				// Nothing is saved.
				// Populate it.
				PopulateSomeData();
				highscoreData.SortListsAscending();
				SaveData();
				
				Debug.Log("NEWGAME");
			}

			highscoreData.SortListsAscending();

			//List<Highscore> scores = highscoreData.GetHighScoreList(0);
			//foreach (Highscore score in scores)
			//{
			//    Debug.Log(score);
			//}

			//scores = highscoreData.GetHighScoreList(1);
			//foreach (Highscore score in scores)
			//{
			//    Debug.Log(score);
			//}
		}
	}
}
