using UnityEngine;
using System.Collections;

public class crosshair : MonoBehaviour {

	enum CrosshairState
	{
		Wandering,
		Alert
	}

	CrosshairState state;
	Transform target;
	Vector3 facing;
	Vector3 randomFace;
	public Camera myCam;
	float sprHeight;
	float sprWidth;

	// Use this for initialization
	void Start () 
	{
		RandomizeFacing();

		StartSpin();


		//myCam = GameObject.FindObjectOfType<AiHead>().camera;
		sprHeight = GetComponent<SpriteRenderer>().sprite.bounds.size.y / 4;
		sprWidth = GetComponent<SpriteRenderer>().sprite.bounds.size.x / 2;

		//Debug.Log(sprHeight + " " + sprWidth);

		if(CGame.Singleton.currentState != CGame.EGameState.Kitchen)
		{
			GetComponent<SpriteRenderer>().enabled = false;
		}
	}

	// Update is called once per frame
	void Update () 
	{
		switch (state)
		{
		case CrosshairState.Wandering:
		{
			float dist = (transform.position - myCam.transform.position).z;
			float leftBorder = myCam.ViewportToWorldPoint(new Vector3(0,0,dist)).x;
			float rightBorder = myCam.ViewportToWorldPoint(new Vector3(1,0,dist)).x;
			float upBorder = myCam.ViewportToWorldPoint(new Vector3(0,1,dist)).y;
			float downBorder = myCam.ViewportToWorldPoint(new Vector3(0,0,dist)).y;
			
			//Debug.Log(leftBorder + " " + rightBorder + " " + upBorder + " " + downBorder);

			Vector3 mult = Vector3.one;
			if (transform.position.x < leftBorder + sprWidth)
			{
				mult = Vector3.right;
			}
			if (transform.position.x > rightBorder - sprWidth)
			{
				mult = Vector3.left;
			}
			if (transform.position.y > upBorder - sprHeight)
			{
				mult = Vector3.down;
			}
			if (transform.position.y < downBorder + sprHeight)
			{
				mult = Vector3.up;
			}

			//randomFace *= mult;

			if (mult != Vector3.one)
			{
				randomFace = Vector3.Reflect(randomFace, mult);
			}

			Wander();
		}
			break;
		case CrosshairState.Alert:
			Homing();
			break;
		}
	}	

	// seek target
	void Homing()
	{
		if (Vector3.Distance(transform.position,target.position) < 0.1f)
		{
			StartSpinPulse();
		}
		Vector3 homingTarget = myCam.WorldToViewportPoint(target.position);
		homingTarget.z = 10f;
		transform.position = Vector3.Lerp(transform.position, homingTarget, Time.deltaTime * 3f);
		//Debug.Log ("Homing in on " + transform.position);
	}
	
	// bounce around aimlessly
	void Wander ()
	{
		transform.position = transform.position + (randomFace * Time.deltaTime * 3f);
	}

	/// <summary>
	/// Chase the specified newtarget. Feed me a World Position, I convert it to Viewport Position
	/// </summary>
	/// <param name="newtarget">Newtarget.</param>
	public void Chase(Transform newtarget)
	{
		target = newtarget;
		//target.position = myCam.WorldToViewportPoint(newtarget.position);
		//target.position.z = 10f;
		StartPulse();
		//Debug.Log("Chasing at " + newtarget);
		state = CrosshairState.Alert;
	}

	/// <summary>
	/// Stop being angry
	/// </summary>
	public void CalmDown()
	{
		//Debug.Log("Calming down");
		StartSpin();
		state = CrosshairState.Wandering;
	}
	
	void StartSpin()
	{
		GetComponent<Animator>().SetBool("SpinPulse",false);
		GetComponent<Animator>().SetBool("Pulse",false);
		GetComponent<Animator>().SetBool("Spin",true);
	}
	
	void StartPulse()
	{
		GetComponent<Animator>().SetBool("SpinPulse",false);
		GetComponent<Animator>().SetBool("Spin",false);
		GetComponent<Animator>().SetBool("Pulse",true);
	}

	void StartSpinPulse()
	{
		GetComponent<Animator>().SetBool("Spin",false);
		GetComponent<Animator>().SetBool("Pulse",false);
		GetComponent<Animator>().SetBool("SpinPulse",true);
	}

	void RandomizeFacing()
	{
		Random.Range(-1,1);
		float i = Random.value;
		randomFace = Random.rotation.eulerAngles;
		randomFace.z = 0f;
		randomFace.Normalize();
	}
}
