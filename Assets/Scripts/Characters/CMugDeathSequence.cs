using UnityEngine;
using System.Collections;
using System;


public class CMugDeathSequence : CDeathSequence
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
		
		m_eCurrentStage = EStage.Breaking;
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
		if (SequenceTimer > 2.0f)
		{
			m_cBreakSound.Play();
			m_eCurrentStage = EStage.Broken;

			foreach (Renderer cTheRenderer in GetComponentsInChildren<Renderer>())
			{
				cTheRenderer.enabled = false;
			}
		}
	}

	void ProcessBroken()
	{
		if (!m_cBreakSound.isPlaying)
		{
			base.SetDeathSequenceFinished();
		}
	}

	public AudioSource m_cBreakSound = null;
	
	EStage m_eCurrentStage = EStage.INVALID;

}
