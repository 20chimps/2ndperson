using UnityEngine;
using System.Collections;

public class AiController : MonoBehaviour
{

    enum EState
    {
        none,
        idling,
        lookingAt,
        goingTo,
        murdering,
        any
    }

    public enum EEvent
    {
        none,
        heardDisturbance,
        sawDisturbance,
        beginMurder,
        endMurder,

        // Internal events.
        transition_NewPointOfInterest,
        transition_LookAt,
        transition_Goto,
        any
    }

    delegate bool StateFunction(AiController ai);

    class CStateTransition
    {
        public CStateTransition(EState _state, EEvent _event, StateFunction _function) { m_State = _state; m_Event = _event; m_Function = _function; }
        public EState m_State;
        public EEvent m_Event;
        public StateFunction m_Function;
    }

    public class CPointOfInterest
    {
        public CPointOfInterest(Vector3 worldPoint, float disturbanceInSeconds) { m_WorldPoint = worldPoint; m_DisturbanceInSeconds = disturbanceInSeconds; }

        public Vector3 m_WorldPoint;
        public float m_DisturbanceInSeconds;
    }

    EState m_State = EState.none;
    EEvent m_Event = EEvent.none;
    CStateTransition[] m_StateTransitionTable =
	{
		// Process.
		new CStateTransition(EState.lookingAt, EEvent.any, Proc_LookAt),	// Look at disturbance.
		new CStateTransition(EState.goingTo, EEvent.any, Proc_Goto),		// Seek disturbance.
		new CStateTransition(EState.murdering, EEvent.any, Proc_Murder),    // Slaughter the sponge.
		new CStateTransition(EState.idling, EEvent.any, Proc_Idle),	        // Do idle behaviour.
		
		// Transition.
		new CStateTransition(EState.any, EEvent.heardDisturbance, Init_Disturbance),
		new CStateTransition(EState.any, EEvent.sawDisturbance, Init_Disturbance),
		new CStateTransition(EState.any, EEvent.beginMurder, Init_Murder),
		new CStateTransition(EState.any, EEvent.endMurder, Init_Murder),

		new CStateTransition(EState.any, EEvent.transition_NewPointOfInterest, Init_NewPointOfInterest),
		new CStateTransition(EState.any, EEvent.transition_LookAt, Init_LookAt),
		new CStateTransition(EState.any, EEvent.transition_Goto, Init_Goto),
		
		new CStateTransition(EState.any, EEvent.any, Init_Idle),
	};

	public static AiController instance { get { return m_Instance; } }
	private static AiController m_Instance = null;
	public GameObject m_Body = null;
	public GameObject m_Head = null;
	AiBody m_BodyAi = null;
	AiHead m_HeadAi = null;

    // State data.
    CPointOfInterest m_PointOfInterest;
    float m_Target_Interest = 0.0f;

    static bool Proc_LookAt(AiController ai)
    {
        switch(ai.m_Event)
        {
            case EEvent.none:
                ai.m_Target_Interest -= Time.deltaTime;
                if (ai.m_Target_Interest <= 0.0f)
                {
                    ai.m_Event = EEvent.transition_NewPointOfInterest;
					ai.m_State = EState.none;
					GameObject.Find("crosshair").GetComponent<crosshair>().CalmDown();
                }
                else if (ai.m_HeadAi.lookingAtTarget)    // Wait until the target is being looked at...
                {
                    // Check if the target is in view. If not, invoke seek behaviour.
                    Vector3 direction = ai.m_HeadAi.lookTarget - ai.m_Head.transform.position;
                    float distance = direction.magnitude;
                    // @ JADE >>>>>>>>> COMMECTED THIS OUT SO SHE IS MORE AGGRESSIVE
                    //if (Physics.Raycast(ai.m_Head.transform.position, direction, distance))
                    //{
                    //    // Todo: Analyse the disturbance.
                    //}
                    //else
                    {
                        ai.m_State = EState.none;
                        ai.m_Event = EEvent.transition_Goto;    // Target not in view - go to the target.
                    }
                }
                break;

            default:
                ai.m_State = EState.none;
                return true;
        }

        return false;
    }

    static bool Proc_Goto(AiController ai)
    {
        switch(ai.m_Event)
        {
            case EEvent.none:
                ai.m_Target_Interest -= Time.deltaTime * (ai.m_BodyAi.movedToTarget ? 0.75f : 0.2f);
                if (ai.m_Target_Interest <= 0.0f)
                {
					ai.m_State = EState.none;
					GameObject.Find("crosshair").GetComponent<crosshair>().CalmDown();
                }
                break;

            default:
                ai.m_State = EState.none;
                return true;
        }

        return false;
    }

    static bool Proc_Murder(AiController ai)
    {
        ai.m_Target_Interest -= Time.deltaTime;

        // Handle timeout and/or end event.
        if (ai.m_Target_Interest <= 0.0f || ai.m_Event == EEvent.endMurder)
        {
            ai.m_Event = EEvent.endMurder;
            ai.m_State = EState.none;
            return true;
        }

        return false;
    }

    static bool Proc_Idle(AiController ai)
    {
        switch(ai.m_Event)
        {
            case EEvent.none:
                // Check out something random.
				ai.m_HeadAi.lookTarget = ai.m_BodyAi.moveTarget = new Vector3(Random.Range(-4.5f, 4.5f), Random.Range(1.0f, 2.0f), Random.Range(-4.5f, 4.5f));
                ai.m_Target_Interest = Random.Range(1.0f, 3.0f);
				GameObject.Find("crosshair").GetComponent<crosshair>().CalmDown();
                ai.m_Event = EEvent.transition_LookAt;
                ai.m_State = EState.none;
                break;

            default:
                ai.m_State = EState.none;
                return true;
        }

        return false;
    }

