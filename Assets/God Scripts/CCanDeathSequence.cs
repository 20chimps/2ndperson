using UnityEngine;
using System.Collections;
using System;


public class CCanDeathSequence : CDeathSequence
{
	enum EStage
	{
		INVALID,
		
		Crumbing,
		Crumbled,
		
		MAX
	}

	public override void PlayDeathSequence()
	{
        base.SetDeathSequenceStarted();

        m_cOpenSound.Play();
		m_cParticles.particleSystem.Play ();

        m_eCurrentStage = EStage.Crumbing;
	}

	protected override void Start()
	{
		base.Start();
	}
	
	void Update()
	{
		base.Update();
		
		if (IsSequenceActive)
		{
			switch (m_eCurrentStage)
			{
			case EStage.Crumbing:
				ProcessCrumbing();
				break;
				
			case EStage.Crumbled:
				ProcessBroken();
				break;
			}
		}
	}
	
	void ProcessCrumbing()
	{
		if (SequenceTimer > 2.5f)
		{
			m_eCurrentStage = EStage.Crumbled;
		}
	}
	
	void ProcessBroken()
	{
		base.SetDeathSequenceFinished();
	}

	public AudioSource m_cOpenSound = null;
	public AudioSource m_cCrushSound = null;
	public GameObject m_cParticles = null;
	
	EStage m_eCurrentStage = EStage.INVALID;

}
