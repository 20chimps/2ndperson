using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CameraPan : MonoBehaviour
{
	private enum EPanState
	{
		ToStartPoint,
		ToWindow,
	}

	public Camera mainCamera;
	public Transform panStart;
	public Transform panEnd;
	public Transform[] pathPoints;
	
	public float flyTime = 10.0f;
	private Camera aiCamera;

	private EPanState panState;

	private float timeElapsed;
	private float flyToStartPos = 0.5f;

	private Vector3 startPos;
	private Quaternion startRot;

	public bool Panning { get; set; }

	public void OnEnable()
	{
		if (mainCamera == null)
		{
			mainCamera = GameObject.FindGameObjectWithTag("MainCamera").GetComponent<Camera>();
		}

		if (aiCamera == null)
		{
			if (AiController.instance == null)
			{
				return;
			}

			aiCamera = AiController.instance.m_Head.GetComponent<Camera>();
		}

		StartFlyToStartPan();
	}

	public void OnDisable()
	{
		Reset();
	}

	public void Update()
	{
		if (timeElapsed < flyTime)
		{
			timeElapsed += Time.deltaTime;
			if (timeElapsed > flyTime)
			{
				timeElapsed = flyTime;
			}
			mainCamera.transform.position = Vector3.Lerp(pathPoints[0].position, pathPoints[1].position, timeElapsed / flyTime);
			mainCamera.transform.rotation = Quaternion.Slerp(pathPoints[0].rotation, pathPoints[1].rotation, timeElapsed / flyTime);
		}
	}

	public void StartFlyToStartPan()
	{
		startPos = aiCamera.transform.position;
		startRot = aiCamera.transform.rotation;
		aiCamera.enabled = false;
	}

	public void Reset()
	{
		if (aiCamera != null)
		{
			mainCamera.transform.position = startPos;
			mainCamera.transform.rotation = startRot;

			aiCamera.enabled = true;
		}
	}
}
