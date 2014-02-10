using UnityEngine;
using System.Collections;

public class scrollingspin : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		transform.Rotate(new Vector3(0f,0f,1f));
		Vector3 newpos = transform.position;
		newpos.y -= 1f * Time.deltaTime;
		transform.position = newpos;

		if (transform.position.y < -6f)
		{
			CGame.Singleton.currentState = CGame.EGameState.Title;
			Application.LoadLevel("titleV2");
		}
	}
}
