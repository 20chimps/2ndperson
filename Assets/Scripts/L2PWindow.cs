using UnityEngine;
using System.Collections;

public class L2PWindow : MonoBehaviour 
{
	public Camera mainCamera;
	private Camera aiCamera;
	private GameObject aiBody;

	private Vector3 currentPos;
	private Vector3 targetPos;

	public void OnEnable()
	{
		if (aiCamera == null)
		{
			if (AiController.instance == null)
			{
				return;
			}

			aiBody = AiController.instance.m_Body;
			aiCamera = AiController.instance.m_Head.GetComponent<Camera>();
		}

		aiCamera.enabled = false;
		aiBody.renderer.enabled = false;
	}

	public void OnDisable()
	{
		if (aiCamera != null)
		{
			aiCamera.enabled = true;
			aiBody.renderer.enabled = true;
		}
	}

	public void Update()
	{
		currentPos = mainCamera.transform.position;
		targetPos = aiCamera.transform.position;
		mainCamera.transform.position = Vector3.Lerp(currentPos, targetPos, 2.0f * Time.deltaTime);
	}
}
