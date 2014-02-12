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

		Max,
	}

	public GameObject titlePage;
	public GameObject highscoresPage;
	public GameObject controlsPage;
	public GameObject robotPage;
	public GameObject windowPage;
	public GameObject pressStartLabels;

	private MenuControl.ControllerState[] playerStates;

	private float timeElapsed;

	private float[] waitTimes = new float[(int)EFlyThroughStates.Max];

	public TitleScreen()
	{
		waitTimes[(int)EFlyThroughStates.Title] = 0.0f;
		waitTimes[(int)EFlyThroughStates.Highscores] = 0.0f;
		waitTimes[(int)EFlyThroughStates.Controls] = 0.0f;
		waitTimes[(int)EFlyThroughStates.Robot] = 0.0f;
	}


	void Start()
	{
		playerStates = new MenuControl.ControllerState[CGame.maxPlayers];
		for (int i = 0; i < CGame.maxPlayers; ++i)
		{
			playerStates[i] = MenuControl.ControllerState.NOTREADY;
		}
	}

	void Update()
	{
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
}