    static bool Init_Disturbance(AiController ai)
    {
        if (ai.m_State != EState.none) Debug.LogError("State is non-null upon switching to new state!");

        switch (ai.m_Event)
        {
            case EEvent.heardDisturbance:
                // Todo: Say "What was that?"
                break;

            case EEvent.sawDisturbance:
                // Todo: Say "That's odd..."
                break;
        }

        ai.m_Event = EEvent.transition_NewPointOfInterest;

        return true;
    }

    static bool Init_NewPointOfInterest(AiController ai)
    {
        if (ai.m_State != EState.none) Debug.LogError("State is non-null upon switching to new state!");
        ai.m_Event = EEvent.none;   // Consume event.

        if (ai.m_PointOfInterest != null)
        {
            ai.m_HeadAi.lookTarget = ai.m_BodyAi.moveTarget = ai.m_PointOfInterest.m_WorldPoint;
            ai.m_Target_Interest = ai.m_PointOfInterest.m_DisturbanceInSeconds;
            ai.m_PointOfInterest = null;

			//GameObject.Find("crosshair").GetComponent<crosshair>().Chase(ai.m_Target_Look);

            ai.m_Event = EEvent.transition_LookAt;
            return true;
        }

        return false;
    }

    static bool Init_LookAt(AiController ai)
    {
        if (ai.m_State != EState.none) Debug.LogError("State is non-null upon switching to new state!");
        ai.m_Event = EEvent.none;   // Consume event.

        ai.m_HeadAi.lookEnable = true;
        ai.m_BodyAi.moveEnable = false;

        ai.m_State = EState.lookingAt;

        return true;
    }

    static bool Init_Goto(AiController ai)
    {
        if (ai.m_State != EState.none) Debug.LogError("State is non-null upon switching to new state!");
        ai.m_Event = EEvent.none;   // Consume event.

		ai.m_HeadAi.lookEnable = true;
		ai.m_BodyAi.moveEnable = true;

        ai.m_State = EState.goingTo;

        return true;
    }

    static bool Init_Murder(AiController ai)
    {
        if (ai.m_State != EState.none) Debug.LogError("State is non-null upon switching to new state!");

        switch (ai.m_Event)
        {
            case EEvent.beginMurder:
                ai.m_Target_Interest = 5.0f;    // Used as a timeout in case the murder does not end.
                ai.m_State = EState.murdering;

                // Disable character controllers.
                foreach (PlayerController player in CGame.Singleton.players)
                {
                    if(player)
                        player.GetComponent<CharacterController>().enabled = false;
                }

                break;

            case EEvent.endMurder:
                ai.m_State = EState.none;
                // Enable character controllers.
                foreach (PlayerController player in CGame.Singleton.players)
                {
                    if(player)
                        player.GetComponent<CharacterController>().enabled = true;
                }

                break;
        }

        ai.m_Event = EEvent.none;   // Consume event.

		ai.m_HeadAi.lookEnable = true;
		ai.m_BodyAi.moveEnable = false;

        return true;
    }

    static bool Init_Idle(AiController ai)
    {
        if (ai.m_State != EState.none) Debug.LogError("State is non-null upon switching to new state!");
        ai.m_Event = EEvent.none;   // Consume event.

		ai.m_HeadAi.lookEnable = true;
		ai.m_BodyAi.moveEnable = true;

        ai.m_State = EState.idling;

        return true;
    }

    void Awake()
    {
        m_Instance = this;
        m_Body = (GameObject)Instantiate(Resources.Load<GameObject>("Prefabs/AI/AiBody"), new Vector3(2.0f, 2.0f, -1.0f), Quaternion.AngleAxis(0.0f, Vector3.forward));
		m_BodyAi = m_Body.GetComponent<AiBody>();
		m_BodyAi.m_Parent = this;

		m_Head = (GameObject)Instantiate(Resources.Load<GameObject>("Prefabs/AI/AiHead"));
		m_HeadAi = m_Head.GetComponent<AiHead>();
		m_HeadAi.parent = this;
    }

    void Start()
    {

    }

    void OnDestroy()
    {
        m_Instance = null;
    }

    void Update()
    {
        ProcessStateMachine();
    }

    void ProcessStateMachine()
    {
        // Process state machine.
        for (uint uiStateLoop = 0; uiStateLoop < m_StateTransitionTable.Length; ++uiStateLoop)
        {
            CStateTransition stateTransition = m_StateTransitionTable[uiStateLoop];
            if ((stateTransition.m_State == m_State || stateTransition.m_State == EState.any) && (stateTransition.m_Event == m_Event || stateTransition.m_Event == EEvent.any))
                if (stateTransition.m_Function(this))
                    uiStateLoop = uint.MaxValue;	// Loop will increment making iterator restart.
                else
                    break;
        }
    }

    void FixedUpdate()
    {

    }

    public void ProcessEvent(EEvent _event)
    {
        m_Event = _event;
        ProcessStateMachine();
    }

    public void SetCurrentLookTarget(Vector3 lookTarget) { m_HeadAi.lookTarget = lookTarget; }
	public void SetCurrentMoveTarget(Vector3 moveTarget)
	{
		m_BodyAi.moveTarget = moveTarget;
		//GameObject.Find("crosshair").GetComponent<crosshair>().Chase(moveTarget);
	}

    public void SetPointOfInterest(CPointOfInterest _pointOfInterest)
    {
		m_PointOfInterest = _pointOfInterest;
    }

    public bool IsInView(Vector3 worldPoint)
    {
        worldPoint = m_Head.camera.WorldToViewportPoint(worldPoint);
        return worldPoint.x >= 0.0f && worldPoint.x <= 1.0f && worldPoint.y >= 0.0f && worldPoint.y <= 1.0f;
    }
}