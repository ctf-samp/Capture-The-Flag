#include <a_samp>
#define NAME_FS "mp_island"
#include "objects"

public OnFilterScriptInit()
{
    new objid;
    CreateObject(6959, 3499.10010, 1279.69995, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(6959, 3540.39941, 1279.69922, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(6959, 3581.70020, 1279.69922, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(6959, 3499.09546, 1239.83960, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(6959, 3499.10010, 1199.89990, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(6959, 3540.39941, 1239.79883, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(6959, 3540.39941, 1199.89844, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(6959, 3581.70020, 1239.79883, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(6959, 3581.70020, 1199.89844, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(2990, 3478.39990, 1284.50000, 33.80000,   0.00000, 0.00000, 90.00000);
    CreateObject(2990, 3478.39990, 1294.59998, 33.80000,   0.00000, 0.00000, 90.00000);
    CreateObject(2990, 3493.39990, 1179.90002, 33.80000,   0.00000, 0.00000, 180.00000);
    CreateObject(2990, 3483.50000, 1179.90002, 33.80000,   0.00000, 0.00000, 179.99451);
    CreateObject(2990, 3602.39990, 1194.69995, 33.80000,   0.00000, 0.00000, 269.99451);
    CreateObject(2990, 3602.39990, 1184.80005, 33.80000,   0.00000, 0.00000, 269.98901);
    CreateObject(2990, 3587.19995, 1299.69995, 33.80000,   0.00000, 0.00000, 359.98901);
    CreateObject(2990, 3597.30005, 1299.69995, 33.80000,   0.00000, 0.00000, 359.98352);
    CreateObject(2990, 3503.29980, 1179.90002, 33.80000,   0.00000, 0.00000, 180.00000);
    CreateObject(2990, 3513.19971, 1179.90002, 33.80000,   0.00000, 0.00000, 180.00000);
    CreateObject(2990, 3523.09961, 1179.90002, 33.80000,   0.00000, 0.00000, 180.00000);
    CreateObject(2990, 3532.99951, 1179.90002, 33.80000,   0.00000, 0.00000, 180.00000);
    CreateObject(2990, 3542.89941, 1179.90002, 33.80000,   0.00000, 0.00000, 180.00000);
    CreateObject(2990, 3552.79932, 1179.90002, 33.80000,   0.00000, 0.00000, 180.00000);
    CreateObject(2990, 3562.69922, 1179.90002, 33.80000,   0.00000, 0.00000, 180.00000);
    CreateObject(2990, 3572.59912, 1179.90002, 33.80000,   0.00000, 0.00000, 180.00000);
    CreateObject(2990, 3582.49902, 1179.90002, 33.80000,   0.00000, 0.00000, 180.00000);
    CreateObject(2990, 3592.39893, 1179.90002, 33.80000,   0.00000, 0.00000, 180.00000);
    CreateObject(2990, 3597.30005, 1179.90002, 33.80000,   0.00000, 0.00000, 179.99451);
    CreateObject(2990, 3602.39990, 1204.59985, 33.80000,   0.00000, 0.00000, 269.99451);
    CreateObject(2990, 3602.39990, 1214.49976, 33.80000,   0.00000, 0.00000, 269.99451);
    CreateObject(2990, 3602.39990, 1224.39966, 33.80000,   0.00000, 0.00000, 269.99451);
    CreateObject(2990, 3602.39990, 1234.29956, 33.80000,   0.00000, 0.00000, 269.99451);
    CreateObject(2990, 3602.39990, 1244.19946, 33.80000,   0.00000, 0.00000, 269.99451);
    CreateObject(2990, 3602.39990, 1254.09937, 33.80000,   0.00000, 0.00000, 269.99451);
    CreateObject(2990, 3602.39990, 1263.99927, 33.80000,   0.00000, 0.00000, 269.99451);
    CreateObject(2990, 3602.39990, 1273.89917, 33.80000,   0.00000, 0.00000, 269.99451);
    CreateObject(2990, 3602.39990, 1283.79907, 33.80000,   0.00000, 0.00000, 269.99451);
    CreateObject(2990, 3602.39941, 1293.69824, 33.80000,   0.00000, 0.00000, 269.98901);
    CreateObject(2990, 3602.39990, 1294.59998, 33.80000,   0.00000, 0.00000, 269.98901);
    CreateObject(2990, 3577.09985, 1299.69995, 33.80000,   0.00000, 0.00000, 359.98901);
    CreateObject(2990, 3566.99976, 1299.69995, 33.80000,   0.00000, 0.00000, 359.98901);
    CreateObject(2990, 3556.89966, 1299.69995, 33.80000,   0.00000, 0.00000, 359.98901);
    CreateObject(2990, 3546.79956, 1299.69995, 33.80000,   0.00000, 0.00000, 359.98901);
    CreateObject(2990, 3536.69946, 1299.69995, 33.80000,   0.00000, 0.00000, 359.98901);
    CreateObject(2990, 3526.59937, 1299.69995, 33.80000,   0.00000, 0.00000, 359.98901);
    CreateObject(2990, 3516.49927, 1299.69995, 33.80000,   0.00000, 0.00000, 359.98901);
    CreateObject(2990, 3506.39917, 1299.69995, 33.80000,   0.00000, 0.00000, 359.98901);
    CreateObject(2990, 3496.29907, 1299.69995, 33.80000,   0.00000, 0.00000, 359.98901);
    CreateObject(2990, 3486.19897, 1299.69995, 33.80000,   0.00000, 0.00000, 359.98901);
    CreateObject(2990, 3483.50000, 1299.69995, 33.80000,   0.00000, 0.00000, 359.98352);
    CreateObject(2990, 3478.39990, 1274.40002, 33.80000,   0.00000, 0.00000, 90.00000);
    CreateObject(2990, 3478.39990, 1264.30005, 33.80000,   0.00000, 0.00000, 90.00000);
    CreateObject(2990, 3478.39990, 1254.20007, 33.80000,   0.00000, 0.00000, 90.00000);
    CreateObject(2990, 3478.39990, 1244.10010, 33.80000,   0.00000, 0.00000, 90.00000);
    CreateObject(2990, 3478.39990, 1234.00012, 33.80000,   0.00000, 0.00000, 90.00000);
    CreateObject(2990, 3478.39990, 1223.90015, 33.80000,   0.00000, 0.00000, 90.00000);
    CreateObject(2990, 3478.39990, 1213.80017, 33.80000,   0.00000, 0.00000, 90.00000);
    CreateObject(2990, 3478.39990, 1203.70020, 33.80000,   0.00000, 0.00000, 90.00000);
    CreateObject(2990, 3478.39990, 1193.60022, 33.80000,   0.00000, 0.00000, 90.00000);
    CreateObject(2990, 3478.39990, 1184.80005, 33.80000,   0.00000, 0.00000, 90.00000);
    CreateObject(12814, 3463.50000, 1204.69995, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(12814, 3463.39990, 1254.69995, 29.90000,   0.00000, 0.00000, 180.25000);
    CreateObject(12814, 3463.30005, 1304.30005, 29.90000,   0.00000, 0.00000, 0.24719);
    CreateObject(12814, 3463.39990, 1174.80005, 29.90000,   0.00000, 0.00000, 180.00000);
    CreateObject(12814, 3503.19995, 1314.50000, 29.90000,   0.00000, 0.00000, 90.24719);
    CreateObject(12814, 3553.10010, 1314.69995, 29.90000,   0.00000, 0.00000, 270.24719);
    CreateObject(12814, 3603.10010, 1314.80005, 29.90000,   0.00000, 0.00000, 90.24719);
    CreateObject(12814, 3617.39990, 1275.00000, 29.90000,   0.00000, 0.00000, 180.24719);
    CreateObject(12814, 3607.30005, 1314.90002, 29.90000,   0.00000, 0.00000, 90.24719);
    CreateObject(12814, 3617.39990, 1225.00000, 29.90000,   0.00000, 0.00000, 0.24170);
    CreateObject(12814, 3617.39990, 1175.09998, 29.90000,   0.00000, 0.00000, 180.24170);
    CreateObject(12814, 3577.50000, 1165.00000, 29.90000,   0.00000, 0.00000, 270.24170);
    CreateObject(12814, 3527.60010, 1164.80005, 29.90000,   0.00000, 0.00000, 90.23621);
    CreateObject(12814, 3503.30005, 1165.00000, 29.90000,   0.00000, 0.00000, 270.23071);
    CreateObject(617, 3610.10010, 1168.50000, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(617, 3467.69995, 1169.50000, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(617, 3468.10010, 1307.90002, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(617, 3609.69995, 1308.40002, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(617, 3609.69995, 1279.59998, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(617, 3609.69995, 1250.79993, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(617, 3609.69995, 1221.99988, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(617, 3609.69995, 1193.19983, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(617, 3584.00000, 1168.50000, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(617, 3557.89990, 1168.50000, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(617, 3531.79980, 1168.50000, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(617, 3505.69971, 1168.50000, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(617, 3467.69995, 1199.69995, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(617, 3467.69995, 1229.89990, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(617, 3467.69995, 1260.09985, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(617, 3467.10010, 1283.00000, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(617, 3496.50000, 1307.90002, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(617, 3524.89990, 1307.90002, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(617, 3553.29980, 1307.90002, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(617, 3581.69971, 1307.90002, 29.90000,   0.00000, 0.00000, 0.00000);
    CreateObject(16098, 3510.08765, 1238.27478, 34.41330,   0.00000, 0.00000, 0.71009);
    CreateObject(16098, 3571.26563, 1239.02527, 34.41330,   0.00000, 0.00000, 0.71010);
    CreateObject(16098, 3550.65479, 1238.77722, 34.41330,   0.00000, 0.00000, 0.71010);
    CreateObject(16098, 3530.27197, 1238.51782, 34.41330,   0.00000, 0.00000, 0.71009);
    CreateObject(11502, 3494.12549, 1209.58167, 29.85545,   0.00000, 0.00000, 359.57245);
    CreateObject(11502, 3493.17847, 1267.13025, 29.85545,   0.00000, 0.00000, 1.52947);
    CreateObject(3243, 3579.86548, 1282.02234, 29.75342,   0.00000, 0.00000, 280.64594);
    CreateObject(3243, 3502.61865, 1282.68945, 29.75342,   0.00000, 0.00000, 89.21557);
    CreateObject(3243, 3540.17432, 1282.36987, 29.75342,   0.00000, 0.00000, 177.52141);
    CreateObject(3243, 3580.76611, 1197.47461, 29.75340,   0.00000, 0.00000, 277.69009);
    CreateObject(3243, 3504.76660, 1197.48206, 29.75340,   0.00000, 0.00000, 69.44350);
    CreateObject(3243, 3540.95093, 1197.31140, 29.75340,   0.00000, 0.00000, 1.33010);
    CreateObject(16409, 3587.40186, 1271.05981, 29.54890,   0.00000, 0.00000, 88.92880);
    CreateObject(16409, 3590.05737, 1207.70667, 29.54890,   0.00000, 0.00000, 270.61719);
    CreateObject(19455, 3511.50659, 1221.23962, 29.56340,   0.00000, 0.00000, 359.07681);
    CreateObject(19455, 3531.51050, 1227.72046, 29.56340,   0.00000, 0.00000, 359.07681);
    CreateObject(19455, 3551.25366, 1227.50818, 29.56340,   0.00000, 0.00000, 0.51770);
    CreateObject(19455, 3531.26880, 1215.34924, 29.56340,   0.00000, 0.00000, 359.07681);
    CreateObject(19455, 3565.48950, 1221.70471, 29.56340,   0.00000, 0.00000, 0.09705);
    CreateObject(19455, 3551.14893, 1215.51501, 29.56340,   0.00000, 0.00000, 0.51353);
    CreateObject(19455, 3563.93286, 1255.85632, 29.56340,   0.00000, 0.00000, 0.09705);
    CreateObject(19455, 3552.23706, 1249.75195, 29.56340,   0.00000, 0.00000, 0.09700);
    CreateObject(19455, 3552.22388, 1262.05542, 29.56340,   0.00000, 0.00000, 0.09700);
    CreateObject(19455, 3531.52808, 1261.76428, 29.56340,   0.00000, 0.00000, 359.07681);
    CreateObject(19455, 3531.36133, 1249.56470, 29.56340,   0.00000, 0.00000, 359.07681);
    CreateObject(19455, 3519.73047, 1255.82642, 29.56340,   0.00000, 0.00000, 359.07681);
    CreateObject(19336, 3540.05542, 1316.90625, 30.07590,   0.00000, 0.00000, 358.97971);
    CreateObject(826, 3490.15063, 1288.32178, 29.29576,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3486.12964, 1287.65430, 29.49054,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3487.86597, 1287.49841, 29.38648,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3492.91187, 1190.28271, 29.26647,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3489.87842, 1190.21631, 29.26647,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3488.60083, 1191.04932, 29.26647,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3490.21875, 1191.81470, 29.26647,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3591.63110, 1196.25305, 29.15615,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3589.92578, 1194.60339, 29.45916,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3592.17969, 1194.62939, 29.15615,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3591.91577, 1192.32031, 29.15615,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3590.77344, 1288.10742, 29.16081,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3589.95117, 1284.09314, 29.16081,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3592.81323, 1284.88611, 29.16081,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3591.56030, 1283.28235, 29.16081,   0.00000, 0.00000, 0.00000);
    CreateObject(864, 3560.86719, 1242.19617, 28.90913,   0.00000, 0.00000, 0.00000);
    CreateObject(864, 3561.63965, 1238.74512, 28.90913,   0.00000, 0.00000, 0.00000);
    CreateObject(864, 3561.16284, 1240.56213, 28.90913,   0.00000, 0.00000, 0.00000);
    CreateObject(864, 3560.93408, 1237.20020, 28.90913,   0.00000, 0.00000, 0.00000);
    CreateObject(864, 3559.49902, 1239.38708, 28.90913,   0.00000, 0.00000, 0.00000);
    CreateObject(864, 3562.80396, 1240.40857, 28.90913,   0.00000, 0.00000, 0.00000);
    CreateObject(864, 3524.34961, 1237.60083, 29.02313,   0.00000, 0.00000, 0.00000);
    CreateObject(864, 3520.11523, 1237.45557, 29.02313,   0.00000, 0.00000, 0.00000);
    CreateObject(864, 3520.06201, 1235.57434, 29.02313,   0.00000, 0.00000, 0.00000);
    CreateObject(864, 3519.64111, 1239.23657, 29.02313,   0.00000, 0.00000, 0.00000);
    CreateObject(864, 3521.08887, 1240.75806, 29.02313,   0.00000, 0.00000, 0.00000);
    CreateObject(864, 3518.45410, 1241.05518, 29.02313,   0.00000, 0.00000, 0.00000);
    CreateObject(864, 3518.14355, 1238.30090, 29.02313,   0.00000, 0.00000, 0.00000);
    CreateObject(864, 3521.60059, 1237.91089, 29.02313,   0.00000, 0.00000, 0.00000);
    CreateObject(3472, 3478.54590, 1299.53540, 29.13270,   0.00000, 0.00000, 0.00000);
    CreateObject(3472, 3602.33838, 1299.64209, 29.13270,   0.00000, 0.00000, 0.00000);
    CreateObject(3472, 3478.51123, 1179.92578, 28.94420,   0.00000, 0.00000, 0.00000);
    CreateObject(3472, 3602.26587, 1179.92615, 28.97820,   0.00000, 0.00000, 0.00000);
    CreateObject(933, 3601.15723, 1232.75623, 29.79800,   0.00000, 0.00000, 0.00000);
    CreateObject(933, 3601.18579, 1238.02637, 29.79800,   0.00000, 0.00000, 0.00000);
    CreateObject(933, 3599.88257, 1235.11584, 29.79800,   0.00000, 0.00000, 0.00000);
    CreateObject(933, 3574.43311, 1266.01257, 29.80630,   0.00000, 0.00000, 0.00000);
    CreateObject(933, 3479.30103, 1205.49536, 29.82520,   0.00000, 0.00000, 0.00000);
    CreateObject(933, 3479.52002, 1208.67126, 29.82520,   0.00000, 0.00000, 0.00000);
    CreateObject(1225, 3512.81738, 1245.13977, 30.16709,   0.00000, 0.00000, 0.00000);
    CreateObject(1225, 3514.20850, 1245.23938, 30.16709,   0.00000, 0.00000, 0.00000);
    CreateObject(1225, 3513.55981, 1245.21240, 30.16709,   0.00000, 0.00000, 0.00000);
    CreateObject(1225, 3574.51270, 1245.91077, 30.20400,   0.00000, 0.00000, 0.00000);
    CreateObject(1225, 3575.39087, 1245.88977, 30.20200,   0.00000, 0.00000, 0.00000);
    CreateObject(1225, 3576.22217, 1245.81323, 30.20400,   0.00000, 0.00000, 0.00000);
    CreateObject(1225, 3577.01953, 1211.47583, 30.17472,   0.00000, 0.00000, 0.00000);
    CreateObject(1225, 3576.12012, 1211.46143, 30.17472,   0.00000, 0.00000, 0.00000);
    CreateObject(1225, 3575.40405, 1211.59741, 30.17472,   0.00000, 0.00000, 0.00000);
    CreateObject(1225, 3507.17529, 1231.49780, 30.18078,   0.00000, 0.00000, 0.00000);
    CreateObject(1225, 3505.87329, 1231.34644, 30.18078,   0.00000, 0.00000, 0.00000);
    CreateObject(1225, 3506.48193, 1231.76025, 30.18078,   0.00000, 0.00000, 0.00000);
    CreateObject(17030, 3451.85474, 1327.43298, 17.00706,   0.00000, 0.00000, 321.20203);
    CreateObject(17030, 3451.99219, 1298.16565, 17.00706,   0.00000, 0.00000, 321.20203);
    CreateObject(17030, 3451.86035, 1269.52002, 17.00706,   0.00000, 0.00000, 321.20203);
    CreateObject(17030, 3451.89941, 1238.03918, 17.00706,   0.00000, 0.00000, 321.20203);
    CreateObject(17030, 3452.05762, 1207.71631, 17.00706,   0.00000, 0.00000, 321.20203);
    CreateObject(17030, 3460.98779, 1153.03723, 15.36523,   0.00000, 0.00000, 49.51345);
    CreateObject(17030, 3450.41919, 1175.60303, 17.00706,   0.00000, 0.00000, 321.20203);
    CreateObject(17030, 3489.97681, 1152.99353, 15.36523,   0.00000, 0.00000, 49.51345);
    CreateObject(17030, 3450.84790, 1174.73596, 17.00706,   0.00000, 0.00000, 321.20203);
    CreateObject(17030, 3521.57251, 1152.74951, 15.36523,   0.00000, 0.00000, 49.51345);
    CreateObject(17030, 3548.99072, 1152.56775, 15.36523,   0.00000, 0.00000, 49.51345);
    CreateObject(17030, 3580.80151, 1153.36377, 15.36523,   0.00000, 0.00000, 49.51345);
    CreateObject(17030, 3627.92993, 1189.56970, 13.19488,   0.00000, 0.00000, 138.25220);
    CreateObject(17030, 3607.89893, 1152.95776, 15.36523,   0.00000, 0.00000, 49.51345);
    CreateObject(17030, 3626.80518, 1160.01318, 13.19488,   0.00000, 0.00000, 141.90233);
    CreateObject(17030, 3627.55225, 1166.81653, 13.19488,   0.00000, 0.00000, 141.90233);
    CreateObject(17030, 3628.08301, 1177.84778, 13.19488,   0.00000, 0.00000, 141.90233);
    CreateObject(17030, 3628.56470, 1211.39099, 13.19488,   0.00000, 0.00000, 138.25220);
    CreateObject(17030, 3628.15063, 1216.14490, 13.19488,   0.00000, 0.00000, 138.25220);
    CreateObject(17030, 3627.69971, 1242.19189, 13.19488,   0.00000, 0.00000, 138.25220);
    CreateObject(17030, 3627.44531, 1251.30896, 13.19488,   0.00000, 0.00000, 138.25220);
    CreateObject(17030, 3627.32227, 1274.44800, 13.19488,   0.00000, 0.00000, 138.25220);
    CreateObject(17030, 3627.21118, 1286.02087, 13.19488,   0.00000, 0.00000, 138.25220);
    CreateObject(17030, 3627.51758, 1305.20715, 13.19488,   0.00000, 0.00000, 138.25220);
    CreateObject(17030, 3618.82275, 1323.88416, 14.19169,   0.00000, 0.00000, 224.09984);
    CreateObject(17030, 3626.96411, 1309.02917, 13.19488,   0.00000, 0.00000, 138.25220);
    CreateObject(17030, 3608.62061, 1324.56226, 14.19169,   0.00000, 0.00000, 224.09984);
    CreateObject(17030, 3593.37476, 1324.09583, 14.19169,   0.00000, 0.00000, 224.09984);
    CreateObject(17030, 3571.48218, 1324.77649, 14.19169,   0.00000, 0.00000, 224.09984);
    CreateObject(17030, 3560.04126, 1324.72876, 14.19169,   0.00000, 0.00000, 224.09984);
    CreateObject(17030, 3536.32251, 1326.14539, 14.19169,   0.00000, 0.00000, 224.09984);
    CreateObject(17030, 3510.10376, 1325.79089, 14.19169,   0.00000, 0.00000, 224.09984);
    CreateObject(17030, 3480.21069, 1325.93591, 14.19169,   0.00000, 0.00000, 224.09984);
    CreateObject(8397, 3559.83691, 1282.43604, 40.24788,   0.00000, 0.00000, 89.04458);
    CreateObject(8397, 3521.50952, 1196.89441, 40.24788,   0.00000, 0.00000, 89.04458);
    CreateObject(826, 3561.87207, 1198.55518, 29.38764,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3563.20752, 1197.34827, 29.38764,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3561.22974, 1194.02893, 29.38764,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3481.47266, 1237.69983, 29.04711,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3481.37671, 1235.93042, 29.04711,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3481.36865, 1240.21838, 29.04711,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3480.94873, 1242.44580, 29.04711,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3510.07373, 1264.50745, 28.87950,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3511.05835, 1264.99854, 28.57648,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3520.15576, 1283.73682, 29.05626,   0.00000, 0.00000, 359.69391);
    CreateObject(826, 3520.87939, 1283.87854, 29.05626,   0.00000, 0.00000, 359.69391);
    CreateObject(826, 3519.85278, 1286.52966, 29.05626,   0.00000, 0.00000, 359.69391);
    CreateObject(826, 3521.87695, 1286.54199, 29.05626,   0.00000, 0.00000, 359.69391);
    CreateObject(826, 3599.65405, 1246.37378, 28.98447,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3600.41797, 1246.75549, 28.98447,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3599.08301, 1247.38843, 28.98447,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3494.88306, 1261.17224, 28.88951,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3494.10620, 1262.16418, 28.88951,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3497.95459, 1261.76147, 28.88951,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3495.75903, 1218.59424, 28.76480,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3495.51367, 1217.52795, 28.76480,   0.00000, 0.00000, 0.00000);
    CreateObject(826, 3493.13916, 1218.23584, 28.76480,   0.00000, 0.00000, 0.00000);
    CreateObject(3399, 3504.23242, 1242.81897, 32.09830,   0.00000, 0.00000, 0.00000);
    CreateObject(3399, 3504.43213, 1233.79907, 32.09830,   0.00000, 0.00000, 0.00000);
    CreateObject(3399, 3577.17603, 1234.72180, 32.09830,   0.00000, 0.00000, 179.00000);
    CreateObject(3399, 3577.22339, 1243.55383, 32.09830,   0.00000, 0.00000, 179.00000);
    objid = CreateObject(3885, 3485.27075, 1252.74841, 29.85550,   0.00000, 0.00000, -98.00000);
    SetObjectMaterial(objid, 0, 6328, "sunset04_law2", "LAbluewall", 0xFFFFFFFF);
    objid = CreateObject(3885, 3597.28833, 1224.24060, 29.85550,   0.00000, 0.00000, 78.00000);
    SetObjectMaterial(objid, 0, 10357, "tvtower_sfs", "ws_transmit_red", 0xFFFFFFFF);
    CreateObject(988, 3494.48145, 1271.59753, 29.86270,   0.00000, 0.00000, 181.00000);
    CreateObject(988, 3495.89453, 1205.16357, 29.85877,   0.00000, 0.00000, 0.00000);
    return 1;
}