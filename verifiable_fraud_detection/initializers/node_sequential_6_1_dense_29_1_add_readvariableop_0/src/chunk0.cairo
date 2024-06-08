use orion::numbers::{FixedTrait, FP16x16};

fn compute(ref a: Array<FP16x16>) {
a.append(FP16x16 { mag: 2896, sign: false });
a.append(FP16x16 { mag: 19977, sign: false });
a.append(FP16x16 { mag: 7923, sign: false });
a.append(FP16x16 { mag: 21685, sign: false });
a.append(FP16x16 { mag: 19375, sign: false });
a.append(FP16x16 { mag: 10348, sign: true });
a.append(FP16x16 { mag: 14116, sign: false });
a.append(FP16x16 { mag: 12883, sign: false });
a.append(FP16x16 { mag: 16945, sign: false });
a.append(FP16x16 { mag: 27145, sign: false });
a.append(FP16x16 { mag: 9410, sign: false });
a.append(FP16x16 { mag: 22129, sign: false });
a.append(FP16x16 { mag: 19109, sign: false });
a.append(FP16x16 { mag: 9975, sign: false });
a.append(FP16x16 { mag: 4440, sign: false });
a.append(FP16x16 { mag: 12493, sign: false });
}