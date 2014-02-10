using UnityEngine;
using System.Collections;
using System;


public abstract class CDeathSequence : MonoBehaviour
{
	public delegate void HandleSequenceStart();
	public event HandleSequenceStart EventSequenceStart;

	public delegate void HandleSequenceEnd();
	public event HandleSequenceStart EventSequenceEnd;

	public float SequenceTimer
	{
		get { return (m_fSequenceTimer); }
	}

	public bool IsSequenceActive
	{
		get { return (m_bSequenceActive); }
	}

	public abstract void PlayDeathSequence();

	protected void SetDeathSequenceStarted()
	{
		if (EventSequenceStart != null) EventSequenceStart();
	}

	protected void SetDeathSequenceFinished()
	{
		if (EventSequenceEnd != null) EventSequenceEnd();
	}

	protected virtual void Start()
	{
		EventSequenceStart += () => 
		{
			m_fSequenceTimer = 0.0f;
			m_bSequenceActive = true;
			GetComponent<CharacterController>().enabled = false;

			AiController.instance.SetCurrentLookTarget(gameObject.transform.position);
			AiController.instance.ProcessEvent(AiController.EEvent.beginMurder);
		};

		EventSequenceEnd += () => 
		{
			m_fSequenceTimer = 0.0f;
			m_bSequenceActive = false;

			Debug.Log("Death sequence finished");

			GameObject.Destroy(gameObject);

			AiController.instance.ProcessEvent(AiController.EEvent.endMurder);
		};

		PlayDeathSequence();
	}

	protected virtual void Update()
	{
		if (IsSequenceActive)
		{
			m_fSequenceTimer += Time.deltaTime;
		}
	}

	float m_fSequenceTimer		= 0.0f;

	bool m_bSequenceActive		= false;

}
