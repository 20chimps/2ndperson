﻿using UnityEngine;
using System.Collections;
using XInputDotNetPure;

public class GamOverScreen : MonoBehaviour 
{

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () 
    {
        if (GamePad.GetState(PlayerIndex.One).Buttons.Start == ButtonState.Pressed)
        {
            // start transition
			CGame.Singleton.currentState = CGame.EGameState.Title;
            Application.LoadLevel("titleV2");
            return;
        }
	
	}
}
