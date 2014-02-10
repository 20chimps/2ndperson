using UnityEngine;
using System.Collections;

public class Arrow : MonoBehaviour 
{
	public Transform target;
	private Camera mainCamera;


	public void SetMainCamera()
	{
		mainCamera = GameObject.FindGameObjectWithTag("MainCamera").GetComponent<Camera>();
	}

	public void SetCamera(Camera newCamera)
	{
		mainCamera = newCamera;
	}

	public Vector3 SetTarget(Transform newTarget)
	{
		if (mainCamera == null)
		{
			SetMainCamera();
		}

		target = newTarget;

		Vector3 viewPos = mainCamera.WorldToViewportPoint(target.position);
		viewPos.y += 0.1f;
		transform.position = viewPos;

		return transform.position;
	}
}
