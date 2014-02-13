using UnityEngine;
using System.Collections;
using System.Collections.Generic;

// NOTE: THIS CLASS IS ONLY SUPPORTS 2 PLAYERS

public class CharacterSelectScreen : MonoBehaviour 
{
	public GUIText[] playerLabels;
	public GUIText[] playerStartLabels;

	public PlayerController[] propCharacters = new PlayerController[4];

	private PlayerController.EPropType[] propSelections = new PlayerController.EPropType[CGame.maxPlayers];
	private bool[] playersPlaying;
	private MenuControl.ControllerState[] readyPlayers = new MenuControl.ControllerState[CGame.maxPlayers];
	private Arrow[] arrows = new Arrow[CGame.maxPlayers];

	private bool[] movedStick = new bool[CGame.maxPlayers];

	// Use this for initialization
	void Start () 
	{
		// Disable the blinking "press start" labels for any active players
		playersPlaying = CGame.Singleton.readyPlayers;

		for (int i = 0; i < playersPlaying.Length; ++i )
		{
			if(i < playerStartLabels.Length)
			{
				playerLabels[i].gameObject.SetActive(false);
			}
		}

		// Make a default selection for the player
		for (int i = 0; i < playersPlaying.Length; ++i)
		{
			if (playersPlaying[i])
			{
				AddPlayer(i);
				MoveArrow(i);
				
			}
			else
			{
				propSelections[i] = PlayerController.EPropType.None;
			}
		}

		for (int i = 0; i < CGame.maxPlayers; ++i )
		{
			readyPlayers[i] = MenuControl.ControllerState.NOTREADY;
		}

		GameObject.Find("AiHead(Clone)").GetComponent<AudioListener>().enabled = false;
	}
	
	// Update is called once per frame
	void Update () 
	{
		// Check if player joins
		if (!playersPlaying[0] && InputDevice.GetStart(0))
		{
			AddPlayer(0);
		}
		if (!playersPlaying[1] && InputDevice.GetStart(1))
		{
			AddPlayer(1);
		}

		float movement;
		if (playersPlaying[0])
		{
			// P1 Input
			movement = InputDevice.GetAxisX(0);
			if(movement == 0.0f)
			{
				movedStick[0] = false;
			}
			if(movedStick[0] == false)
			{
				if (movement == 0.0f)
				{
				}
				else if (movement > 0.001f)
				{
					propSelections[0] = SelectRight(propSelections[0], 1);
					MoveArrow(0);
					movedStick[0] = true;
				}
				else if(movement < 0.001f)
				{
					propSelections[0] = SelectLeft(propSelections[0], 1);
					MoveArrow(0);
					movedStick[0] = true;
				}
			}

			// Check if P1 wants to ready up
			if (readyPlayers[0] == MenuControl.ControllerState.NOTREADY)
			{
				if (InputDevice.GetA(0))
				{
					readyPlayers[0] = MenuControl.ControllerState.READY;
				}
			}

			// Or Go back from ready
			else if (readyPlayers[0] == MenuControl.ControllerState.READY)
			{
				if (InputDevice.GetA(0))
				{
					readyPlayers[0] = MenuControl.ControllerState.NOTREADY;
				}
			}
		}

		if (playersPlaying[1])
		{
			// P2 Input
			movement = InputDevice.GetAxisX(1);
			if (movement == 0.0f)
			{
				movedStick[1] = false;
			}
			if (movedStick[1] == false)
			{
				if (movement == 0.0f)
				{
				}
				else if (movement > 0.001f)
				{
					propSelections[1] = SelectRight(propSelections[1], 0);
					MoveArrow(1);
					movedStick[1] = true;
				}
				else if (movement < 0.001f)
				{
					propSelections[1] = SelectLeft(propSelections[1], 0);
					MoveArrow(1);
					movedStick[1] = true;
				}
			}

			// Check if P2 wants to ready up
			if (readyPlayers[1] == MenuControl.ControllerState.NOTREADY)
			{
				if (InputDevice.GetA(1))
			    {
			        readyPlayers[1] = MenuControl.ControllerState.READY;
			    }
			}

			// Or Go back from ready
			else if (readyPlayers[1] == MenuControl.ControllerState.READY)
			{
				if (InputDevice.GetA(1))
			    {
			        readyPlayers[1] = MenuControl.ControllerState.NOTREADY;
			    }
			}
		}

		// Check if all ready
		int numPlayers = 0;
		for(int i = 0; i < CGame.maxPlayers; ++i)
		{
			if(playersPlaying[i])
			{
				numPlayers++;
			}
		}

		int readyCount = 0;
		for (int i = 0; i < CGame.maxPlayers; ++i)
		{
			if (readyPlayers[i] == MenuControl.ControllerState.READY)
			{
				readyCount++;
			}
		}
		//Debug.Log(readyCount);
		if (numPlayers == readyCount)
		{
			PlayGame();
		}
	}

	PlayerController.EPropType SelectRight(PlayerController.EPropType currentProp, int checkAgainstPlayer)
	{
		++currentProp;
		if(currentProp >= PlayerController.EPropType.MAX)
		{
			currentProp = 0;
		}

		// Check if already selected
		if (propSelections[checkAgainstPlayer] == currentProp)
		{
			// It has already been selected so grab the next one.
			return SelectRight(currentProp, checkAgainstPlayer);
		}
		//Debug.Log(currentProp);
		return currentProp;
	}

	PlayerController.EPropType SelectLeft(PlayerController.EPropType currentProp, int checkAgainstPlayer)
	{
		--currentProp;
		if (currentProp < 0)
		{
			currentProp = PlayerController.EPropType.MAX - 1;
		}

		// Check if already selected
		if (propSelections[checkAgainstPlayer] == currentProp)
		{
			// It has already been selected so grab the next one.
			return SelectLeft(currentProp, checkAgainstPlayer);
		}

		return currentProp;
	}

	public void AddPlayer(int i)
	{
		GameObject arrowGo = Instantiate(Resources.Load("Prefabs/UI/Arrow")) as GameObject;
		playersPlaying[i] = true;
		arrows[i] = arrowGo.GetComponent<Arrow>();
		playerLabels[i].gameObject.SetActive(true);
		playerStartLabels[i].gameObject.SetActive(false);
		propSelections[i] = (PlayerController.EPropType)i;

		if (i == 0)
		{
			propSelections[0] = SelectRight(propSelections[0], 1);
		}
		else
		{
			propSelections[1] = SelectRight(propSelections[1], 0);
		}

		playerLabels[i].gameObject.SetActive(true);
		MoveArrow(i);
	}

	public void MoveArrow(int player)
	{
		if (arrows[player] != null)
		{
			int iSelect = (int)propSelections[player];
			Vector3 newPos =  arrows[player].SetTarget(propCharacters[iSelect].transform);
			newPos.y += 0.1f;
			playerLabels[player].transform.position = newPos;
		}

	}

	void PlayGame()
	{
		CGame.Singleton.readyPlayers = playersPlaying;
		CGame.Singleton.chosenHeroes = propSelections;

		CGame.Singleton.currentState = CGame.EGameState.Kitchen;
		Application.LoadLevel("game");
	}
}
