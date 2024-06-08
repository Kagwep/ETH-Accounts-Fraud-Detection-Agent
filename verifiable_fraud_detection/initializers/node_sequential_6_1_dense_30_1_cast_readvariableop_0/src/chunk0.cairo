use orion::numbers::{FixedTrait, FP16x16};

fn compute(ref a: Array<FP16x16>) {
a.append(FP16x16 { mag: 71418, sign: true });
a.append(FP16x16 { mag: 100868, sign: true });
a.append(FP16x16 { mag: 74239, sign: true });
a.append(FP16x16 { mag: 110523, sign: false });
a.append(FP16x16 { mag: 159377, sign: false });
a.append(FP16x16 { mag: 12642, sign: false });
a.append(FP16x16 { mag: 155992, sign: true });
a.append(FP16x16 { mag: 58447, sign: true });
a.append(FP16x16 { mag: 101191, sign: false });
a.append(FP16x16 { mag: 183229, sign: false });
a.append(FP16x16 { mag: 84794, sign: true });
a.append(FP16x16 { mag: 176291, sign: false });
a.append(FP16x16 { mag: 104329, sign: true });
a.append(FP16x16 { mag: 122725, sign: false });
a.append(FP16x16 { mag: 90521, sign: true });
a.append(FP16x16 { mag: 109688, sign: false });
}