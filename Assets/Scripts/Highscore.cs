using UnityEngine;
using System.Collections;
using System;

public class Highscore 
{
	public Highscore()
	{
	}

	public Highscore(string name, double time, int level)
	{
		this.name = name;
		this.time = time;
		this.level = level;
	}
	
	public string name;
	public double time;
	public int level;

	public override string ToString()
	{
		System.TimeSpan timeSpan = System.TimeSpan.FromSeconds(time);
		string strTime = timeSpan.Minutes.ToString("D2") + ":" + timeSpan.Seconds.ToString("D2") + ":" + (Mathf.FloorToInt(timeSpan.Milliseconds * 0.1f)).ToString("D2");
		return string.Format("{0}\t{1}", name, strTime); 
	}
}