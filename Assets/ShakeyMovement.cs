using UnityEngine;
using System.Collections;
 
public class ShakeyMovement : MonoBehaviour 
{
	 
	public bool Shaking; 
	public float ShakeDecay;
	public float ShakeIntensity;   
	private Vector3 OriginalPos;
	private Quaternion OriginalRot;
	 
	void Start()
	{
	    Shaking = false;   
	}
	 
	 
	// Update is called once per frame
	void Update () 
	{
	    if(ShakeIntensity > 0)
	    {

			transform.position = OriginalPos + Random.insideUnitSphere * ShakeIntensity;
			if(transform.position.y < 0.0f)
			{
				transform.position = new Vector3(transform.position.x, 0.0f, transform.position.z);
			}

	      	transform.rotation = new Quaternion(OriginalRot.x + Random.Range(-ShakeIntensity, ShakeIntensity)*.2f,
	                                  OriginalRot.y + Random.Range(-ShakeIntensity, ShakeIntensity)*.2f,
	                                  OriginalRot.z + Random.Range(-ShakeIntensity, ShakeIntensity)*.2f,
	                                  OriginalRot.w + Random.Range(-ShakeIntensity, ShakeIntensity)*.2f);

	       ShakeIntensity -= ShakeDecay;
	    }
	    else if (Shaking)
	    {
	       Shaking = false;  
	    }

		DoShake();
	}

	public void DoShake()
	{
		if(!Shaking)
		{
		    OriginalPos = transform.position;
		    OriginalRot = transform.rotation;
		 
		    ShakeIntensity = 0.01f;
		    ShakeDecay = 0.02f;
		    Shaking = true;
		}
	} 
}