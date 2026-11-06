package ads_mobile_sdk;

import java.util.ArrayDeque;
import java.util.Optional;

/* JADX INFO: loaded from: classes.dex */
public final class z34 {
    public final ArrayDeque a;

    public final void a(long j, long j2, long j3) {
        int[] iArr = {1857962504, 67802545, 822753858, 1178641841, 1658857550, -1514359837, 393474692, 1520223205, 452867621};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int iA = p30.a((i2 & (~i)) | i3, (i & i4) | i5, iArr[5], iArr[6]) ^ (iArr[7] % iArr[8]);
        w34 w34Var = new w34(j, j2, j3);
        ArrayDeque arrayDeque = this.a;
        if (arrayDeque.size() >= iA) {
            throw new x34();
        }
        arrayDeque.push(w34Var);
    }

    public z34() {
        int[] iArr = {114723506, 151129280, 1368781114, 134385090, 816173334, -1981646764, 34563124, 1737518944, 282828202};
        int i = iArr[7] % iArr[8];
        this.a = new ArrayDeque();
    }

    public final w34 a() {
        return (w34) Optional.ofNullable((w34) this.a.peek()).orElseThrow(v34.b);
    }
}
