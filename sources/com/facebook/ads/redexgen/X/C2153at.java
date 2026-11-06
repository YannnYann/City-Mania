package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.DrmInitData;
import com.vungle.ads.internal.protos.Sdk;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.at, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2153at {
    public static String[] A0A = {"hn1FHZJnLh3thuxxKEIhZTqnlh5aWEbw", "qDjh889adJz1MC", "vY3CRqHO1bVmmLT8Hq7gqQ8FFHoNB", "cMHnnSo25D50Rxc59rDVSvzIsgO5hE1C", "TK2vIC7x9g9unoc", "GEWgj", "ZHEG6A7QvYcS4oy88WRiW8fDIFxtCxmZ", "QYDDDh5QI"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public C2147an A04;
    public C2170bA A05;
    public final ZP A06;
    public final C2172bC A07 = new C2172bC();
    public final C1769Mk A09 = new C1769Mk(1);
    public final C1769Mk A08 = new C1769Mk();

    public C2153at(ZP zp) {
        this.A06 = zp;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C2171bB A00() {
        C2171bB c2171bBA00;
        int i = this.A07.A06.A02;
        if (this.A07.A07 != null) {
            c2171bBA00 = this.A07.A07;
        } else {
            c2171bBA00 = this.A05.A00(i);
        }
        if (c2171bBA00 != null) {
            boolean z = c2171bBA00.A03;
            String[] strArr = A0A;
            String str = strArr[1];
            String str2 = strArr[4];
            int length = str.length();
            int sampleDescriptionIndex = str2.length();
            if (length == sampleDescriptionIndex) {
                throw new RuntimeException();
            }
            A0A[6] = "M7WQN7echjzu5PJ9kXxaPiCmmnvjA1W3";
            if (z) {
                return c2171bBA00;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A02() {
        C2171bB c2171bBA00 = A00();
        if (c2171bBA00 == null) {
            return;
        }
        C2172bC c2172bC = this.A07;
        if (A0A[3].charAt(17) != 'r') {
            throw new RuntimeException();
        }
        A0A[6] = "2xb7HPeFQWra9WDOakKd0dOCmGEctuq2";
        C1769Mk sampleEncryptionData = c2172bC.A0H;
        if (c2171bBA00.A00 != 0) {
            sampleEncryptionData.A0g(c2171bBA00.A00);
        }
        if (this.A07.A06(this.A01)) {
            sampleEncryptionData.A0g(sampleEncryptionData.A0M() * 6);
        }
    }

    public final int A04() {
        C1769Mk c1769Mk;
        int vectorSize;
        C2171bB c2171bBA00 = A00();
        if (c2171bBA00 == null) {
            return 0;
        }
        if (c2171bBA00.A00 != 0) {
            c1769Mk = this.A07.A0H;
            vectorSize = c2171bBA00.A00;
        } else {
            byte[] initVectorData = c2171bBA00.A04;
            this.A08.A0j(initVectorData, initVectorData.length);
            c1769Mk = this.A08;
            vectorSize = initVectorData.length;
        }
        boolean zA06 = this.A07.A06(this.A01);
        this.A09.A00[0] = (byte) ((zA06 ? Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE : 0) | vectorSize);
        this.A09.A0f(0);
        ZP zp = this.A06;
        C1769Mk initializationVectorData = this.A09;
        zp.AK9(initializationVectorData, 1);
        this.A06.AK9(c1769Mk, vectorSize);
        if (!zA06) {
            return vectorSize + 1;
        }
        C1769Mk c1769Mk2 = this.A07.A0H;
        int iA0M = c1769Mk2.A0M();
        c1769Mk2.A0g(-2);
        int i = (iA0M * 6) + 2;
        this.A06.AK9(c1769Mk2, i);
        return vectorSize + 1 + i;
    }

    public final void A05() {
        this.A07.A01();
        this.A01 = 0;
        this.A02 = 0;
        this.A00 = 0;
        this.A03 = 0;
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0006 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A06(long r6) {
        /*
            r5 = this;
            int r3 = r5.A01
        L2:
            com.facebook.ads.redexgen.X.bC r0 = r5.A07
            int r0 = r0.A00
            if (r3 >= r0) goto L40
            com.facebook.ads.redexgen.X.bC r0 = r5.A07
            long r1 = r0.A00(r3)
            int r0 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1))
            if (r0 >= 0) goto L40
            com.facebook.ads.redexgen.X.bC r4 = r5.A07
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C2153at.A0A
            r0 = 6
            r1 = r1[r0]
            r0 = 17
            char r1 = r1.charAt(r0)
            r0 = 97
            if (r1 == r0) goto L3a
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C2153at.A0A
            java.lang.String r1 = "UiDsF"
            r0 = 5
            r2[r0] = r1
            java.lang.String r1 = "D9RX4x7Ey"
            r0 = 7
            r2[r0] = r1
            boolean[] r0 = r4.A0G
            boolean r0 = r0[r3]
            if (r0 == 0) goto L37
            r5.A03 = r3
        L37:
            int r3 = r3 + 1
            goto L2
        L3a:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L40:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2153at.A06(long):void");
    }

    public final void A07(DrmInitData drmInitData) {
        C2171bB encryptionBox = this.A05.A00(this.A07.A06.A02);
        this.A06.A7E(this.A05.A07.A09(drmInitData.A01(encryptionBox != null ? encryptionBox.A02 : null)));
    }

    public final void A08(C2170bA c2170bA, C2147an c2147an) {
        this.A05 = (C2170bA) AbstractC1747Ln.A01(c2170bA);
        this.A04 = (C2147an) AbstractC1747Ln.A01(c2147an);
        this.A06.A7E(c2170bA.A07);
        A05();
    }

    public final boolean A09() {
        this.A01++;
        this.A00++;
        if (this.A00 != this.A07.A0C[this.A02]) {
            return true;
        }
        this.A02++;
        this.A00 = 0;
        return false;
    }
}
