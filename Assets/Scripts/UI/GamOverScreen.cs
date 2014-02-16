using UnityEngine;
using System.Collections;

public class GamOverScreen : MonoBehaviour 
{
	bool[] playersPlaying;

	// Use this for initialization
	void Start () 
	{
		playersPlaying = CGame.Singleton.readyPlayers;	
	}
	
	// Update is called once per frame
	void Update () 
    {
		if (playersPlaying[0]) 
		{
			if (InputDevice.GetStart(0))
	        {
	            // start transition
				Restart();
	        }
		}

		if (playersPlaying[1]) 
		{
			if (InputDevice.GetStart(1))
			{
				// start transition
				Restart();
			}
		}	
	}

	void Restart()
	{
		// TODO: give score to players playing here

		CGame.Singleton.currentState = CGame.EGameState.Title;
		Application.LoadLevel("title");
	}
}
