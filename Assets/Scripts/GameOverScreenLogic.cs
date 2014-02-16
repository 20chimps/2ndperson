using UnityEngine;
using System.Collections;

public class GameOverScreenLogic : MonoBehaviour 
{
	public enum EScreenState
	{
		Highscore,
		GameOver
	}

	public GameObject gameOverPage;
	public GameObject inputHighscore;
	public GUIText secondaryGameOverText;

	private float timeElapsed = 0.0f;
	private float timeTillTransition = 10.0f;

	public Camera mainCamera;
	public Transform aiHead;

	private Camera aiCamera;

	private Vector3 currentPos;
	private Vector3 targetPos;

	public EScreenState state = EScreenState.Highscore;

	// Use this for initialization
	void Start () 
	{
		if (CGame.Singleton.winState == CGame.EWinState.HighscoreBeaten)
		{
			gameOverPage.SetActive(false);
			inputHighscore.SetActive(true);
			state = EScreenState.Highscore;
		}
		else if (CGame.Singleton.winState == CGame.EWinState.Win)
		{
			gameOverPage.SetActive(true);
			inputHighscore.SetActive(false);
			secondaryGameOverText.text = "You got out!";
			state = EScreenState.GameOver;
		}
		else // CGame.Singleton.winState == CGame.EWinState.Lose
		{
			gameOverPage.SetActive(true);
			inputHighscore.SetActive(false);
			secondaryGameOverText.text = "She got you!";
			state = EScreenState.GameOver;
		}
	}

	public void OnEnable()
	{
		if (aiHead == null)
		{
			aiHead = AiController.instance.m_Head.transform;
			aiCamera = AiController.instance.m_Head.GetComponent<Camera>();
		}
		mainCamera.GetComponent<CameraLookAt>().target = aiHead;
		aiCamera.enabled = false;
	}

	public void OnDisable()
	{
		if (mainCamera != null)
		{
			mainCamera.GetComponent<CameraLookAt>().target = null;
			aiCamera.enabled = true;
		}
	}

	
	void Update () 
	{
		if (state == EScreenState.GameOver)
		{
			timeElapsed += Time.deltaTime;
			if (timeElapsed >= timeTillTransition || (InputDevice.GetStart_Up(0) || InputDevice.GetStart_Up(1)))
			{
				CGame.Singleton.currentState = CGame.EGameState.Title;
				Application.LoadLevel("title");
			}

			currentPos = mainCamera.transform.position;

			targetPos = aiHead.position - aiHead.forward * 2.5f;
			mainCamera.transform.position = Vector3.Lerp(currentPos, targetPos, 2.0f * Time.deltaTime);
		}
	}
}
