using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class HighscoreTable : MonoBehaviour 
{
	public GUIText[] scoreLists = new GUIText[2];

	// Use this for initialization
	void Start () 
	{
		for (int i = 0; i < 2; ++i)
		{
			List<Highscore> scores = CGame.Singleton.HighscoreData.GetHighScoreList(i);

			scoreLists[i].text = "";

			foreach(Highscore score in scores)
			{
				scoreLists[i].text += score.ToString() + "\n";
			}
		}
	}
	
	// Update is called once per frame
	void Update () 
	{
	
	}
}
