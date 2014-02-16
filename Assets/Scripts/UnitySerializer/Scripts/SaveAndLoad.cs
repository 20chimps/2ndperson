using UnityEngine;
using System.Collections;

public class SaveAndLoad : MonoBehaviour
{

	private int[] array;
	public object arrayObject;
	private byte[] data;
	public GameObject theObject;

// Update is called once per frame
	void Update ()
	{
		if (Input.GetKeyDown (KeyCode.S)) 
		{
			data = LevelSerializer.SerializeLevel (false, theObject.GetComponent<UniqueIdentifier>().Id);
		}
		if (Input.GetKeyDown (KeyCode.L)) 
		{
			LevelSerializer.LoadNow (data, false, false);
		}
	}
}
