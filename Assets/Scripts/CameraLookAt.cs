using UnityEngine;
using System.Collections;

[ExecuteInEditMode]
public class CameraLookAt : MonoBehaviour 
{
	public Transform windowPane;
	public Transform target;

	public void Update()
	{
		if (target == null)
		{
			target = windowPane;
		}
		LookAtTarget();
	}

	public void LookAtTarget()
	{
		if (target != null)
		{
			transform.rotation = Quaternion.LookRotation(target.transform.position - transform.position);
		}
	}
}
