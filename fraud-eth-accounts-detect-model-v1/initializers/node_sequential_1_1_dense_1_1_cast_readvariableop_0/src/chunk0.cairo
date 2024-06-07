use orion::numbers::{FixedTrait, FP16x16};

fn compute(ref a: Array<FP16x16>) {
a.append(FP16x16 { mag: 195684, sign: false });
a.append(FP16x16 { mag: 21834, sign: true });
a.append(FP16x16 { mag: 161607, sign: true });
a.append(FP16x16 { mag: 587167, sign: false });
a.append(FP16x16 { mag: 8662, sign: true });
a.append(FP16x16 { mag: 198948, sign: true });
a.append(FP16x16 { mag: 117729, sign: true });
a.append(FP16x16 { mag: 244872, sign: false });
a.append(FP16x16 { mag: 33919, sign: true });
a.append(FP16x16 { mag: 394259, sign: true });
a.append(FP16x16 { mag: 267837, sign: true });
a.append(FP16x16 { mag: 203169, sign: false });
}