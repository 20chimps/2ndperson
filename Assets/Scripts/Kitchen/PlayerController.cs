using UnityEngine;
using System.Collections;
//using XInputDotNetPure;

public class PlayerController : MonoBehaviour 
{
	public enum EPropType
	{
		None = -1,
		Sponge = 0,
		Can = 1,
		Mug = 2,
		Timer = 3,
		MAX
	}

	public float speed = 3.0f;
	public float jumpSpeed  = 3.0f;
	public float gravity = 20.0f;
    public float climbSpeed = 1.5f;
	public float pushPower = 2f;
	public int playerIndex = 0;
	private Vector3 cameraPosition;

    private Vector3 climbDirection;
    public Vector3 ClimbDirection
    {
        get { return climbDirection; }
        set { climbDirection = value; }
    }

	private Vector3 forwardDirection = new Vector3(1.0f, 0.0f, 0.0f);
	private CharacterController characterController;

    private Renderer Renderer
    {
        get { return GetComponentInChildren<Renderer>(); }
    }

	private Vector3 moveDirection = Vector3.zero;
    bool climbingPressed = false;

    public bool vibrate = true;

    private bool canClimb = false;
    public bool CanClimb
    {
        get 
        { 
            return canClimb;
        }
        set 
        {
            if (climbingPressed && !value)
            {
                // Exit climb area. Push player forward
                Vector3 move = transform.forward * 0.1f;
                move.y += 0.2f;
                GetComponent<CharacterController>().Move(move);
                moveDirection = Vector3.zero;
				characterController.transform.forward = forwardDirection;
            }

            canClimb = value;
        }
    }

	
	void Start () 
	{
		if (CGame.Singleton.currentState != CGame.EGameState.Kitchen)
		{

		}
		else
		{
			// Make the character look to the window from the get go.
			transform.LookAt(forwardDirection);

			characterController = GetComponent<CharacterController>();
		}
	}
	
