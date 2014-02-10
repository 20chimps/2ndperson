using UnityEngine;
using System.Collections.Generic;
using XInputDotNetPure;

public class MenuControl : MonoBehaviour
{
	public enum ControllerState
	{
		UNPLUGGED,
		NOTREADY,
		READY
	};
	public Dictionary<int,ControllerState> playerStates;
	public List<GameObject> playerIcons;
	//private float lastAction = Time.time;


	// Use this for initialization
	void Start ()
	{
		playerStates = new Dictionary<int, ControllerState>();
		for (int i = 0; i < 4; ++i)
		{
			ControllerState state = ControllerState.UNPLUGGED;
			if(GamePad.GetState((PlayerIndex)i).IsConnected)
			{
				state = ControllerState.NOTREADY;
			}
			playerStates.Add(i,state);
		}
	}

	// Update is called once per frame
	void Update ()
	{
		for (int i = 0; i < 4; ++i)
		{
			if (playerStates[i] == ControllerState.UNPLUGGED)
			{
				//Debug.Log("Player " + (i+1) + " unplugged");
				continue;
			}

            //bool newState = false;
			//if (GamePad.GetState((PlayerIndex)i).Buttons.X == ButtonState.Pressed && (Time.time - lastAction > .2))
            if (GamePad.GetState((PlayerIndex)i).Buttons.A == ButtonState.Pressed)
			{
				//lastAction = Time.time;
				
				if (playerStates[i] == ControllerState.NOTREADY)
				{
					playerStates[i] = ControllerState.READY;
					//newState = true;
				}
    
            }
            else if(GamePad.GetState((PlayerIndex)i).Buttons.B == ButtonState.Pressed)
            {
                playerStates[i] = ControllerState.NOTREADY;
					//newState = false;
            }
				//playerStates[i] = (playerStates[i] == ControllerState.NOTREADY ? ControllerState.READY : ControllerState.NOTREADY);

            playerIcons[i].transform.FindChild("quad").GetComponent<SpriteRenderer>().color = playerStates[i] == ControllerState.READY ? Color.white : Color.red;

		}
		if (playerStates[0] == ControllerState.READY && GamePad.GetState(PlayerIndex.One).Buttons.Start == ButtonState.Pressed)
		{
			// start transition
			PlayGame();
		}
	}

	void PlayGame()
	{
        CGame.Singleton.readyPlayers = new List<bool>();

		int numPlayers = 0;
		for (int i = 0; i < 4; ++i)
		{

			CGame.Singleton.readyPlayers.Add(playerStates[i] == ControllerState.READY ? true : false);
			++numPlayers;
		}
		if (numPlayers > 0)
		Application.LoadLevel("game");
	}
}
