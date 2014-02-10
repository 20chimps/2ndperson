using UnityEngine;
using System.Collections;
using XInputDotNetPure;

public class PlayerController : MonoBehaviour 
{
	public enum EPropType
	{
		Sponge =0,
		Can,
		Timer,
		Mug
	}

	public float speed = 3.0f;
	public float jumpSpeed  = 3.0f;
	public float gravity = 20.0f;
    public float climbSpeed = 1.5f;
	public float pushPower = 2f;
	public PlayerIndex playerIndex = 0;
	private Vector3 AiCamera;
	private float lastEvent = Time.time;

    private Vector3 climbDirection;
    public Vector3 ClimbDirection
    {
        get { return climbDirection; }
        set { climbDirection = value; }
    }



    private Renderer Renderer
    {
        get { return GetComponentInChildren<Renderer>(); }
    }

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
                //transform.position += transform.forward * 0.35f;
                //GetComponent<CharacterController>().Move(transform.forward * 0.1f);
                Vector3 move = transform.forward * 0.1f;
                move.y += 0.2f;
                GetComponent<CharacterController>().Move(move);
                moveDirection = Vector3.zero;

            }



            canClimb = value;
        }
    }
	
	private Vector3 moveDirection  = Vector3.zero;
	
	// Use this for initialization
	void Start () 
	{
        transform.LookAt(transform.position + Vector3.right);
	}
	
	void FixedUpdate() 
	{
        float radius = AiController.instance.m_Body.transform.collider.bounds.extents.magnitude;
		AiCamera = AiController.instance.m_Head.camera.transform.position;
        Debug.DrawLine(transform.position, transform.position + transform.forward, Color.red);
		GamePadState padState =  GamePad.GetState(playerIndex);
        GamePadButtons buttons = padState.Buttons;

		CharacterController controller = GetComponent<CharacterController>();

        // If grounded and not climbing you can move and jump
        if (controller.isGrounded)
        {
            // We are grounded, so recalculate
            // move direction directly from axes

			//transform.Rotate(new Vector3(0, padState.ThumbSticks.Right.X*3, 0));

			moveDirection = transform.forward * padState.ThumbSticks.Left.Y;

			moveDirection += transform.right * padState.ThumbSticks.Left.X;
            
            if (moveDirection.magnitude > 0.01f)
            {
                //moveDirection = transform.TransformDirection(moveDirection);

                moveDirection *= speed;

                GetComponent<Animator>().SetBool("Move", true);
            }
            else
            {
                 GetComponent<Animator>().SetBool("Move", false);
            }

            if (buttons.A == ButtonState.Pressed)
            {
                moveDirection.y += jumpSpeed;
            }
		}
		else  // Apply gravity
		{
			moveDirection.y -= gravity * Time.fixedDeltaTime;
		}

        // You can climb in climbable regions
        if (CanClimb && !climbingPressed)
        {
            if (buttons.B == ButtonState.Pressed)
            {
                climbingPressed = true;
                moveDirection = Vector3.zero;
            }
        }
        if (CanClimb && climbingPressed)
        {
            if (buttons.B == ButtonState.Released)
            {
                climbingPressed = false;
            }

            // You go straight up when you're climbing
            transform.LookAt(transform.position + ClimbDirection);
            moveDirection.y += climbSpeed * Time.fixedDeltaTime;
        }

        // Move the controller
        controller.Move(moveDirection * Time.fixedDeltaTime);

        if (vibrate)
        {
			Vector3 xzV = moveDirection;
			xzV.y = 0;
			float moveVibration = xzV.magnitude;
			if (moveVibration>1) moveVibration=1;
			if (moveVibration > 0.5) {
				if (!audio.isPlaying) {
					audio.Play();
				}
			} else {
				audio.Stop();
			}
            bool isVisible = false;
            var hit = new RaycastHit();
			var hit2 = new RaycastHit();
			var direction = (transform.position - AiCamera).normalized;
			Debug.DrawLine(AiCamera, transform.position, Color.red);
			// Bit shift the index of the layer (12) to get a bit mask
			int layerMask = 1 << 12;
			if (Physics.Raycast(AiCamera, direction, out hit))
            {
				if (Physics.Raycast(AiCamera, direction, out hit2, 100, layerMask))
				{
	                var rayDistance = hit.distance;
					var objDistance = hit2.distance;
					//Debug.Log (Mathf.Abs(rayDistance - objDistance));
					isVisible = Mathf.Approximately(rayDistance, objDistance);
                	//Debug.Log(Mathf.Abs(rayDistance-objDistance));
				}
            }

			float deltaLookAngle = Quaternion.Angle(AiController.instance.m_Head.transform.rotation, Quaternion.LookRotation(transform.position - AiController.instance.m_Head.transform.position));
//			Debug.Log(deltaLookAngle);

            if (Renderer.isVisible && isVisible && deltaLookAngle < 60)
            {
                var distance = Vector3.Distance(transform.position, AiCamera);
                Debug.DrawLine(transform.position, AiCamera);
				if (moveVibration>.1) {
					Debug.Log ("saw disturbance at " + transform.position + " " + distance + " away");
		        	AiController.instance.SetPointOfInterest(new AiController.CPointOfInterest(transform.position, 3));
		        	AiController.instance.ProcessEvent(AiController.EEvent.sawDisturbance);
					if (distance<1) {
						var ds = GetComponent<CDeathSequence>();
						ds.enabled = true;
						Debug.Log (playerIndex + " should die");
					}
				}
                // Danger vibration
                var dangerVibration = 1 / distance;
                Vibrate(playerIndex, dangerVibration, moveVibration);
            }
            else
            {
                Vibrate(playerIndex, 0, moveVibration);
				//Debug.Log (moveVibration);
				if (moveVibration>.5) {
					Debug.Log ("heard disturbance at " + transform.position);
					GameObject.Find("crosshair").GetComponent<crosshair>().Chase(transform);
	        		AiController.instance.SetPointOfInterest(new AiController.CPointOfInterest(transform.position, 3));
	        		AiController.instance.ProcessEvent(AiController.EEvent.heardDisturbance);
				}
            }
        }

        //if(transform.position.y < 0.5f)
        //{
        //   Vector3 pos = transform.position;
        //   pos.y = 0.5f;
        //   moveDirection = Vector3.zero;
        //}
	}
	
    void Vibrate(PlayerIndex playerIndex, float low, float high)
    {     
    	GamePad.SetVibration(playerIndex,low,high);
    }
	
	void OnDestroy() {
		Debug.Log("Destroyed!");
		Vibrate(playerIndex, 0, 0);
	}
	
	void OnControllerColliderHit (ControllerColliderHit hit) {
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
}
