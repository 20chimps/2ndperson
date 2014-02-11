using UnityEngine;
using System.Collections;

public class AiBody : MonoBehaviour
{
	public AiController m_Parent = null;

	public Vector3 moveTarget = Vector3.zero;

	public bool moveEnable = false;
	public bool movedToTarget = false;

	CPidController m_PidLinearForce = new CPidController(1.75f, 0, 0);	// Speed up.
	CPidController m_PidLinearVelocity = new CPidController(1.75f, 0, 0);	// Slow down.

	private System.Collections.Generic.List<Collider> objectsToAvoid = new System.Collections.Generic.List<Collider>();

	void FixedUpdate()
	{
		Vector3 obstacleAvoidance = Vector3.zero;
		for (int i = 0; i < 50; ++i)
		{
			Vector3 direction = Random.onUnitSphere;
			RaycastHit[] rayHits = Physics.RaycastAll(transform.position, direction, 0.75f, Physics.AllLayers - LayerMask.NameToLayer("AiBody"));
			foreach (RaycastHit rayHit in rayHits)
				obstacleAvoidance += -direction * (0.75f - rayHit.distance);
		}

		if (obstacleAvoidance.sqrMagnitude > 1.0f)
			obstacleAvoidance.Normalize();
		obstacleAvoidance *= 10.0f;

		Vector3 worldTargetMove = moveTarget - transform.position;
		float worldTargetMoveDist = worldTargetMove.magnitude;
		Vector3 worldTargetMoveDir = worldTargetMove.normalized;

		float moveForce = 0.0f;
		if (moveEnable)
			moveForce = m_PidLinearForce.GetOutput(worldTargetMoveDist, Time.fixedDeltaTime);

		float moveVelocity = m_PidLinearVelocity.GetOutput(rigidbody.velocity.magnitude, Time.fixedDeltaTime);
		rigidbody.AddForce(worldTargetMoveDir * moveForce + rigidbody.velocity.normalized * -moveVelocity, ForceMode.Acceleration);
		rigidbody.AddForce(obstacleAvoidance, ForceMode.Acceleration);

		// Set state information saying whether the move target has been reached or not.
		movedToTarget = (transform.position - moveTarget).sqrMagnitude < 3;	// Is at move target if within 1 unit of target radius.
	}

	void OnTriggerEnter(Collider other) { objectsToAvoid.Add(other); }
	void OnTriggerExit(Collider other) { objectsToAvoid.Remove(other); }
}