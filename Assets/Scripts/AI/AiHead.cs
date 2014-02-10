using UnityEngine;
using System.Collections;

public class AiHead : MonoBehaviour
{
    public GameObject m_Body = null;
    public GameObject m_Pitch = null;
    public GameObject m_Yaw = null;

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
        if (m_Body != null)
            transform.position = m_Body.transform.position;

        float pitch = m_Pitch.rigidbody.rotation.eulerAngles.x;
        // Clamp.
        if (pitch > 180 && pitch < 270)
            pitch = 270;
        else if (pitch <= 180 && pitch > 90)
            pitch = 90;

        transform.rotation = Quaternion.Euler(pitch, m_Yaw.transform.rotation.eulerAngles.y, 0.0f);
        //Debug.Log(m_Yaw.transform.rotation.eulerAngles.y.ToString() + "\n" + pitch.ToString());
    }
}
