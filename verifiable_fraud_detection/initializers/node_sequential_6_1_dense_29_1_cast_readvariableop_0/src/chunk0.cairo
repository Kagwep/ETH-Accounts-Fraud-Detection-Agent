use orion::numbers::{FixedTrait, FP16x16};

fn compute(ref a: Array<FP16x16>) {
a.append(FP16x16 { mag: 21884, sign: true });
a.append(FP16x16 { mag: 17192, sign: false });
a.append(FP16x16 { mag: 21923, sign: true });
a.append(FP16x16 { mag: 5938, sign: false });
a.append(FP16x16 { mag: 12351, sign: true });
a.append(FP16x16 { mag: 13621, sign: true });
a.append(FP16x16 { mag: 11206, sign: false });
a.append(FP16x16 { mag: 18711, sign: false });
a.append(FP16x16 { mag: 2647, sign: true });
a.append(FP16x16 { mag: 16393, sign: true });
a.append(FP16x16 { mag: 21513, sign: false });
a.append(FP16x16 { mag: 15427, sign: true });
a.append(FP16x16 { mag: 20548, sign: false });
a.append(FP16x16 { mag: 5520, sign: true });
a.append(FP16x16 { mag: 12803, sign: true });
a.append(FP16x16 { mag: 4919, sign: false });
a.append(FP16x16 { mag: 52262, sign: false });
a.append(FP16x16 { mag: 31652, sign: false });
a.append(FP16x16 { mag: 47108, sign: false });
a.append(FP16x16 { mag: 7642, sign: false });
a.append(FP16x16 { mag: 74909, sign: true });
a.append(FP16x16 { mag: 17947, sign: true });
a.append(FP16x16 { mag: 50253, sign: false });
a.append(FP16x16 { mag: 2845, sign: false });
a.append(FP16x16 { mag: 11500, sign: true });
a.append(FP16x16 { mag: 30491, sign: false });
a.append(FP16x16 { mag: 40904, sign: false });
a.append(FP16x16 { mag: 62631, sign: true });
a.append(FP16x16 { mag: 26177, sign: false });
a.append(FP16x16 { mag: 137591, sign: true });
a.append(FP16x16 { mag: 62770, sign: false });
a.append(FP16x16 { mag: 109660, sign: true });
a.append(FP16x16 { mag: 7986, sign: true });
a.append(FP16x16 { mag: 11295, sign: true });
a.append(FP16x16 { mag: 5733, sign: true });
a.append(FP16x16 { mag: 1452, sign: true });
a.append(FP16x16 { mag: 6570, sign: false });
a.append(FP16x16 { mag: 20624, sign: true });
a.append(FP16x16 { mag: 3562, sign: true });
a.append(FP16x16 { mag: 1106, sign: false });
a.append(FP16x16 { mag: 19115, sign: false });
a.append(FP16x16 { mag: 18351, sign: true });
a.append(FP16x16 { mag: 18637, sign: true });
a.append(FP16x16 { mag: 11626, sign: false });
a.append(FP16x16 { mag: 5650, sign: true });
a.append(FP16x16 { mag: 20745, sign: true });
a.append(FP16x16 { mag: 12086, sign: true });
a.append(FP16x16 { mag: 6489, sign: false });
a.append(FP16x16 { mag: 52576, sign: true });
a.append(FP16x16 { mag: 137234, sign: true });
a.append(FP16x16 { mag: 7645, sign: false });
a.append(FP16x16 { mag: 56416, sign: true });
a.append(FP16x16 { mag: 10700, sign: false });
a.append(FP16x16 { mag: 24257, sign: true });
a.append(FP16x16 { mag: 29959, sign: false });
a.append(FP16x16 { mag: 109606, sign: true });
a.append(FP16x16 { mag: 54159, sign: false });
a.append(FP16x16 { mag: 52014, sign: true });
a.append(FP16x16 { mag: 2503, sign: false });
a.append(FP16x16 { mag: 14310, sign: false });
a.append(FP16x16 { mag: 111394, sign: true });
a.append(FP16x16 { mag: 66363, sign: false });
a.append(FP16x16 { mag: 45491, sign: true });
a.append(FP16x16 { mag: 41015, sign: false });
a.append(FP16x16 { mag: 49230, sign: false });
a.append(FP16x16 { mag: 3161, sign: false });
a.append(FP16x16 { mag: 64151, sign: false });
a.append(FP16x16 { mag: 52608, sign: true });
a.append(FP16x16 { mag: 210234, sign: true });
a.append(FP16x16 { mag: 4202, sign: true });
a.append(FP16x16 { mag: 4664, sign: false });
a.append(FP16x16 { mag: 55677, sign: false });
a.append(FP16x16 { mag: 26855, sign: true });
a.append(FP16x16 { mag: 155779, sign: true });
a.append(FP16x16 { mag: 33137, sign: false });
a.append(FP16x16 { mag: 182457, sign: true });
a.append(FP16x16 { mag: 13361, sign: true });
a.append(FP16x16 { mag: 104933, sign: true });
a.append(FP16x16 { mag: 19514, sign: false });
a.append(FP16x16 { mag: 211568, sign: true });
a.append(FP16x16 { mag: 1204, sign: false });
a.append(FP16x16 { mag: 7843, sign: true });
a.append(FP16x16 { mag: 56725, sign: true });
a.append(FP16x16 { mag: 10049, sign: false });
a.append(FP16x16 { mag: 42838, sign: false });
a.append(FP16x16 { mag: 8739, sign: true });
a.append(FP16x16 { mag: 27035, sign: false });
a.append(FP16x16 { mag: 947, sign: true });
a.append(FP16x16 { mag: 69747, sign: false });
a.append(FP16x16 { mag: 16081, sign: true });
a.append(FP16x16 { mag: 42206, sign: true });
a.append(FP16x16 { mag: 42620, sign: false });
a.append(FP16x16 { mag: 1514, sign: false });
a.append(FP16x16 { mag: 27557, sign: false });
a.append(FP16x16 { mag: 23381, sign: true });
a.append(FP16x16 { mag: 8601, sign: false });
a.append(FP16x16 { mag: 6590, sign: false });
a.append(FP16x16 { mag: 16323, sign: false });
a.append(FP16x16 { mag: 23744, sign: true });
a.append(FP16x16 { mag: 38436, sign: true });
a.append(FP16x16 { mag: 1916, sign: true });
a.append(FP16x16 { mag: 3401, sign: true });
a.append(FP16x16 { mag: 3252, sign: false });
a.append(FP16x16 { mag: 14686, sign: false });
a.append(FP16x16 { mag: 4634, sign: true });
a.append(FP16x16 { mag: 88331, sign: true });
a.append(FP16x16 { mag: 19152, sign: true });
a.append(FP16x16 { mag: 6316, sign: false });
a.append(FP16x16 { mag: 23372, sign: false });
a.append(FP16x16 { mag: 34880, sign: false });
a.append(FP16x16 { mag: 13840, sign: false });
a.append(FP16x16 { mag: 11188, sign: false });
a.append(FP16x16 { mag: 28892, sign: false });
a.append(FP16x16 { mag: 16296, sign: false });
a.append(FP16x16 { mag: 46929, sign: false });
a.append(FP16x16 { mag: 15989, sign: false });
a.append(FP16x16 { mag: 771, sign: false });
a.append(FP16x16 { mag: 868, sign: false });
a.append(FP16x16 { mag: 42880, sign: true });
a.append(FP16x16 { mag: 11560, sign: false });
a.append(FP16x16 { mag: 48460, sign: false });
a.append(FP16x16 { mag: 14284, sign: true });
a.append(FP16x16 { mag: 25970, sign: false });
a.append(FP16x16 { mag: 10733, sign: false });
a.append(FP16x16 { mag: 10598, sign: true });
a.append(FP16x16 { mag: 10635, sign: false });
a.append(FP16x16 { mag: 20041, sign: false });
a.append(FP16x16 { mag: 13481, sign: true });
a.append(FP16x16 { mag: 9282, sign: true });
a.append(FP16x16 { mag: 16501, sign: false });
a.append(FP16x16 { mag: 1762, sign: false });
a.append(FP16x16 { mag: 17468, sign: true });
a.append(FP16x16 { mag: 10852, sign: false });
a.append(FP16x16 { mag: 13716, sign: true });
a.append(FP16x16 { mag: 12388, sign: true });
a.append(FP16x16 { mag: 17840, sign: false });
a.append(FP16x16 { mag: 6849, sign: true });
a.append(FP16x16 { mag: 22288, sign: false });
a.append(FP16x16 { mag: 8203, sign: true });
a.append(FP16x16 { mag: 1597, sign: false });
a.append(FP16x16 { mag: 39465, sign: false });
a.append(FP16x16 { mag: 4536, sign: false });
a.append(FP16x16 { mag: 14607, sign: false });
a.append(FP16x16 { mag: 33210, sign: false });
a.append(FP16x16 { mag: 16586, sign: true });
a.append(FP16x16 { mag: 131528, sign: true });
a.append(FP16x16 { mag: 33551, sign: true });
a.append(FP16x16 { mag: 48391, sign: true });
a.append(FP16x16 { mag: 46457, sign: false });
a.append(FP16x16 { mag: 2241, sign: false });
a.append(FP16x16 { mag: 98617, sign: true });
a.append(FP16x16 { mag: 88164, sign: true });
a.append(FP16x16 { mag: 59973, sign: false });
a.append(FP16x16 { mag: 26102, sign: true });
a.append(FP16x16 { mag: 27327, sign: true });
a.append(FP16x16 { mag: 4095, sign: false });
a.append(FP16x16 { mag: 138496, sign: true });
a.append(FP16x16 { mag: 45659, sign: false });
a.append(FP16x16 { mag: 184957, sign: true });
a.append(FP16x16 { mag: 30797, sign: false });
a.append(FP16x16 { mag: 8579, sign: true });
a.append(FP16x16 { mag: 4957, sign: false });
a.append(FP16x16 { mag: 15255, sign: false });
a.append(FP16x16 { mag: 12268, sign: true });
a.append(FP16x16 { mag: 17522, sign: false });
a.append(FP16x16 { mag: 18083, sign: true });
a.append(FP16x16 { mag: 15312, sign: false });
a.append(FP16x16 { mag: 20207, sign: false });
a.append(FP16x16 { mag: 14430, sign: false });
a.append(FP16x16 { mag: 15150, sign: true });
a.append(FP16x16 { mag: 5231, sign: false });
a.append(FP16x16 { mag: 12682, sign: true });
a.append(FP16x16 { mag: 6325, sign: true });
a.append(FP16x16 { mag: 14563, sign: false });
a.append(FP16x16 { mag: 20468, sign: false });
a.append(FP16x16 { mag: 21931, sign: false });
a.append(FP16x16 { mag: 18686, sign: true });
a.append(FP16x16 { mag: 4204, sign: true });
a.append(FP16x16 { mag: 13952, sign: false });
a.append(FP16x16 { mag: 17318, sign: false });
a.append(FP16x16 { mag: 17727, sign: true });
a.append(FP16x16 { mag: 974, sign: false });
a.append(FP16x16 { mag: 6634, sign: false });
a.append(FP16x16 { mag: 10002, sign: true });
a.append(FP16x16 { mag: 1723, sign: false });
a.append(FP16x16 { mag: 7067, sign: true });
a.append(FP16x16 { mag: 1942, sign: false });
a.append(FP16x16 { mag: 22108, sign: true });
a.append(FP16x16 { mag: 7164, sign: false });
a.append(FP16x16 { mag: 17435, sign: true });
a.append(FP16x16 { mag: 18385, sign: true });
a.append(FP16x16 { mag: 22599, sign: false });
a.append(FP16x16 { mag: 7586, sign: true });
a.append(FP16x16 { mag: 17112, sign: false });
a.append(FP16x16 { mag: 16987, sign: true });
a.append(FP16x16 { mag: 13034, sign: false });
a.append(FP16x16 { mag: 5278, sign: true });
a.append(FP16x16 { mag: 18605, sign: true });
a.append(FP16x16 { mag: 21735, sign: false });
a.append(FP16x16 { mag: 11777, sign: false });
a.append(FP16x16 { mag: 13555, sign: false });
a.append(FP16x16 { mag: 16755, sign: true });
a.append(FP16x16 { mag: 13854, sign: false });
a.append(FP16x16 { mag: 18367, sign: true });
a.append(FP16x16 { mag: 12598, sign: true });
a.append(FP16x16 { mag: 1915, sign: true });
a.append(FP16x16 { mag: 12719, sign: false });
a.append(FP16x16 { mag: 18063, sign: true });
a.append(FP16x16 { mag: 115687, sign: true });
a.append(FP16x16 { mag: 116179, sign: true });
a.append(FP16x16 { mag: 107237, sign: true });
a.append(FP16x16 { mag: 4393, sign: false });
a.append(FP16x16 { mag: 15752, sign: false });
a.append(FP16x16 { mag: 3372, sign: false });
a.append(FP16x16 { mag: 19138, sign: false });
a.append(FP16x16 { mag: 99812, sign: true });
a.append(FP16x16 { mag: 70817, sign: false });
a.append(FP16x16 { mag: 62417, sign: true });
a.append(FP16x16 { mag: 86723, sign: true });
a.append(FP16x16 { mag: 2679, sign: true });
a.append(FP16x16 { mag: 90101, sign: true });
a.append(FP16x16 { mag: 34724, sign: false });
a.append(FP16x16 { mag: 101585, sign: true });
a.append(FP16x16 { mag: 85466, sign: false });
a.append(FP16x16 { mag: 63954, sign: false });
a.append(FP16x16 { mag: 26695, sign: false });
a.append(FP16x16 { mag: 71621, sign: false });
a.append(FP16x16 { mag: 38624, sign: true });
a.append(FP16x16 { mag: 49602, sign: true });
a.append(FP16x16 { mag: 20449, sign: true });
a.append(FP16x16 { mag: 10529, sign: true });
a.append(FP16x16 { mag: 70523, sign: false });
a.append(FP16x16 { mag: 83675, sign: true });
a.append(FP16x16 { mag: 46830, sign: true });
a.append(FP16x16 { mag: 90113, sign: false });
a.append(FP16x16 { mag: 42057, sign: true });
a.append(FP16x16 { mag: 78905, sign: false });
a.append(FP16x16 { mag: 52169, sign: true });
a.append(FP16x16 { mag: 90428, sign: false });
a.append(FP16x16 { mag: 59450, sign: true });
a.append(FP16x16 { mag: 64422, sign: true });
a.append(FP16x16 { mag: 59456, sign: true });
a.append(FP16x16 { mag: 43739, sign: false });
a.append(FP16x16 { mag: 146, sign: false });
a.append(FP16x16 { mag: 10476, sign: false });
a.append(FP16x16 { mag: 7617, sign: false });
a.append(FP16x16 { mag: 31724, sign: false });
a.append(FP16x16 { mag: 50677, sign: true });
a.append(FP16x16 { mag: 12134, sign: true });
a.append(FP16x16 { mag: 30118, sign: true });
a.append(FP16x16 { mag: 39131, sign: false });
a.append(FP16x16 { mag: 27474, sign: true });
a.append(FP16x16 { mag: 48746, sign: true });
a.append(FP16x16 { mag: 18159, sign: false });
a.append(FP16x16 { mag: 12497, sign: false });
a.append(FP16x16 { mag: 13437, sign: true });
a.append(FP16x16 { mag: 21367, sign: false });
a.append(FP16x16 { mag: 20383, sign: true });
a.append(FP16x16 { mag: 11991, sign: false });
a.append(FP16x16 { mag: 96201, sign: true });
a.append(FP16x16 { mag: 9754, sign: true });
a.append(FP16x16 { mag: 1957, sign: false });
a.append(FP16x16 { mag: 6788, sign: true });
a.append(FP16x16 { mag: 27985, sign: false });
a.append(FP16x16 { mag: 43339, sign: true });
a.append(FP16x16 { mag: 69612, sign: true });
a.append(FP16x16 { mag: 100, sign: false });
a.append(FP16x16 { mag: 107901, sign: true });
a.append(FP16x16 { mag: 31056, sign: false });
a.append(FP16x16 { mag: 7954, sign: true });
a.append(FP16x16 { mag: 11190, sign: false });
a.append(FP16x16 { mag: 980, sign: true });
a.append(FP16x16 { mag: 7728, sign: false });
a.append(FP16x16 { mag: 20198, sign: false });
a.append(FP16x16 { mag: 18355, sign: true });
a.append(FP16x16 { mag: 34161, sign: true });
a.append(FP16x16 { mag: 123920, sign: true });
a.append(FP16x16 { mag: 16706, sign: false });
a.append(FP16x16 { mag: 8758, sign: true });
a.append(FP16x16 { mag: 7608, sign: true });
a.append(FP16x16 { mag: 46998, sign: true });
a.append(FP16x16 { mag: 117023, sign: true });
a.append(FP16x16 { mag: 22459, sign: true });
a.append(FP16x16 { mag: 105010, sign: true });
a.append(FP16x16 { mag: 20593, sign: false });
a.append(FP16x16 { mag: 25192, sign: true });
a.append(FP16x16 { mag: 19177, sign: true });
a.append(FP16x16 { mag: 15464, sign: false });
a.append(FP16x16 { mag: 10057, sign: false });
a.append(FP16x16 { mag: 17010, sign: true });
a.append(FP16x16 { mag: 6589, sign: false });
a.append(FP16x16 { mag: 54527, sign: true });
a.append(FP16x16 { mag: 41159, sign: true });
a.append(FP16x16 { mag: 23681, sign: true });
a.append(FP16x16 { mag: 121939, sign: true });
a.append(FP16x16 { mag: 1935, sign: true });
a.append(FP16x16 { mag: 97194, sign: true });
a.append(FP16x16 { mag: 34830, sign: false });
a.append(FP16x16 { mag: 8159, sign: false });
a.append(FP16x16 { mag: 64164, sign: true });
a.append(FP16x16 { mag: 18609, sign: false });
a.append(FP16x16 { mag: 67634, sign: true });
a.append(FP16x16 { mag: 31819, sign: true });
a.append(FP16x16 { mag: 30737, sign: false });
a.append(FP16x16 { mag: 1186, sign: true });
a.append(FP16x16 { mag: 842, sign: false });
a.append(FP16x16 { mag: 9543, sign: false });
a.append(FP16x16 { mag: 32851, sign: true });
a.append(FP16x16 { mag: 9477, sign: false });
a.append(FP16x16 { mag: 15757, sign: true });
a.append(FP16x16 { mag: 34647, sign: false });
a.append(FP16x16 { mag: 8070, sign: true });
a.append(FP16x16 { mag: 128481, sign: true });
a.append(FP16x16 { mag: 39801, sign: false });
a.append(FP16x16 { mag: 1983, sign: true });
a.append(FP16x16 { mag: 60150, sign: true });
a.append(FP16x16 { mag: 25252, sign: false });
a.append(FP16x16 { mag: 60893, sign: true });
a.append(FP16x16 { mag: 35412, sign: false });
a.append(FP16x16 { mag: 26376, sign: true });
a.append(FP16x16 { mag: 16519, sign: false });
a.append(FP16x16 { mag: 16891, sign: false });
a.append(FP16x16 { mag: 540, sign: true });
a.append(FP16x16 { mag: 6525, sign: false });
a.append(FP16x16 { mag: 12570, sign: true });
a.append(FP16x16 { mag: 15127, sign: false });
a.append(FP16x16 { mag: 818, sign: true });
a.append(FP16x16 { mag: 14749, sign: false });
a.append(FP16x16 { mag: 9419, sign: true });
a.append(FP16x16 { mag: 13388, sign: false });
a.append(FP16x16 { mag: 18322, sign: false });
a.append(FP16x16 { mag: 21760, sign: false });
a.append(FP16x16 { mag: 2586, sign: true });
a.append(FP16x16 { mag: 5021, sign: true });
a.append(FP16x16 { mag: 9133, sign: false });
a.append(FP16x16 { mag: 11358, sign: false });
a.append(FP16x16 { mag: 17508, sign: true });
a.append(FP16x16 { mag: 9415, sign: true });
a.append(FP16x16 { mag: 62818, sign: true });
a.append(FP16x16 { mag: 10173, sign: true });
a.append(FP16x16 { mag: 42740, sign: false });
a.append(FP16x16 { mag: 108, sign: true });
a.append(FP16x16 { mag: 6406, sign: true });
a.append(FP16x16 { mag: 27999, sign: true });
a.append(FP16x16 { mag: 24666, sign: false });
a.append(FP16x16 { mag: 30163, sign: true });
a.append(FP16x16 { mag: 54517, sign: true });
a.append(FP16x16 { mag: 14265, sign: false });
a.append(FP16x16 { mag: 32062, sign: true });
a.append(FP16x16 { mag: 30029, sign: false });
a.append(FP16x16 { mag: 33080, sign: true });
a.append(FP16x16 { mag: 5247, sign: false });
a.append(FP16x16 { mag: 40316, sign: false });
a.append(FP16x16 { mag: 32688, sign: false });
a.append(FP16x16 { mag: 42298, sign: false });
a.append(FP16x16 { mag: 59645, sign: true });
a.append(FP16x16 { mag: 100624, sign: true });
a.append(FP16x16 { mag: 14947, sign: true });
a.append(FP16x16 { mag: 5617, sign: true });
a.append(FP16x16 { mag: 43115, sign: false });
a.append(FP16x16 { mag: 17872, sign: true });
a.append(FP16x16 { mag: 128040, sign: true });
a.append(FP16x16 { mag: 23776, sign: false });
a.append(FP16x16 { mag: 95396, sign: true });
a.append(FP16x16 { mag: 8305, sign: false });
a.append(FP16x16 { mag: 2169, sign: false });
a.append(FP16x16 { mag: 52316, sign: false });
a.append(FP16x16 { mag: 8160, sign: true });
a.append(FP16x16 { mag: 135902, sign: true });
a.append(FP16x16 { mag: 41911, sign: true });
a.append(FP16x16 { mag: 137462, sign: true });
a.append(FP16x16 { mag: 44057, sign: false });
a.append(FP16x16 { mag: 97891, sign: false });
a.append(FP16x16 { mag: 15480, sign: true });
a.append(FP16x16 { mag: 67257, sign: true });
a.append(FP16x16 { mag: 133393, sign: true });
a.append(FP16x16 { mag: 101144, sign: false });
a.append(FP16x16 { mag: 38892, sign: false });
a.append(FP16x16 { mag: 89544, sign: true });
a.append(FP16x16 { mag: 82645, sign: false });
a.append(FP16x16 { mag: 2637, sign: false });
a.append(FP16x16 { mag: 72289, sign: true });
a.append(FP16x16 { mag: 105886, sign: true });
a.append(FP16x16 { mag: 85211, sign: false });
a.append(FP16x16 { mag: 28797, sign: false });
a.append(FP16x16 { mag: 44374, sign: false });
a.append(FP16x16 { mag: 22812, sign: false });
a.append(FP16x16 { mag: 92367, sign: true });
a.append(FP16x16 { mag: 806, sign: false });
a.append(FP16x16 { mag: 5291, sign: false });
a.append(FP16x16 { mag: 35139, sign: true });
a.append(FP16x16 { mag: 17898, sign: false });
a.append(FP16x16 { mag: 22432, sign: true });
a.append(FP16x16 { mag: 36487, sign: true });
a.append(FP16x16 { mag: 28885, sign: false });
a.append(FP16x16 { mag: 86954, sign: true });
a.append(FP16x16 { mag: 46165, sign: false });
a.append(FP16x16 { mag: 6847, sign: false });
a.append(FP16x16 { mag: 2935, sign: true });
a.append(FP16x16 { mag: 42965, sign: true });
a.append(FP16x16 { mag: 5226, sign: false });
a.append(FP16x16 { mag: 104543, sign: true });
a.append(FP16x16 { mag: 17595, sign: false });
a.append(FP16x16 { mag: 13446, sign: true });
a.append(FP16x16 { mag: 5320, sign: false });
a.append(FP16x16 { mag: 25774, sign: true });
a.append(FP16x16 { mag: 10607, sign: false });
a.append(FP16x16 { mag: 79329, sign: true });
a.append(FP16x16 { mag: 8800, sign: true });
a.append(FP16x16 { mag: 4657, sign: false });
a.append(FP16x16 { mag: 26411, sign: false });
a.append(FP16x16 { mag: 13685, sign: true });
a.append(FP16x16 { mag: 96890, sign: true });
a.append(FP16x16 { mag: 27296, sign: false });
a.append(FP16x16 { mag: 1912, sign: false });
a.append(FP16x16 { mag: 340, sign: false });
a.append(FP16x16 { mag: 20132, sign: false });
a.append(FP16x16 { mag: 9812, sign: false });
a.append(FP16x16 { mag: 8456, sign: false });
a.append(FP16x16 { mag: 4817, sign: true });
a.append(FP16x16 { mag: 40207, sign: true });
a.append(FP16x16 { mag: 5571, sign: false });
a.append(FP16x16 { mag: 78372, sign: true });
a.append(FP16x16 { mag: 7158, sign: false });
a.append(FP16x16 { mag: 24991, sign: false });
a.append(FP16x16 { mag: 60766, sign: true });
a.append(FP16x16 { mag: 18093, sign: true });
a.append(FP16x16 { mag: 26175, sign: true });
a.append(FP16x16 { mag: 19212, sign: true });
a.append(FP16x16 { mag: 18852, sign: true });
a.append(FP16x16 { mag: 1615, sign: false });
a.append(FP16x16 { mag: 3673, sign: true });
a.append(FP16x16 { mag: 1765, sign: false });
a.append(FP16x16 { mag: 10922, sign: false });
a.append(FP16x16 { mag: 5909, sign: false });
a.append(FP16x16 { mag: 22036, sign: false });
a.append(FP16x16 { mag: 15027, sign: true });
a.append(FP16x16 { mag: 13232, sign: true });
a.append(FP16x16 { mag: 12553, sign: false });
a.append(FP16x16 { mag: 14326, sign: true });
a.append(FP16x16 { mag: 21733, sign: false });
a.append(FP16x16 { mag: 21352, sign: false });
a.append(FP16x16 { mag: 17032, sign: false });
a.append(FP16x16 { mag: 1354, sign: false });
a.append(FP16x16 { mag: 2965, sign: true });
a.append(FP16x16 { mag: 16763, sign: false });
a.append(FP16x16 { mag: 14064, sign: true });
a.append(FP16x16 { mag: 14490, sign: false });
a.append(FP16x16 { mag: 21180, sign: true });
a.append(FP16x16 { mag: 16230, sign: false });
a.append(FP16x16 { mag: 5620, sign: true });
a.append(FP16x16 { mag: 27277, sign: true });
a.append(FP16x16 { mag: 20184, sign: false });
a.append(FP16x16 { mag: 7923, sign: true });
a.append(FP16x16 { mag: 12222, sign: false });
a.append(FP16x16 { mag: 2477, sign: false });
a.append(FP16x16 { mag: 22935, sign: true });
a.append(FP16x16 { mag: 62712, sign: true });
a.append(FP16x16 { mag: 4612, sign: false });
a.append(FP16x16 { mag: 17656, sign: true });
a.append(FP16x16 { mag: 28861, sign: false });
a.append(FP16x16 { mag: 15861, sign: false });
a.append(FP16x16 { mag: 9415, sign: false });
a.append(FP16x16 { mag: 5758, sign: true });
a.append(FP16x16 { mag: 27529, sign: false });
a.append(FP16x16 { mag: 65592, sign: true });
a.append(FP16x16 { mag: 3338, sign: true });
a.append(FP16x16 { mag: 8843, sign: false });
a.append(FP16x16 { mag: 11660, sign: true });
a.append(FP16x16 { mag: 345, sign: true });
a.append(FP16x16 { mag: 98381, sign: true });
a.append(FP16x16 { mag: 38979, sign: true });
a.append(FP16x16 { mag: 37168, sign: false });
a.append(FP16x16 { mag: 36425, sign: false });
a.append(FP16x16 { mag: 10375, sign: false });
a.append(FP16x16 { mag: 3604, sign: true });
a.append(FP16x16 { mag: 46733, sign: true });
a.append(FP16x16 { mag: 68175, sign: true });
a.append(FP16x16 { mag: 64865, sign: true });
a.append(FP16x16 { mag: 3972, sign: false });
a.append(FP16x16 { mag: 43313, sign: true });
a.append(FP16x16 { mag: 62088, sign: true });
a.append(FP16x16 { mag: 3849, sign: true });
a.append(FP16x16 { mag: 3790, sign: true });
a.append(FP16x16 { mag: 37434, sign: false });
a.append(FP16x16 { mag: 21927, sign: true });
a.append(FP16x16 { mag: 48015, sign: false });
a.append(FP16x16 { mag: 65987, sign: true });
a.append(FP16x16 { mag: 36790, sign: false });
a.append(FP16x16 { mag: 8669, sign: true });
a.append(FP16x16 { mag: 543, sign: false });
a.append(FP16x16 { mag: 32802, sign: false });
a.append(FP16x16 { mag: 42775, sign: true });
a.append(FP16x16 { mag: 47081, sign: false });
a.append(FP16x16 { mag: 98, sign: false });
a.append(FP16x16 { mag: 36684, sign: false });
a.append(FP16x16 { mag: 87760, sign: true });
a.append(FP16x16 { mag: 24531, sign: true });
a.append(FP16x16 { mag: 36182, sign: true });
a.append(FP16x16 { mag: 1045, sign: true });
a.append(FP16x16 { mag: 18019, sign: false });
a.append(FP16x16 { mag: 4591, sign: false });
a.append(FP16x16 { mag: 25664, sign: true });
a.append(FP16x16 { mag: 39452, sign: true });
a.append(FP16x16 { mag: 65659, sign: false });
a.append(FP16x16 { mag: 70315, sign: true });
a.append(FP16x16 { mag: 26240, sign: true });
a.append(FP16x16 { mag: 15888, sign: true });
a.append(FP16x16 { mag: 31975, sign: true });
a.append(FP16x16 { mag: 54776, sign: false });
a.append(FP16x16 { mag: 19749, sign: true });
a.append(FP16x16 { mag: 56170, sign: false });
}