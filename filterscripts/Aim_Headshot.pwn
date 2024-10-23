#include <a_samp>
#define FILTER_SCRIPT_NAME "Aim_Headshot"
#include "objects"

public OnFilterScriptInit()
{
	new objectId;
    CreateObject(6989, -166.94000, 138.17999, -79.50000,   0.00000, 0.00000, -17.46000);
	CreateObject(6989, -272.32999, 67.31000, -79.50000,   0.00000, 0.00000, 72.72000);
	CreateObject(6989, -320.23999, -86.67000, -79.50000,   0.00000, 0.00000, 72.72000);
	CreateObject(6989, -236.36000, -150.46001, -79.50000,   0.00000, 0.00000, 162.78000);
	CreateObject(6989, -110.30000, 21.05000, -79.50000,   0.00000, 0.00000, 249.66000);
	CreateObject(6989, -166.24001, -130.03999, -79.52000,   0.00000, 0.00000, 249.66000);
	CreateObject(6388, -246.37000, -69.28000, -11.84000,   0.00000, 0.00000, -17.70000);
	CreateObject(6388, -160.59000, 67.49000, -11.84000,   0.00000, 0.00000, 162.00000);
	CreateObject(2934, -201.84000, 75.71000, 3.24000,   0.00000, 0.00000, 75.66000);
	CreateObject(2934, -210.97000, 78.84000, 3.25000,   0.00000, 0.00000, 64.56000);
	CreateObject(2934, -218.19000, 81.28000, 2.73000,   0.00000, 0.00000, 65.58000);
	CreateObject(2934, -235.96001, 83.86000, 2.49000,   0.00000, 0.00000, 119.22000);
	CreateObject(2934, -207.37000, 75.83000, 6.14000,   0.00000, 0.00000, 69.24000);
	CreateObject(2932, -205.71001, -77.41000, 3.43000,   0.00000, 0.00000, -104.76000);
	CreateObject(2932, -197.41000, -80.80000, 3.44000,   0.00000, 0.00000, -121.14000);
	CreateObject(2932, -190.30000, -84.02000, 3.44000,   0.00000, 0.00000, -109.02000);
	CreateObject(2932, -177.84000, -84.31000, 3.44000,   0.00000, 0.00000, -52.02000);
	CreateObject(2932, -200.48000, -77.53000, 6.33000,   0.00000, 0.00000, -112.50000);
	CreateObject(2934, -165.21001, 90.02000, 3.50000,   0.00000, 0.00000, 72.24000);
	CreateObject(2932, -241.75000, -91.92000, 3.40000,   0.00000, 0.00000, 72.18000);
	CreateObject(2935, -205.25000, -1.99000, 3.49000,   0.00000, 0.00000, 71.70000);
	CreateObject(16061, -239.14999, -119.39000, 1.88000,   0.00000, 0.00000, 73.32000);
	CreateObject(16061, -219.09000, 106.20000, -9.92000,   0.00000, 0.00000, 240.24001);
	CreateObject(16061, -188.72000, -101.70000, -9.92000,   0.00000, 0.00000, 85.74000);
	CreateObject(16061, -175.15781, 113.35090, 1.95000,   0.00000, 0.00000, 250.56000);
	CreateObject(16061, -148.36000, -10.28000, 2.59000,   0.00000, 0.00000, 156.84000);
	CreateObject(16061, -258.48001, 27.26000, 1.40000,   0.00000, 0.00000, 340.01999);
	objectId = CreateObject(3885, -152.15030, 52.53920, 2.75850,   0.00000, 0.00000, 146.00000);
	SetObjectMaterial(objectId, 0, 10357, "tvtower_sfs", "ws_transmit_red", 0xFFFFFFFF);
	objectId = CreateObject(3885, -247.57410, -55.88480, 2.77900,   0.00000, 0.00000, -38.00000);
    SetObjectMaterial(objectId, 0, 6328, "sunset04_law2", "LAbluewall", 0xFFFFFFFF);
	CreateObject(18257, -142.27528, 54.97489, 6.50410,   0.00000, 0.00000, -18.00000);
	CreateObject(18257, -156.45602, 59.57191, 6.50410,   0.00000, 0.00000, -18.00000);
	CreateObject(18257, -168.30475, 63.68726, 6.50410,   0.00000, 0.00000, -18.00000);
	CreateObject(2991, -180.94998, 68.02634, 7.09530,   0.00000, 0.00000, -18.00000);
	CreateObject(2991, -180.95000, 68.02630, 8.27530,   0.00000, 0.00000, -18.00000);
	CreateObject(18257, -225.18930, -72.35310, 6.50580,   0.00000, 0.00000, -20.00000);
	CreateObject(18257, -237.63338, -68.80544, 6.50580,   0.00000, 0.00000, -20.00000);
	CreateObject(18257, -250.39244, -64.32850, 6.50580,   0.00000, 0.00000, -20.00000);
	CreateObject(2991, -262.21289, -58.01108, 7.07080,   0.00000, 0.00000, -18.00000);
	CreateObject(2991, -262.21289, -58.01110, 8.25080,   0.00000, 0.00000, -18.00000);
	return 1;
}
