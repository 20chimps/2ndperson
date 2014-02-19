using UnityEngine;
using System.Collections;

public class AiHead : MonoBehaviour
{
    public AiController parent = null;
    public GameObject m_Pitch = null;
	public GameObject m_Yaw = null;

	public Vector3 lookTarget = Vector3.zero;

	public bool lookEnable = false;
	public bool lookingAtTarget = false;

	CPidController m_PidAngularYaw = new CPidController(20, 0, 0);
	CPidController m_PidAngularPitch = new CPidController(20, 0, 0);
	CPidController m_PidVelocityYaw = new CPidController(7, 0, 0);
	CPidController m_PidVelocityPitch = new CPidController(7, 0, 0);

    void Awake()
    {
        m_Pitch = (GameObject)Instantiate(Resources.Load<GameObject>("Prefabs/AI/AiHeadPitch"));
        m_Yaw = (GameObject)Instantiate(Resources.Load<GameObject>("Prefabs/AI/AiHeadYaw"));
    }

	void Start()
	{
		if (CGame.Singleton.currentState == CGame.EGameState.CharacterSelect)
		{
			GetComponent<Camera>().enabled = false;
		}
	}

    void FixedUpdate()
    {
		if (parent == null) return;
		transform.position = parent.m_Body.transform.position;
		transform.rotation = m_Yaw.transform.rotation * Quaternion.AngleAxis(m_Pitch.rigidbody.rotation.eulerAngles.y, Vector3.right);

		Vector3 worldLookTarget = lookTarget - transform.position;
		float worldTargetLookDist = worldLookTarget.magnitude;
		//Vector3 worldTargetLookDir = worldTargetLook.normalized;

		float deltaLookAngle = Quaternion.Angle(transform.rotation, Quaternion.LookRotation(worldLookTarget));

		float lookTorqueYaw = 0.0f;
		float lookTorquePitch = 0.0f;
		if (lookEnable)
		{
			// Look at the look target.

			// Delta rotation on XZ plane (yaw).
			Vector3 localTargetLook = (Quaternion.Inverse(transform.rotation) * (lookTarget - transform.position));
			lookTorqueYaw = m_PidAngularYaw.GetOutput(Mathf.Atan2(localTargetLook.x, localTargetLook.z), Time.fixedDeltaTime);

			// Delta rotation on YZ plane (pitch).
			float currentPitch = m_Pitch.rigidbody.rotation.eulerAngles.y;	// Degrees (horizon starts at zero, rotates down and around to 360).
			if (currentPitch >= 180) currentPitch -= 360;
			currentPitch *= Mathf.Deg2Rad;

			float deltaPitch = -Mathf.Asin(localTargetLook.y / worldTargetLookDist);	// Radians.

			// Prevent the camera from spinning around.
			// Though up a shitty formula to solve your equation? Use http://www.webmath.com/anything.html to simplify it.
			float targetPitch = currentPitch + deltaPitch;
			if (targetPitch > Mathf.PI * 0.5f)	// If considering looking further down than straight down...
				deltaPitch = -2.0f * currentPitch + Mathf.PI - deltaPitch;
			else if (targetPitch < Mathf.PI * -0.5f)	// If considering looking further up than vertical...
				deltaPitch = -2.0f * currentPitch - Mathf.PI - deltaPitch;

			//Debug.Log("Current: " + currentPitch.ToString() + "\nDelta: " + deltaPitch.ToString());
			lookTorquePitch = m_PidAngularPitch.GetOutput(deltaPitch, Time.fixedDeltaTime);
		}

		float lookVelocityYaw = m_PidVelocityYaw.GetOutput(-m_Yaw.rigidbody.angularVelocity.y, Time.fixedDeltaTime);
		float lookVelocityPitch = m_PidVelocityPitch.GetOutput(-m_Pitch.rigidbody.angularVelocity.y, Time.fixedDeltaTime);

		m_Yaw.rigidbody.AddTorque(Vector3.up * (lookTorqueYaw + lookVelocityYaw), ForceMode.Acceleration);
		m_Pitch.rigidbody.AddTorque(Vector3.up * (lookTorquePitch + lookVelocityPitch), ForceMode.Acceleration);

		// Set state information saying whether the look target is being looked at or not.
		lookingAtTarget = deltaLookAngle < 15;	// Is looking at target if within cone of x degrees radius.
    }
}
