using UnityEngine;
using System.Collections;
using System;


public class CTimerDeathSequence : CDeathSequence
{
	enum EStage
	{
		INVALID,
		
		Breaking,
		Broken,
		
		MAX
	}

	public override void PlayDeathSequence()
	{
		base.SetDeathSequenceStarted();
		
		m_cBreakSound.Play();
		
		m_eCurrentStage = EStage.Breaking;
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
			case EStage.Breaking:
				ProcessBreaking();
				break;
				
			case EStage.Broken:
				ProcessBroken();
				break;
			}
		}
	}
	
	void ProcessBreaking()
	{
		if (SequenceTimer > 2.5)
		{
		m_eCurrentStage = EStage.Broken;
		}
	}
	
	void ProcessBroken()
	{
		base.SetDeathSequenceFinished();
	}

	public AudioSource m_cBreakSound = null;
	
	EStage m_eCurrentStage = EStage.INVALID;

}
