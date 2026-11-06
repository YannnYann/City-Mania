package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.Display;
import android.view.Surface;
import com.unity3d.services.UnityAdsConstants;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Xt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2042Xt {
    public static byte[] A0H;
    public static String[] A0I = {"BzLKQQ", "guNn4XOOW", "b9w3CcJrwRYV3Oz", "wd8Hk9qLNJn0OjQYML8X63zOsnNqMpnw", "umQHBaYWHJZxZCc03wqCrfWuD9SSkSxi", "H3jhFFtl3PzCs87aHmgD041Jj37jQndb", "mikd7C", "WcCovW5StnGUjNK"};
    public float A00;
    public float A01;
    public float A02;
    public float A03;
    public int A04;
    public long A05;
    public long A06;
    public long A07;
    public long A08;
    public long A09;
    public long A0A;
    public long A0B;
    public Surface A0C;
    public boolean A0D;
    public final XX A0E = new XX();
    public final InterfaceC2041Xr A0F;
    public final Xs A0G;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0H, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = (bArrCopyOfRange[i4] ^ i3) ^ 41;
            if (A0I[1].length() == 30) {
                throw new RuntimeException();
            }
            A0I[1] = "UKxZjkR03Jhkaya7oCbDQ8QeVY7uj";
            bArrCopyOfRange[i4] = (byte) i5;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        byte[] bArr = {35, 24, 23, 20, 26, 19, 86, 2, 25, 86, 7, 3, 19, 4, 15, 86, 18, 31, 5, 6, 26, 23, 15, 86, 4, 19, 16, 4, 19, 5, 30, 86, 4, 23, 2, 19, 33, 30, 19, 18, 24, 49, 5, 22, 26, 18, 37, 18, 27, 18, 22, 4, 18, 63, 18, 27, 7, 18, 5};
        String[] strArr = A0I;
        if (strArr[0].length() != strArr[6].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0I;
        strArr2[7] = "FoorzRSe6KZh8Hr";
        strArr2[2] = "jbAKEo2D1cc5L0i";
        A0H = bArr;
    }

    static {
        A06();
    }

    public C2042Xt(Context context) {
        this.A0F = A01(context);
        this.A0G = this.A0F != null ? Xs.A00() : null;
        this.A0A = -9223372036854775807L;
        this.A0B = -9223372036854775807L;
        this.A00 = -1.0f;
        this.A01 = 1.0f;
        this.A04 = 0;
    }

    public static long A00(long j, long j2, long j3) {
        long j4;
        long vsyncCount = j3 * ((j - j2) / j3);
        long j5 = j2 + vsyncCount;
        if (j <= j5) {
            j4 = j5 - j3;
        } else {
            j4 = j5;
            j5 += j3;
        }
        return j5 - j < j - j4 ? j5 : j4;
    }

    public static InterfaceC2041Xr A01(Context context) {
        QM qmA01 = null;
        if (context == null) {
            return null;
        }
        Context applicationContext = context.getApplicationContext();
        if (N1.A02 >= 17) {
            qmA01 = QM.A01(applicationContext);
        }
        if (qmA01 == null) {
            return QQ.A00(applicationContext);
        }
        return qmA01;
    }

    private void A03() {
        if (N1.A02 < 30 || this.A0C == null || this.A04 == Integer.MIN_VALUE || this.A03 == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            return;
        }
        this.A03 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        C2039Xp.A02(this.A0C, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    }

    private void A04() {
        this.A05 = 0L;
        this.A06 = -1L;
        this.A08 = -1L;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0084  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A05() {
        /*
            r9 = this;
            int r0 = com.facebook.ads.redexgen.X.N1.A02
            r5 = 30
            if (r0 < r5) goto La
            android.view.Surface r0 = r9.A0C
            if (r0 != 0) goto Lb
        La:
            return
        Lb:
            com.facebook.ads.redexgen.X.XX r0 = r9.A0E
            boolean r0 = r0.A06()
            if (r0 == 0) goto L20
            com.facebook.ads.redexgen.X.XX r0 = r9.A0E
            float r4 = r0.A00()
        L19:
            float r0 = r9.A02
            int r0 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r0 != 0) goto L23
            return
        L20:
            float r4 = r9.A00
            goto L19
        L23:
            r8 = 1
            r7 = -1082130432(0xffffffffbf800000, float:-1.0)
            r3 = 0
            int r0 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r0 == 0) goto L84
            float r6 = r9.A02
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C2042Xt.A0I
            r0 = 5
            r1 = r1[r0]
            r0 = 23
            char r1 = r1.charAt(r0)
            r0 = 79
            if (r1 == r0) goto L95
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C2042Xt.A0I
            java.lang.String r1 = "eyz1CaOdqZIe0D4"
            r0 = 7
            r2[r0] = r1
            java.lang.String r1 = "8Zi8iCi2C1YNOse"
            r0 = 2
            r2[r0] = r1
            int r0 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1))
            if (r0 == 0) goto L84
            com.facebook.ads.redexgen.X.XX r0 = r9.A0E
            boolean r0 = r0.A06()
            if (r0 == 0) goto L82
            com.facebook.ads.redexgen.X.XX r0 = r9.A0E
            long r5 = r0.A03()
            r1 = 5000000000(0x12a05f200, double:2.470328229E-314)
            int r0 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
            if (r0 < 0) goto L82
            r0 = 1
        L64:
            if (r0 == 0) goto L7f
            r1 = 1017370378(0x3ca3d70a, float:0.02)
        L69:
            float r0 = r9.A02
            float r0 = r4 - r0
            float r0 = java.lang.Math.abs(r0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L7d
        L75:
            if (r8 == 0) goto L7c
            r9.A02 = r4
            r9.A09(r3)
        L7c:
            return
        L7d:
            r8 = 0
            goto L75
        L7f:
            r1 = 1065353216(0x3f800000, float:1.0)
            goto L69
        L82:
            r0 = 0
            goto L64
        L84:
            int r0 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r0 == 0) goto L8a
            r8 = 1
            goto L75
        L8a:
            com.facebook.ads.redexgen.X.XX r0 = r9.A0E
            int r0 = r0.A01()
            if (r0 < r5) goto L93
            goto L75
        L93:
            r8 = 0
            goto L75
        L95:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2042Xt.A05():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A07(Display display) {
        if (display != null) {
            double defaultDisplayRefreshRate = display.getRefreshRate();
            this.A0A = (long) (1.0E9d / defaultDisplayRefreshRate);
            this.A0B = (this.A0A * 80) / 100;
        } else {
            MV.A07(A02(36, 23, 94), A02(0, 36, 95));
            this.A0A = -9223372036854775807L;
            this.A0B = -9223372036854775807L;
        }
    }

    private void A09(boolean z) {
        if (N1.A02 < 30 || this.A0C == null || this.A04 == Integer.MIN_VALUE) {
            return;
        }
        float f = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        if (this.A0D && this.A02 != -1.0f) {
            float f2 = this.A02;
            float surfacePlaybackFrameRate = this.A01;
            f = f2 * surfacePlaybackFrameRate;
        }
        if (!z) {
            float surfacePlaybackFrameRate2 = this.A03;
            if (surfacePlaybackFrameRate2 == f) {
                return;
            }
        }
        this.A03 = f;
        C2039Xp.A02(this.A0C, f);
    }

    public static boolean A0A(long j, long j2) {
        return Math.abs(j - j2) <= 20000000;
    }

    public final long A0B(long j) {
        long j2 = j;
        if (this.A06 != -1 && this.A0E.A06()) {
            long jA02 = this.A0E.A02();
            long frameDurationNs = this.A07;
            long j3 = this.A05;
            long adjustedReleaseTimeNs = this.A06;
            long frameDurationNs2 = frameDurationNs + ((long) (((j3 - adjustedReleaseTimeNs) * jA02) / this.A01));
            if (A0A(j2, frameDurationNs2)) {
                j2 = frameDurationNs2;
            } else {
                A04();
            }
        }
        long adjustedReleaseTimeNs2 = this.A05;
        this.A08 = adjustedReleaseTimeNs2;
        this.A09 = j2;
        if (this.A0G == null || this.A0A == -9223372036854775807L) {
            return j2;
        }
        long j4 = this.A0G.A04;
        if (j4 == -9223372036854775807L) {
            return j2;
        }
        long sampledVsyncTimeNs = A00(j2, j4, this.A0A);
        long adjustedReleaseTimeNs3 = this.A0B;
        return sampledVsyncTimeNs - adjustedReleaseTimeNs3;
    }

    public final void A0C() {
        A04();
    }

    public final void A0D() {
        this.A0D = true;
        A04();
        if (this.A0F != null) {
            ((Xs) AbstractC1747Ln.A01(this.A0G)).A06();
            this.A0F.AIl(new InterfaceC2040Xq() { // from class: com.facebook.ads.redexgen.X.QX
                @Override // com.facebook.ads.redexgen.X.InterfaceC2040Xq
                public final void AEe(Display display) {
                    this.A00.A07(display);
                }
            });
        }
        A09(false);
        String[] strArr = A0I;
        if (strArr[4].charAt(3) != strArr[3].charAt(3)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0I;
        strArr2[0] = "wtXM97";
        strArr2[6] = "MWrhmJ";
    }

    public final void A0E() {
        this.A0D = false;
        if (this.A0F != null) {
            this.A0F.ALq();
            Xs xs = this.A0G;
            if (A0I[5].charAt(23) == 'O') {
                throw new RuntimeException();
            }
            A0I[1] = "5eJpeM";
            ((Xs) AbstractC1747Ln.A01(xs)).A07();
        }
        A03();
    }

    public final void A0F(float f) {
        this.A00 = f;
        this.A0E.A04();
        A05();
    }

    public final void A0G(long j) {
        if (this.A08 != -1) {
            this.A06 = this.A08;
            this.A07 = this.A09;
        }
        this.A05++;
        this.A0E.A05(1000 * j);
        A05();
    }
}
