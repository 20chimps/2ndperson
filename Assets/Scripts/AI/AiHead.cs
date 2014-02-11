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
		transform.rotation = m_Yaw.transform.rotation * m_Pitch.rigidbody.rotation;

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
			float pitch = Mathf.Asin(localTargetLook.y / worldTargetLookDist);
			lookTorquePitch = m_PidAngularPitch.GetOutput(pitch, Time.fixedDeltaTime);
		}

		float lookVelocityYaw = m_PidVelocityYaw.GetOutput(-m_Yaw.rigidbody.angularVelocity.y, Time.fixedDeltaTime);
		float lookVelocityPitch = m_PidVelocityPitch.GetOutput(m_Pitch.rigidbody.angularVelocity.x, Time.fixedDeltaTime);
		//Debug.LogWarning(lookTorquePitch.ToString("F1") + "\t" + lookVelocityPitch.ToString("F1") + "\t" + m_Yaw.rigidbody.angularVelocity);

		m_Yaw.rigidbody.AddTorque(Vector3.up * (lookTorqueYaw + lookVelocityYaw), ForceMode.Acceleration);
		m_Pitch.rigidbody.AddTorque(Vector3.left * (lookTorquePitch + lookVelocityPitch), ForceMode.Acceleration);

		// Set state information saying whether the look target is being looked at or not.
		lookingAtTarget = deltaLookAngle < 15;	// Is looking at target if within cone of x degrees radius.
    }
}
