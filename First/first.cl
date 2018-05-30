kernel
void
ArrayMult( global const float *dA, const global float *dB, global float *dC, const global float *dD )
{
	int gid = get_global_id( 0 );

	//dC[gid] = dA[gid] * dB[gid];
	dC[gid] = dA[gid] * dB[gid] + dD[gid];
}