using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CGame : MonoBehaviour 
{
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
    public List<bool> readyPlayers = new List<bool>();

    public List<PlayerController> players;

    static bool initialised = false;

    public void Awake()
    {
        if (!initialised)
        {
            gameInstance = gameObject.GetComponent<CGame>();
            DontDestroyOnLoad(gameInstance.gameObject);
            initialised = true;
        }
        else
        {
            Destroy(gameObject);
        }
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
}
