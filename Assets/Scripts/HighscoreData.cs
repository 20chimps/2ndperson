using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System;

public class HighscoreData : MonoBehaviour
{
	public List<Highscore> onePlayerScores = new List<Highscore>();
	public List<Highscore> twoPlayerScores = new List<Highscore>();


	static bool initialised = false;

	public void Awake()
	{
		if (!initialised)
		{
			DontDestroyOnLoad(gameObject);
			initialised = true;
		}
		else
		{
			Destroy(gameObject);
		}
	}

	public List<Highscore> GetHighScoreList(int i)
	{
		if (i == 0)
		{
			return onePlayerScores;
		}
		//else
		return twoPlayerScores;
	}

	public bool HasScoreBeenBeaten(int players, float time)
	{
		players -= 1;
		
		if (players == 0)
		{
			foreach(Highscore score in onePlayerScores)
			{
				if (time < score.time)
				{
					return true;
				}
			}
		}
		else
		{
			foreach (Highscore score in twoPlayerScores)
			{
				if (time < score.time)
				{
					return true;
				}
			}
		}


		return false;
	}

	public void SetNewScore(int players, Highscore score)
	{
		players -= 1;
		if (players == 0)
		{
			onePlayerScores.Add(score);
		}
		else
		{
			twoPlayerScores.Add(score);		
		}
		SortListsAscending(players);
	}

	public void SortListsAscending()
	{
		SortListsAscending(0);
		SortListsAscending(1);
	}

	public void SortListsAscending(int players)
	{
		// http://stackoverflow.com/questions/2376628/sort-with-two-criteria-string-ascending-int-ascending

		if (players == 0)
		{
			onePlayerScores.Sort(new Comparison<Highscore>((x, y) =>
			{
				int result = y.level.CompareTo(x.level);
				return (result != 0) ? result : y.time.CompareTo(x.time);
			}));

			onePlayerScores.Reverse();

			if (onePlayerScores.Count > 10)
			{
				Debug.Log(onePlayerScores[onePlayerScores.Count - 1]);
				onePlayerScores.RemoveAt(onePlayerScores.Count - 1);
			}
		}
		else
		{
			twoPlayerScores.Sort(new Comparison<Highscore>((x, y) =>
			{
				int result = y.level.CompareTo(x.level);
				return (result != 0) ? result : y.time.CompareTo(x.time);
			}));

			twoPlayerScores.Reverse();

			if (twoPlayerScores.Count > 10)
			{
				twoPlayerScores.RemoveAt(twoPlayerScores.Count - 1);
			}
		}
	}
}
