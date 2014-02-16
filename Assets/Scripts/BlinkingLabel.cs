using UnityEngine;
using System.Collections;

public class BlinkingLabel : MonoBehaviour 
{
	private GUIText label;

	private float timeElapsed;

	private float[] waitTimes = new float[(int)EBlinkState.Max] { 1.25f, 0.5f, 0.25f };

	private enum EBlinkState
	{
		Show = 0,
		Fade,
		Hide,
		Max,
	}

	private EBlinkState currentState = EBlinkState.Show;

	// Use this for initialization
	void Start () 
	{
		label = GetComponent<GUIText>();
	}
	
	// Update is called once per frame
	void Update () 
	{
		timeElapsed += Time.deltaTime;

		if (timeElapsed > waitTimes[(int)currentState])
		{
			timeElapsed = 0.0f;

			currentState++;
			if(currentState >= EBlinkState.Max)
			{
				currentState = EBlinkState.Show;
			}
		}

		switch (currentState)
		{
			case EBlinkState.Show:
				{
					Color col = guiText.color;
					col.a = 1.0f;
					guiText.color = col;
				}
				break;
			case EBlinkState.Fade:
				{
					Color col = guiText.color;
					col.a = Mathf.Lerp(1.0f, 0.0f, timeElapsed / waitTimes[(int)EBlinkState.Fade]);
					guiText.color = col;
				}
				break;
			case EBlinkState.Hide:
				{
					// Do nothing.
				}
				break;
			case EBlinkState.Max: // fall
			default:
				{
				}
				break;
		}
	}
}
