using UnityEngine;
using System.Collections;

public class InputDevice : MonoBehaviour 
{
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
			return Input.GetButton("P1Start");
		}
		return Input.GetButton("P2Start");
	}

	public static bool GetStart_Up(int player)
	{
		if (player == 0)
		{
			return Input.GetButtonUp("P1Start");
		}
		return Input.GetButtonUp("P2Start");
	}

	public static bool GetA(int player)
	{
		if (player == 0)
		{
			return Input.GetButton("P1Jump");
		}
		return Input.GetButton("P2Jump");
	}

	public static bool GetA_Up(int player)
	{
		if (player == 0)
		{
			return Input.GetButtonUp("P1Jump");
		}
		return Input.GetButtonUp("P2Jump");
	}

	public static bool GetB(int player)
	{
		if (player == 0)
		{
			return Input.GetButton("P1Climb");
		}
		return Input.GetButton("P2Climb");
	}

	public static bool GetB_Up(int player)
	{
		if (player == 0)
		{
			return Input.GetButtonUp("P1Climb");
		}
		return Input.GetButtonUp("P2Climb");
	}

	public static bool GetC(int player)
	{
		if (player == 0)
		{
			return Input.GetButton("P1Sneak");
		}
		return Input.GetButton("P2Sneak");
	}

	public static bool GetD(int player)
	{
		if (player == 0)
		{
			return Input.GetButton("P1Shake");
		}
		return Input.GetButton("P2Shake");
	}
}
