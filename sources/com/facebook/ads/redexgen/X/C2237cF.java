package com.facebook.ads.redexgen.X;

import android.text.Layout;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.cF, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2237cF {
    public static byte[] A0J;
    public static String[] A0K = {"GXKgEWfHvG7", "GqbyvuJGG2MKM5jnqtiNiJAasHHmqFT9", "lPYLPsU2I0JSxgwheh3ik", "2nmNY1piJTFydJJKWeHf6tV21yZ5RpcT", "tKePLQ4mCbBKoYGrN92L9PVA35GsWYPs", "TaDh8u46Xc3SRCZW6ZVVRJltgL2Rqqh0", "GuPetQpVTDou938KQIEGIzuV91PeTIB9", "q0urYbenhW9dsivG3Xt9PT50M1"};
    public float A00;
    public int A02;
    public int A04;
    public Layout.Alignment A0C;
    public Layout.Alignment A0D;
    public C2226c4 A0E;
    public String A0F;
    public String A0G;
    public boolean A0H;
    public boolean A0I;
    public int A07 = -1;
    public int A0B = -1;
    public int A03 = -1;
    public int A06 = -1;
    public int A05 = -1;
    public int A09 = -1;
    public int A08 = -1;
    public int A0A = -1;
    public float A01 = Float.MAX_VALUE;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0J, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 54);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A0J = new byte[]{-14, 17, 19, 27, 23, 34, 31, 37, 30, 20, -48, 19, 31, 28, 31, 34, -48, 24, 17, 35, -48, 30, 31, 36, -48, 18, 21, 21, 30, -48, 20, 21, 22, 25, 30, 21, 20, -34, -36, 5, 4, 10, -74, -7, 5, 2, 5, 8, -74, -2, -9, 9, -74, 4, 5, 10, -74, -8, -5, -5, 4, -74, -6, -5, -4, -1, 4, -5, -6, -60};
    }

    static {
        A02();
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0130  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.facebook.ads.redexgen.X.C2237cF A00(com.facebook.ads.redexgen.X.C2237cF r6, boolean r7) {
        /*
            Method dump skipped, instruction units count: 346
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2237cF.A00(com.facebook.ads.redexgen.X.cF, boolean):com.facebook.ads.redexgen.X.cF");
    }

    public final float A03() {
        return this.A00;
    }

    public final float A04() {
        return this.A01;
    }

    public final int A05() {
        if (this.A0H) {
            return this.A02;
        }
        throw new IllegalStateException(A01(0, 38, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE));
    }

    public final int A06() {
        if (this.A0I) {
            return this.A04;
        }
        throw new IllegalStateException(A01(38, 32, 96));
    }

    public final int A07() {
        return this.A05;
    }

    public final int A08() {
        return this.A08;
    }

    public final int A09() {
        return this.A09;
    }

    public final int A0A() {
        if (this.A03 == -1 && this.A06 == -1) {
            return -1;
        }
        return (this.A03 == 1 ? 1 : 0) | (this.A06 == 1 ? 2 : 0);
    }

    public final Layout.Alignment A0B() {
        return this.A0C;
    }

    public final Layout.Alignment A0C() {
        return this.A0D;
    }

    public final C2226c4 A0D() {
        return this.A0E;
    }

    public final C2237cF A0E(float f) {
        this.A00 = f;
        return this;
    }

    public final C2237cF A0F(float f) {
        this.A01 = f;
        return this;
    }

    public final C2237cF A0G(int i) {
        this.A02 = i;
        this.A0H = true;
        return this;
    }

    public final C2237cF A0H(int i) {
        this.A04 = i;
        this.A0I = true;
        return this;
    }

    public final C2237cF A0I(int i) {
        this.A05 = i;
        return this;
    }

    public final C2237cF A0J(int i) {
        this.A08 = i;
        return this;
    }

    public final C2237cF A0K(int i) {
        this.A09 = i;
        return this;
    }

    public final C2237cF A0L(Layout.Alignment alignment) {
        this.A0C = alignment;
        return this;
    }

    public final C2237cF A0M(Layout.Alignment alignment) {
        this.A0D = alignment;
        return this;
    }

    public final C2237cF A0N(C2226c4 c2226c4) {
        this.A0E = c2226c4;
        return this;
    }

    public final C2237cF A0O(C2237cF c2237cF) {
        return A00(c2237cF, true);
    }

    public final C2237cF A0P(String str) {
        this.A0F = str;
        return this;
    }

    public final C2237cF A0Q(String str) {
        this.A0G = str;
        return this;
    }

    public final C2237cF A0R(boolean z) {
        this.A03 = z ? 1 : 0;
        return this;
    }

    public final C2237cF A0S(boolean z) {
        this.A06 = z ? 1 : 0;
        return this;
    }

    public final C2237cF A0T(boolean z) {
        this.A07 = z ? 1 : 0;
        return this;
    }

    public final C2237cF A0U(boolean z) {
        this.A0A = z ? 1 : 0;
        return this;
    }

    public final C2237cF A0V(boolean z) {
        this.A0B = z ? 1 : 0;
        return this;
    }

    public final String A0W() {
        return this.A0F;
    }

    public final String A0X() {
        return this.A0G;
    }

    public final boolean A0Y() {
        return this.A0A == 1;
    }

    public final boolean A0Z() {
        return this.A0H;
    }

    public final boolean A0a() {
        return this.A0I;
    }

    public final boolean A0b() {
        return this.A07 == 1;
    }

    public final boolean A0c() {
        return this.A0B == 1;
    }
}
