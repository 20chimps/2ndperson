using UnityEngine;
using System.Collections;

public class InputDevice : MonoBehaviour 
{
	//public int playerIndex = 0;

	//public float LeftStickX
	//{
	//    get;
	//    set;
	//}
	//public float LeftStickY
	//{
	//    get;
	//    set;
	//}
	//public float Start
	//{
	//    get;
	//    set;
	//}
	//public float A
	//{
	//    get;
	//    set;
	//}
	//public float B
	//{
	//    get;
	//    set;
	//}
	//public float C
	//{
	//    get;
	//    set;
	//}
	//public float D
	//{
	//    get;
	//    set;
	//}

	//public void Update()
	//{
	//    if(playerIndex == 0)
	//    {
	//        LeftStickX = Input.GetAxis("P1Horizontal");
	//        LeftStickY = Input.GetAxis("P1Vertical");
	//        Start = Input.GetButton("P1Start");
	//        A = Input.GetAxis("P1Fire1");
	//        B = Input.GetAxis("P1Fire2");
	//        C = Input.GetAxis("P1Fire3");
	//        D = Input.GetAxis("P1Fire4");
	//    }
	//    else if (playerIndex == 1)
	//    {
	//    }
	//}

	public static float GetAxisX(int player)
	{
		if (player == 0)
		{
			return Input.GetAxis("P1Horizontal");
		}
		return Input.GetAxis("P2Horizontal");
	}
	public static float GetAxisY(int player)
	{
		if (player == 0)
		{
			return Input.GetAxis("P1Vertical");
		}
		return Input.GetAxis("P2Vertical");
	}
	public static bool GetStart(int player)
	{
		if (player == 0)
		{
			return Input.GetButton("P1Fire1");
		}
		return Input.GetButton("P2Fire1");
	}

	public static bool GetA(int player)
	{
		if (player == 0)
		{
			return Input.GetButton("P1Fire1");
		}
		return Input.GetButton("P2Fire1");
	}

	public static bool GetB(int player)
	{
		if (player == 0)
		{
			return Input.GetButton("P1Fire2");
		}
		return Input.GetButton("P2Fire2");
	}

	public static bool GetC(int player)
	{
		if (player == 0)
		{
			return Input.GetButton("P1Fire3");
		}
		return Input.GetButton("P2Fire3");
	}

	public static bool GetD(int player)
	{
		if (player == 0)
		{
			return Input.GetButton("P1Fire4");
		}
		return Input.GetButton("P2Fire4");
	}
}
