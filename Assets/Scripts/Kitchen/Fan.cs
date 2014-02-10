using UnityEngine;
using System.Collections;

public class Fan : MonoBehaviour 
{
    public float angleAccum;
    public float speed = 100.0f;

	// Use this for initialization
	void Start () 
    {
	
	}
	
	// Update is called once per frame
	void Update ()
    {
        //angleAccum += speed * Time.deltaTime;
        //if (angleAccum > 360.0f)
        //{
        //    angleAccum = 0.0f;
        //}
        transform.Rotate(Vector3.forward, speed * Time.deltaTime);
	}
}
