private var NextChange : float;
function FixedUpdate () {
	if (NextChange < Time.time) { animation["dig"].speed = Random.Range(0.4,1.1); NextChange = Time.time + 1.5; }
}