using UnityEngine;
using System.Collections;
using System.Collections.Generic;
//using XInputDotNetPure;


public class Kitchen : MonoBehaviour 
{
    const int maxCharacters = 4;

#pragma warning disable 0414 // playerCount unsused
    private int playerCount = 0;

    public bool gameWon;
    public bool gameLost;

    bool[] assignedObjects = new bool[maxCharacters];

    private int deaths;

    private float waitTime = 2.5f;
    private float timeAccum;

	// Use this for initialization
	void Start () 
    {

       // Random.seed = (int)Time.time;

        StartPoint[] startPoints = FindObjectsOfType<StartPoint>();

        bool[] connectedPlayers = CGame.Singleton.readyPlayers;
		PlayerController.EPropType[] chosenProp = CGame.Singleton.chosenHeroes;

        List<PlayerController> players = new List<PlayerController>();

		for (int i = 0; i < connectedPlayers.Length; ++i )
		{
			if(connectedPlayers[i])
			{
				GameObject playerGO = null;


				int rand = 0;
				rand = Random.Range(0, maxCharacters);


				//PlayerController.EPropType type = (PlayerController.EPropType)rand;
				//playerGO = Instantiate(Resources.Load("Characters/Sponge")) as GameObject;

				switch (chosenProp[i])
				{
					case PlayerController.EPropType.Sponge: playerGO = Instantiate(Resources.Load("Prefabs/Characters/Sponge")) as GameObject; break;
					case PlayerController.EPropType.Timer: playerGO = Instantiate(Resources.Load("Prefabs/Characters/Timer")) as GameObject; break;
					case PlayerController.EPropType.Mug: playerGO = Instantiate(Resources.Load("Prefabs/Characters/Mug")) as GameObject; break;
					case PlayerController.EPropType.Can: playerGO = Instantiate(Resources.Load("Prefabs/Characters/Can")) as GameObject; break;
					default: Debug.LogError("Unhandled case"); break;
				}


				playerGO.transform.position = startPoints[i].transform.position;

				playerGO.GetComponent<PlayerController>().playerIndex = i;

				players.Add(playerGO.GetComponent<PlayerController>());

				playerGO.GetComponent<CDeathSequence>().EventSequenceEnd += OnDeathSequenceEnd;

				i++;
			}
		}


        CGame.Singleton.players = players;


	}

	// Update is called once per frame
	void Update () 
    {
        if (gameWon || gameLost)
        {
            timeAccum += Time.deltaTime;
            //Debug.Log(timeAccum);
            if (timeAccum >= waitTime)
            {
                if (gameWon)
                {
                    Application.LoadLevel("victory");
                    return;
                }
                else if (gameLost)
                {
                    Application.LoadLevel("defeat");
                    return;
                }
            }
        }

        if (Input.GetKeyUp(KeyCode.F1))
        {
            gameWon = true;
            gameLost = false;
        }
        else if (Input.GetKeyUp(KeyCode.F2))
        {
            gameLost = true;
            gameWon = false;
        }
	}


    //void OnGUI()
    //{
    //    if (gameWon)
    //    {
    //        GUI.TextArea(new Rect(Screen.width * 0.5f, Screen.height * 0.5f, 100.0f, 100.0f), "Made it out!\n P1 Press start.");
    //    }
    //    else if (gameLost)
    //    {
    //        GUI.TextArea(new Rect(Screen.width * 0.5f, Screen.height * 0.5f, 100.0f, 100.0f), "Never gonna make it outta the kitchen!\n P1 Press start.");
    //    }
    //}

    public void OnDeathSequenceEnd()
    {
        ++deaths;
        if (deaths >= CGame.Singleton.players.Count)
        {
            gameLost = true;
        }
    }
}
