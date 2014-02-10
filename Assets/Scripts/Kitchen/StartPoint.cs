using UnityEngine;
using System.Collections;

#if UNITY_EDITOR
using UnityEditor;
#endif

public class StartPoint : MonoBehaviour 
{
	public enum StartPointColor
	{
		Red,
		Green,
		Blue,
		Yellow,
	}

	public StartPointColor startColor;
	private Color color;

	// Use this for initialization
	void Start () 
	{
		switch(startColor)
		{
		case StartPointColor.Red: color = Color.red; break;
		case StartPointColor.Green: color = Color.green; break;
		case StartPointColor.Blue: color = Color.blue; break;
		case StartPointColor.Yellow: color = Color.yellow; break;

		}
	}
	
	// Update is called once per frame
	void Update () 
	{
	
	}

#if UNITY_EDITOR
	void OnDrawGizmos()
	{
        //Handles.color = color;
        //Handles.DrawSphere(0, transform.position, Quaternion.identity, 0.1f);
        //Handles.DrawLine(transform.position, transform.position + (Vector3.up * 0.25f));
	}
#endif

}
