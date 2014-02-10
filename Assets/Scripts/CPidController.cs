using UnityEngine;
using System.Collections;

// Credit to Brian Stone http://forum.unity3d.com/threads/146625-rigidbody-lookat-torque

// Here are some sets of gains for the two PID controllers which 
// impart different control behaviors to the ship.
//
// -----------------------------+
//   Critically Damped Controls*
// -----------------------------+
// Angle Controller:
// Kp = 9.244681
// Ki = 0
// Kd = 0.06382979
// 
// Angular Velocity Controller:
// Kp = 33.7766
// Ki = 0
// Kd = 0.2553191
// 
// *Or, at least this is close to critically damped. 
//  It's very difficult to remove all oscillation.
//
//
// -----------------------------+
//     Fast Controls
// -----------------------------+
// Angle Controller:
// Kp = 33.51064
// Ki = 0
// Kd = 0.02127661
// 
// Angular Velocity Controller:
// Kp = 46.54256
// Ki = 0
// Kd = 0.1808511
//
//
// -----------------------------+
//     Spongy Controls
// -----------------------------+
// Angle Controller:
// Kp = 0.7093059
// Ki = 0
// Kd = 0
//
// Angular Velocity Controller:
// Kp = 11.17021
// Ki = 0
// Kd = 0
//
// 
// -----------------------------+
//     Springy Controls
// -----------------------------+
// Angle Controller:
// Kp = 0.7093059
// Ki = 0
// Kd = 0.1648936
//
// Angular Velocity Controller:
// Kp = 0
// Ki = 0
// Kd = 0
//

public class CPidController
{
	public float Kp = 1;
	public float Ki = 0;
	public float Kd = 0.1f;
	
    //public float SliderKpMin = 0;
    //public float SliderKpMax = 50;
	
    //public float SliderKiMin = 0;
    //public float SliderKiMax = 100;
	
    //public float SliderKdMin = 0;
    //public float SliderKdMax = 1;
	
	//public bool ShowSliderPanel = true;
	//public float SliderPanelX = 0;
	//public float SliderPanelY = 0;
	
	private float P, I, D;
	private float prevError;

    public CPidController() { }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="proportionalGain">Scales proportional to the current error value ()</param>
    /// <param name="integralGain">Scales based on how long the error has persisted (+springing && -time to hit zero error)</param>
    /// <param name="derivativeGain">Scales based on the speed of change (-springing && +sluggishness && -stability)</param>
    public CPidController(float proportionalGain, float integralGain, float derivativeGain)
    {
        Kp = proportionalGain;
        Ki = integralGain;
        Kd = derivativeGain;
    }
	
    //void OnGUI()
    //{
    //    if (ShowSliderPanel == false)
    //        return;
		
    //    float dx = SliderPanelX;
    //    float dy = SliderPanelY;
		
    //    GUI.Box(new Rect(25 + dx, 5 + dy, 200, 40), "");
		
    //    Kp = GUI.HorizontalSlider(new Rect(25 + dx, 5  + dy, 200, 10), Kp, SliderKpMax, SliderKpMin);
    //    Ki = GUI.HorizontalSlider(new Rect(25 + dx, 20 + dy, 200, 10), Ki, SliderKiMax, SliderKiMin);
    //    Kd = GUI.HorizontalSlider(new Rect(25 + dx, 35 + dy, 200, 10), Kd, SliderKdMax, SliderKdMin);
		
    //    GUIStyle style1 = new GUIStyle();
    //    style1.alignment = TextAnchor.MiddleRight;
    //    style1.fontStyle = FontStyle.Bold;
    //    style1.normal.textColor = Color.yellow;
    //    style1.fontSize = 9;
		
    //    GUI.Label(new Rect(0 + dx, 5  + dy, 20, 10), "Kp", style1);
    //    GUI.Label(new Rect(0 + dx, 20 + dy, 20, 10), "Ki", style1);
    //    GUI.Label(new Rect(0 + dx, 35 + dy, 20, 10), "Kd", style1);
		
    //    GUIStyle style2 = new GUIStyle();
    //    style2.alignment = TextAnchor.MiddleLeft;
    //    style2.fontStyle = FontStyle.Bold;
    //    style2.normal.textColor = Color.yellow;
    //    style2.fontSize = 9;
		
    //    GUI.TextField(new Rect(235 + dx, 5  + dy, 60, 10), Kp.ToString(), style2);
    //    GUI.TextField(new Rect(235 + dx, 20 + dy, 60, 10), Ki.ToString(), style2);
    //    GUI.TextField(new Rect(235 + dx, 35 + dy, 60, 10), Kd.ToString(), style2);
		
    //    GUI.Label(new Rect(0 + dx, -8 + dy, 200, 10), name, style2);
    //}
	
	public float GetOutput(float currentError, float fixedDeltaTime)
	{
        P = currentError;
        I += P * fixedDeltaTime;
        D = (P - prevError) / fixedDeltaTime;
        prevError = currentError;

        return P * Kp + I * Ki + D * Kd;
	}
}
