using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CGame : MonoBehaviour 
{
	public const int maxPlayers = 2;
	public enum EGameState
	{
		Title,
		CharacterSelect,
		Kitchen,
	}

	public EGameState currentState = EGameState.Kitchen;

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
    public bool[] readyPlayers = new bool[maxPlayers];

	//
	public PlayerController.EPropType[] chosenHeroes = new PlayerController.EPropType[maxPlayers];

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