	void FixedUpdate() 
	{
		if (CGame.Singleton.currentState != CGame.EGameState.Kitchen)
		{
			return;
		}

		//GamePadState padState =  GamePad.GetState((XInputDotNetPure.PlayerIndex)playerIndex);
        //GamePadButtons buttons = padState.Buttons;

		// If not climbing, face forward
		if(!climbingPressed)
		{
			characterController.transform.forward = forwardDirection;
		}

        // If grounded and NOT Climbing you can Move and Jump
        if (characterController.isGrounded) // This is a Unity built-in bool for CharacterController
        {
			//moveDirection = transform.forward * padState.ThumbSticks.Left.Y;
			//moveDirection += transform.right * padState.ThumbSticks.Left.X;
			moveDirection = transform.forward * InputDevice.GetAxisY(playerIndex);
			moveDirection += transform.right * InputDevice.GetAxisX(playerIndex);
            
			// If there is analog movement outside of the deadzone, move the character
            if (moveDirection.magnitude > 0.01f)
            {
                moveDirection *= speed;
                GetComponent<Animator>().SetBool("Move", true);
            }
            else
            {
                 GetComponent<Animator>().SetBool("Move", false);
            }

			// If jumping then boost the character up
            //if (buttons.A == ButtonState.Pressed)
			if (InputDevice.GetA(playerIndex))
            {
                moveDirection.y += jumpSpeed;
            }
			else
			{
				if (CGame.Singleton.chosenHeroes[playerIndex] != EPropType.Sponge)
				{
					if (Mathf.Abs(InputDevice.GetAxisX(playerIndex)) + Mathf.Abs(InputDevice.GetAxisY(playerIndex)) > 0.1f)
					{
						moveDirection.y += jumpSpeed * 0.3f;
					}
				}
			}
		}
		else // Not grounded (In Air)
		{
			// Apply gravity
			moveDirection.y -= gravity * Time.fixedDeltaTime;
		}

        // If in a climbing region and the climbing button ISN'T pressed
        if (CanClimb && !climbingPressed)
        {
			// If climbing button is pressed then start climbing.
            //if (buttons.B == ButtonState.Pressed)
			if(InputDevice.GetB(playerIndex))
            {
                climbingPressed = true;
                moveDirection = Vector3.zero;
            }
        }

		// If in a climbing region and the climbing button IS pressed
        if (CanClimb && climbingPressed)
        {
			// If the climbing button has been released then stop climbing
			//if (buttons.B == ButtonState.Released)
			if(!InputDevice.GetB(playerIndex))
			{
				climbingPressed = false;
			}
			else // Still climbing
			{
				// You go straight up when you're climbing
				transform.LookAt(transform.position + ClimbDirection);
				moveDirection.y += climbSpeed * Time.fixedDeltaTime; // This is the reverse of gravity
			}
        }

        // Move the controller
        characterController.Move(moveDirection * Time.fixedDeltaTime);

		cameraPosition = AiController.instance.m_Head.camera.transform.position;

		Vector3 xzV = /*moveDirection*/characterController.velocity;
		//xzV.y = 0;
		float moveVibration = xzV.magnitude;
		if (moveVibration > 1) moveVibration = 1;
		if (moveVibration > 0.5)
		{
			if (!audio.isPlaying)
			{
				audio.Play();
			}
		}
		else
		{
			audio.Stop();
		}
		bool isVisible = false;
		var hit = new RaycastHit();
		var hit2 = new RaycastHit();
		var direction = (transform.position - cameraPosition).normalized;
		Debug.DrawLine(cameraPosition, transform.position, Color.red);
		// Bit shift the index of the layer (12) to get a bit mask
		int layerMask = 1 << 12;
		if (Physics.Raycast(cameraPosition, direction, out hit))
		{
			if (Physics.Raycast(cameraPosition, direction, out hit2, 100, layerMask))
			{
				var rayDistance = hit.distance;
				var objDistance = hit2.distance;
				//Debug.Log (Mathf.Abs(rayDistance - objDistance));
				isVisible = Mathf.Approximately(rayDistance, objDistance);
				//Debug.Log(Mathf.Abs(rayDistance-objDistance));
			}
		}

		//float deltaLookAngle = Quaternion.Angle(AiController.instance.m_Head.transform.rotation, Quaternion.LookRotation(transform.position - AiController.instance.m_Head.transform.position));
		//			Debug.Log(deltaLookAngle);

		if (Renderer.isVisible && isVisible && /*deltaLookAngle < 60*/AiController.instance.IsInFov(transform.position))
		{
			var distance = Vector3.Distance(transform.position, cameraPosition);
			Debug.DrawLine(transform.position, cameraPosition);
			if (moveVibration > .1)
			{
				Debug.Log("saw disturbance at " + transform.position + " " + distance + " away");
				AiController.instance.SetPointOfInterest(new AiController.CPointOfInterest(transform.position, 3));
				AiController.instance.ProcessEvent(AiController.EEvent.sawDisturbance);
				if (distance < 1)
				{
					var ds = GetComponent<CDeathSequence>();
					ds.enabled = true;
					Debug.Log(playerIndex + " should die");
				}
			}
			// Danger vibration
			var dangerVibration = 1 / distance;
			//Vibrate(playerIndex, dangerVibration, moveVibration);
		}
		else
		{
			//Vibrate(playerIndex, 0, moveVibration);
			//Debug.Log (moveVibration);
			if (moveVibration > .5)
			{
				Debug.Log("heard disturbance at " + transform.position);
				GameObject.Find("crosshair").GetComponent<crosshair>().Chase(transform);
				AiController.instance.SetPointOfInterest(new AiController.CPointOfInterest(transform.position, 3));
				AiController.instance.ProcessEvent(AiController.EEvent.heardDisturbance);
			}
		}
	}

	
    void Vibrate(int playerIndex, float low, float high)
    {
		//if (vibrate)
		//{
		//GamePad.SetVibration((PlayerIndex)playerIndex, low, high);
		//}
    }
	
	void OnDestroy() 
	{
		Debug.Log("Destroyed!");
		//Vibrate(playerIndex, 0, 0);
	}
	
	void OnControllerColliderHit (ControllerColliderHit hit) 
	{
		var body = hit.collider.attachedRigidbody;
		// no rigidbody
		if (body == null || body.isKinematic)
			return;
			
		// We dont want to push objects below us
		if (hit.moveDirection.y < -0.3) 
			return;
		
		// Calculate push direction from move direction, 
		// we only push objects to the sides never up and down
		var pushDir = new Vector3(hit.moveDirection.x, 0, hit.moveDirection.z);
		// If you know how fast your character is trying to move,
		// then you can also multiply the push velocity by that.
		
		// Apply the push
		body.velocity = pushDir * pushPower;
	}

//	public void OnDrawGizmos()
//	{
//		if (AiController.instance)
//		{
//			float cameraRadius = AiController.instance.m_Body.transform.collider.bounds.extents.magnitude;
//			cameraPosition = AiController.instance.m_Head.camera.transform.position;
//
//			Debug.DrawLine(transform.position, transform.position + transform.forward, Color.red);
//			Gizmos.color = Color.red;
//			Gizmos.DrawWireSphere(cameraPosition, cameraRadius);
//		}
//	}
}
