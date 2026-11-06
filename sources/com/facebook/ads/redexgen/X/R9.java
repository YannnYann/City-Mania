package com.facebook.ads.redexgen.X;

import android.util.Pair;
import com.facebook.ads.androidx.media3.common.Timeline;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class R9 extends AbstractC2008Wi {
    public C2001Wa A00;

    public abstract Pair<C1839Ph[], RA[]> A0d(C2001Wa c2001Wa, int[][][] iArr, int[] iArr2, C1887Rk c1887Rk, Timeline timeline) throws AnonymousClass96;

    /* JADX WARN: Incorrect condition in loop: B:4:0x0005 */
    /* JADX WARN: Incorrect condition in loop: B:7:0x000d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int A0Y(com.facebook.ads.redexgen.X.InterfaceC1838Pe[] r8, com.facebook.ads.redexgen.X.U8 r9, int[] r10, boolean r11) throws com.facebook.ads.redexgen.X.AnonymousClass96 {
        /*
            int r6 = r8.length
            r5 = 0
            r7 = 1
            r4 = 0
        L4:
            int r0 = r8.length
            if (r4 >= r0) goto L39
            r3 = r8[r4]
            r2 = 0
            r1 = 0
        Lb:
            int r0 = r9.A01
            if (r1 >= r0) goto L22
            com.facebook.ads.redexgen.X.VC r0 = r9.A08(r1)
            int r0 = r3.ALf(r0)
            int r0 = com.facebook.ads.redexgen.X.PX.A03(r0)
            int r2 = java.lang.Math.max(r2, r0)
            int r1 = r1 + 1
            goto Lb
        L22:
            r0 = r10[r4]
            if (r0 != 0) goto L37
            r0 = 1
        L27:
            if (r2 > r5) goto L31
            if (r2 != r5) goto L34
            if (r11 == 0) goto L34
            if (r7 != 0) goto L34
            if (r0 == 0) goto L34
        L31:
            r6 = r4
            r5 = r2
            r7 = r0
        L34:
            int r4 = r4 + 1
            goto L4
        L37:
            r0 = 0
            goto L27
        L39:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.R9.A0Y(com.facebook.ads.redexgen.X.Pe[], com.facebook.ads.redexgen.X.U8, int[], boolean):int");
    }

    public static int[] A0Z(InterfaceC1838Pe interfaceC1838Pe, U8 u8) throws AnonymousClass96 {
        int[] iArr = new int[u8.A01];
        for (int i = 0; i < u8.A01; i++) {
            iArr[i] = interfaceC1838Pe.ALf(u8.A08(i));
        }
        return iArr;
    }

    public static int[] A0a(InterfaceC1838Pe[] interfaceC1838PeArr) throws AnonymousClass96 {
        int[] iArr = new int[interfaceC1838PeArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = interfaceC1838PeArr[i].ALh();
        }
        return iArr;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2008Wi
    public final C2009Wj A0b(InterfaceC1838Pe[] interfaceC1838PeArr, RY ry, C1887Rk c1887Rk, Timeline timeline) throws AnonymousClass96 {
        int[] iArrA0Z;
        int[] iArr = new int[interfaceC1838PeArr.length + 1];
        U8[][] u8Arr = new U8[interfaceC1838PeArr.length + 1][];
        int[][][] iArr2 = new int[interfaceC1838PeArr.length + 1][][];
        for (int i = 0; i < u8Arr.length; i++) {
            u8Arr[i] = new U8[ry.A01];
            iArr2[i] = new int[ry.A01][];
        }
        int[] iArrA0a = A0a(interfaceC1838PeArr);
        for (int i2 = 0; i2 < ry.A01; i2++) {
            U8 u8A05 = ry.A05(i2);
            int groupIndex = A0Y(interfaceC1838PeArr, u8A05, iArr, u8A05.A02 == 5);
            if (groupIndex == interfaceC1838PeArr.length) {
                iArrA0Z = new int[u8A05.A01];
            } else {
                iArrA0Z = A0Z(interfaceC1838PeArr[groupIndex], u8A05);
            }
            int i3 = iArr[groupIndex];
            u8Arr[groupIndex][i3] = u8A05;
            iArr2[groupIndex][i3] = iArrA0Z;
            iArr[groupIndex] = iArr[groupIndex] + 1;
        }
        RY[] ryArr = new RY[interfaceC1838PeArr.length];
        String[] strArr = new String[interfaceC1838PeArr.length];
        int[] iArr3 = new int[interfaceC1838PeArr.length];
        for (int i4 = 0; i4 < interfaceC1838PeArr.length; i4++) {
            int i5 = iArr[i4];
            ryArr[i4] = new RY((U8[]) N1.A1I(u8Arr[i4], i5));
            iArr2[i4] = (int[][]) N1.A1I(iArr2[i4], i5);
            strArr[i4] = interfaceC1838PeArr[i4].getName();
            iArr3[i4] = interfaceC1838PeArr[i4].AA0();
        }
        C2001Wa c2001Wa = new C2001Wa(strArr, iArr3, ryArr, iArrA0a, iArr2, new RY((U8[]) N1.A1I(u8Arr[interfaceC1838PeArr.length], iArr[interfaceC1838PeArr.length])));
        Pair<C1839Ph[], RA[]> pairA0d = A0d(c2001Wa, iArr2, iArrA0a, c1887Rk, timeline);
        return new C2009Wj((C1839Ph[]) pairA0d.first, (RA[]) pairA0d.second, AbstractC2005Wf.A00(c2001Wa, (InterfaceC2003Wc[]) pairA0d.second), c2001Wa);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2008Wi
    public final void A0c(Object obj) {
        this.A00 = (C2001Wa) obj;
    }
}
