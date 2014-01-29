using UnityEngine;
using System.Collections;

public class Climbable : MonoBehaviour 
{
    public Vector3 climbDirection;

	// Use this for initialization
	void Start () 
	{
	
	}
	
	// Update is called once per frame
	void Update () 
	{
        Debug.DrawLine(transform.position, transform.position + climbDirection);
	}

    public void OnTriggerStay(Collider col)
    {
        if (col.tag == "Player")
        {
            col.gameObject.GetComponent<PlayerController>().CanClimb = true;
            col.gameObject.GetComponent<PlayerController>().ClimbDirection = climbDirection;
        }
    }

    public void OnTriggerExit(Collider col)
    {
        if (col.tag == "Player")
        {
            col.gameObject.GetComponent<PlayerController>().CanClimb = false;
            col.gameObject.GetComponent<PlayerController>().ClimbDirection = Vector3.zero;
        }
    }

    public void OnGizmosDraw()
    {
        
    }
}
