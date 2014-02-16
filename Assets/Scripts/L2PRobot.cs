using UnityEngine;
using System.Collections;

public class L2PRobot : MonoBehaviour
{
	public Camera mainCamera;
	public Transform aiHead;

	private Camera aiCamera;

	private Vector3 currentPos;
	private Vector3 targetPos;

	public void OnEnable()
	{
		if (aiHead == null)
		{
			aiHead = AiController.instance.m_Head.transform;
			aiCamera = AiController.instance.m_Head.GetComponent<Camera>();
		}
		mainCamera.GetComponent<CameraLookAt>().target = aiHead;
		aiCamera.enabled = false;
	}

	public void OnDisable()
	{
		if (mainCamera != null)
		{
			mainCamera.GetComponent<CameraLookAt>().target = null;
			aiCamera.enabled = true;
		}
	}

	public void Update()
	{
		currentPos = mainCamera.transform.position;

		targetPos = aiHead.position - aiHead.forward * 2.5f;
		mainCamera.transform.position = Vector3.Lerp(currentPos, targetPos, 2.0f * Time.deltaTime);

		Debug.DrawLine(currentPos, targetPos);
	}
}
