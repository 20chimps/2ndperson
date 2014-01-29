using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class WinCondition : MonoBehaviour 
{
	public bool requireTeam = false;

    public int playerCount = 0;

    private Kitchen kitchen;

    void Start()
    {
        GameObject KitGO = GameObject.Find("KitchenLogic") as GameObject;
        kitchen = KitGO.GetComponent<Kitchen>();
    }

	// Update is called once per frame
	void Update ()
    {
        if (requireTeam)
        {
            if (playerCount >= CGame.Singleton.players.Count)
            {
                //CGame.Singleton.SetWinner(CGame.Singleton.players[0]);
                kitchen.gameWon = true;
            }
        }
        else if (playerCount == 1)
        {
            //CGame.Singleton.SetWinner(CGame.Singleton.players[0]);
            kitchen.gameWon = true;
        }
	}
	
	void OnTriggerEnter(Collider _PlayerCollider)
	{
		if(_PlayerCollider.tag == "Player")
		{
            ++playerCount;
		}
	}

    void OnTriggerExit(Collider _PlayerCollider)
    {
        if (_PlayerCollider.tag == "Player")
        {
            --playerCount;
        }
    }

}
