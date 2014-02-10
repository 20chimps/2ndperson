using UnityEngine;
using System.Collections;
using System;


public class CSpongeDeathSequence : CDeathSequence
{
	enum EStage
	{
		INVALID,

		Ripping,
		Ripped,

		MAX
	}

	public override void PlayDeathSequence()
	{
		base.SetDeathSequenceStarted();

		m_cRipSound.Play();
		
		m_eCurrentStage = EStage.Ripping;
	}

	protected override void Start()
	{
		base.Start();
	}
	
	protected override void Update()
	{
		base.Update();

		if (IsSequenceActive)
		{
			switch (m_eCurrentStage)
			{
			case EStage.Ripping:
				ProcessRipping();
				break;

			case EStage.Ripped:
				ProcessRipped();
				break;
			}
		}
	}

	void ProcessRipping()
	{
		if (SequenceTimer < 2.128f)
		{
			m_cLeftPeice.transform.Translate(0, 0, .0001f);
			m_cRightPeice.transform.Translate(0, 0, -.0001f);
		} else {
			m_eCurrentStage = EStage.Ripped;
		}
	}

	void ProcessRipped()
	{
		base.SetDeathSequenceFinished();
	}

	public AudioSource m_cRipSound = null;
	public GameObject m_cLeftPeice = null;
	public GameObject m_cRightPeice = null;

	float m_fLeftStartPosX = 0.0f;
	float m_fRightStartPosY = 0.0f;

	EStage m_eCurrentStage = EStage.INVALID;



}
