using UnityEngine;
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
		if (InputDevice.GetStart(0) || InputDevice.GetStart(1))
        {
            // start transition
			CGame.Singleton.currentState = CGame.EGameState.Title;
            Application.LoadLevel("titleV2");
            return;
        }
	
	}
}
