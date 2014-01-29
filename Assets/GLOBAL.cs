using UnityEngine;
using System.Collections.Generic;

public class GLOBAL : MonoBehaviour
{
	
	static GLOBAL pGLOBAL;
	public static GLOBAL Singleton
	{
		get 
        {
			if (pGLOBAL == null)
			{
                pGLOBAL = GameObject.Find("Game").GetComponent<GLOBAL>();
                if (pGLOBAL == null)
                {
                    Debug.LogError("Could not find game instance.");
                }
			}
			return pGLOBAL;
		}
	}

    public void Awake()
    {
        pGLOBAL = gameObject.GetComponent<GLOBAL>();
        DontDestroyOnLoad(pGLOBAL.gameObject);
    }

	// if bool == false, do not spawn him
	public List<bool> players;

	public GLOBAL()
	{
		players = new List<bool>();
	}
}
