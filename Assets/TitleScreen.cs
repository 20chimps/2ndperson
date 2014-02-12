using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class TitleScreen : MonoBehaviour 
{
	public GameObject titlePage;
	public GameObject highscoresPage;
	public GameObject controlsPage;
	public GameObject robotPage;
	public GameObject windowPage;

	private MenuControl.ControllerState[] playerStates;

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
