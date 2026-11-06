package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class OS implements InterfaceC2191bV {
    public final List<C2249cR> A00;
    public final long[] A01;
    public final long[] A02;

    /* JADX WARN: Incorrect condition in loop: B:4:0x001d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public OS(java.util.List<com.facebook.ads.redexgen.X.C2249cR> r8) {
        /*
            r7 = this;
            r7.<init>()
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>(r8)
            java.util.List r0 = java.util.Collections.unmodifiableList(r0)
            r7.A00 = r0
            int r0 = r8.size()
            int r0 = r0 * 2
            long[] r0 = new long[r0]
            r7.A01 = r0
            r6 = 0
        L19:
            int r0 = r8.size()
            if (r6 >= r0) goto L38
            java.lang.Object r5 = r8.get(r6)
            com.facebook.ads.redexgen.X.cR r5 = (com.facebook.ads.redexgen.X.C2249cR) r5
            int r4 = r6 * 2
            long[] r2 = r7.A01
            long r0 = r5.A01
            r2[r4] = r0
            long[] r3 = r7.A01
            int r2 = r4 + 1
            long r0 = r5.A00
            r3[r2] = r0
            int r6 = r6 + 1
            goto L19
        L38:
            long[] r1 = r7.A01
            long[] r0 = r7.A01
            int r0 = r0.length
            long[] r0 = java.util.Arrays.copyOf(r1, r0)
            r7.A02 = r0
            long[] r0 = r7.A02
            java.util.Arrays.sort(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.OS.<init>(java.util.List):void");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2191bV
    public final List<C1936Th> A88(long j) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < this.A00.size(); i++) {
            if (this.A01[i * 2] <= j && j < this.A01[(i * 2) + 1]) {
                C2249cR c2249cR = this.A00.get(i);
                if (c2249cR.A02.A01 == -3.4028235E38f) {
                    arrayList2.add(c2249cR);
                } else {
                    arrayList.add(c2249cR.A02);
                }
            }
        }
        Collections.sort(arrayList2, new Comparator() { // from class: com.facebook.ads.redexgen.X.cb
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Long.compare(((C2249cR) obj).A01, ((C2249cR) obj2).A01);
            }
        });
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            arrayList.add(((C2249cR) arrayList2.get(i2)).A02.A02().A07((-1) - i2, 1).A0H());
        }
        return arrayList;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2191bV
    public final long A8e(int i) {
        boolean z = true;
        AbstractC1747Ln.A07(i >= 0);
        if (i >= this.A02.length) {
            z = false;
        }
        AbstractC1747Ln.A07(z);
        return this.A02[i];
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2191bV
    public final int A8f() {
        return this.A02.length;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2191bV
    public final int A9D(long j) {
        int iA0K = N1.A0K(this.A02, j, false, false);
        int index = this.A02.length;
        if (iA0K < index) {
            return iA0K;
        }
        return -1;
    }
}
