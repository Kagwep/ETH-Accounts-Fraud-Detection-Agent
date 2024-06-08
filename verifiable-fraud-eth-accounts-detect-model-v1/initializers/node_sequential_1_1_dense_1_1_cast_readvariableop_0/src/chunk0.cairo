use orion::numbers::{FixedTrait, FP16x16};

fn compute(ref a: Array<FP16x16>) {
a.append(FP16x16 { mag: 196573, sign: false });
a.append(FP16x16 { mag: 22234, sign: true });
a.append(FP16x16 { mag: 159222, sign: true });
a.append(FP16x16 { mag: 595619, sign: false });
a.append(FP16x16 { mag: 1283, sign: true });
a.append(FP16x16 { mag: 193665, sign: true });
a.append(FP16x16 { mag: 169479, sign: true });
a.append(FP16x16 { mag: 233994, sign: false });
a.append(FP16x16 { mag: 8909, sign: false });
a.append(FP16x16 { mag: 410073, sign: true });
a.append(FP16x16 { mag: 267911, sign: true });
a.append(FP16x16 { mag: 210159, sign: false });
}