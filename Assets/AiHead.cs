using UnityEngine;
using System.Collections;

public class AiHead : MonoBehaviour
{
    public GameObject m_Body = null;
    public GameObject m_Pitch = null;
    public GameObject m_Yaw = null;

    void Awake()
    {
        m_Pitch = (GameObject)Instantiate(Resources.Load<GameObject>("AiHeadPitch"));
        m_Yaw = (GameObject)Instantiate(Resources.Load<GameObject>("AiHeadYaw"));
    }

    void FixedUpdate()
    {
        if (m_Body != null)
            transform.position = m_Body.transform.position;

        float pitch = Mathf.Clamp(m_Pitch.rigidbody.rotation.eulerAngles.x, -Mathf.PI * 0.5f, Mathf.PI * 0.5f);
        transform.rotation = Quaternion.Euler(m_Pitch.transform.rotation.eulerAngles.x, m_Yaw.transform.rotation.eulerAngles.y, 0.0f);
    }
}
