using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class TitleScreen : MonoBehaviour 
{
	private enum EFlyThroughStates
	{
		Title = 0,
		Highscores,
		Controls,
		Robot,
		Window,
		Credits,

		Max,
	}

	public GameObject titlePage;
	public GameObject highscoresPage;
	public GameObject controlsPage;
	public GameObject robotPage;
	public GameObject windowPage;
	public GameObject creditsPage;
	public GameObject pressStartLabels;

	private MenuControl.ControllerState[] playerStates;
	private GameObject[] pages = new GameObject[(int)EFlyThroughStates.Max];
	private float[] waitTimes = new float[(int)EFlyThroughStates.Max];
	private EFlyThroughStates currentState = EFlyThroughStates.Title;
	private float timeElapsed;

	void Start()
	{
		waitTimes[(int)EFlyThroughStates.Title]			= 15.0f;
		waitTimes[(int)EFlyThroughStates.Highscores]	= 15.0f;
		waitTimes[(int)EFlyThroughStates.Controls]		= 15.0f;
		waitTimes[(int)EFlyThroughStates.Robot]			= 15.0f;
		waitTimes[(int)EFlyThroughStates.Window]		= 15.0f;
		waitTimes[(int)EFlyThroughStates.Credits]		= 15.0f;

		pages[(int)EFlyThroughStates.Title] = titlePage;
		pages[(int)EFlyThroughStates.Highscores] = highscoresPage;
		pages[(int)EFlyThroughStates.Controls] = controlsPage;
		pages[(int)EFlyThroughStates.Robot] = robotPage;
		pages[(int)EFlyThroughStates.Window] = windowPage;
		pages[(int)EFlyThroughStates.Credits] = windowPage;
		SetPage(EFlyThroughStates.Title);

		playerStates = new MenuControl.ControllerState[CGame.maxPlayers];
		for (int i = 0; i < CGame.maxPlayers; ++i)
		{
			playerStates[i] = MenuControl.ControllerState.NOTREADY;
		}
	}

	void Update()
	{
		if(Input.GetKeyUp(KeyCode.P))
		{
			timeElapsed = waitTimes[(int)currentState];
		}

		timeElapsed += Time.deltaTime;

		if (timeElapsed >= waitTimes[(int)currentState])
		{
			timeElapsed = 0.0f;

			currentState++;
			if (currentState >= EFlyThroughStates.Max)
			{
				currentState = EFlyThroughStates.Title;
			}

			SetPage(currentState);
		}

		switch (currentState)
		{
			case EFlyThroughStates.Title:
				{

				}
				break;
			case EFlyThroughStates.Highscores:
				{

				}
				break;
			case EFlyThroughStates.Controls:
				{

				}
				break;
			case EFlyThroughStates.Robot:
				{

				}
				break;
			case EFlyThroughStates.Window:
				{

				}
				break;
			case EFlyThroughStates.Max:
				{

				}
				break;
			default:
				break;
		}

		// At any stage the players can hit START to enter the game.
		bool playerReady = false;

		if (InputDevice.GetStart(0))
		{
			playerStates[0] = MenuControl.ControllerState.READY;
			playerReady = true;
		}
		if (InputDevice.GetStart(1))
		{
			playerStates[1] = MenuControl.ControllerState.READY;
			playerReady = true;
		}

		if (InputDevice.GetA_Up(0) || InputDevice.GetA_Up(1))
		{
			timeElapsed = 0.0f;

			currentState++;
			if (currentState >= EFlyThroughStates.Max)
			{
				currentState = EFlyThroughStates.Title;
			}

			SetPage(currentState);
		}

		if (playerReady)
		{
			PlayGame();
		}
	}

	void PlayGame()
	{
		CGame.Singleton.readyPlayers = new bool[CGame.maxPlayers];

		int numPlayers = 0;
		for (int i = 0; i < CGame.maxPlayers; ++i)
		{
			CGame.Singleton.readyPlayers[i] = (playerStates[i] == MenuControl.ControllerState.READY ? true : false);
			++numPlayers;
		}

		if (numPlayers > 0)
		{
			CGame.Singleton.currentState = CGame.EGameState.CharacterSelect;
			Application.LoadLevel("characterSelect");
		}
	}

	void SetPage(EFlyThroughStates page)
	{
		foreach (GameObject go in pages)
		{
			if (go == pages[(int)page])
			{
				go.SetActive(true);
				continue;
			}

			go.SetActive(false);
		}
	}
}
