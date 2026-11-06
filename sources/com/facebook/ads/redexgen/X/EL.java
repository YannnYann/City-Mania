package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class EL implements InterfaceC3419va {
    public static byte[] A01;
    public static String[] A02 = {"l0xk5w0SVxXUr9nW65hoR123JEdRmzl5", "TYQOdbYkKEjvx0Xtiu6MXet0lYEwTh8W", "kPcWfh3XDspVZTILh2s3sdDa8325pHcu", "8Q4vC66VLOErVbGrt", "lQEsWNKl6Ne29IedZ2wSYIqnHknigywW", "RhBGncBhH8rRV8h1fmVe8pmsUKLcBX53", "K", "23iAyGscovhy5rsOMvPB5IYbQPfkYkHH"};
    public final /* synthetic */ EE A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 119);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{53, 51, 37, 50, 31, 46, 33, 54, 41, 39, 33, 52, 41, 47, 46, 31, 41, 33, 34};
    }

    static {
        A01();
    }

    public EL(EE ee) {
        this.A00 = ee;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3419va
    public final void AEL() {
        this.A00.A0p.A00(this.A00.A0g);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3419va
    public final void AEM() {
        this.A00.A0p.A01(this.A00.A0g);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3419va
    public final void AG5() {
        this.A00.A0U = false;
        if (this.A00.A0C != null) {
            this.A00.A0C.setProgress(100);
        }
        AbstractC3111qc.A0P(this.A00.A0C, 8);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3419va
    public final void AGE(String str) {
        this.A00.A0U = true;
        AbstractC3111qc.A0P(this.A00.A0C, 0);
        if (this.A00.A0B != null) {
            this.A00.A0B.setUrl(str);
        }
        EE ee = this.A00;
        if (A02[0].charAt(6) != '0') {
            throw new RuntimeException();
        }
        A02[0] = "OkaYWs0lzotGebFzgpaLwllpV4Kjrb2y";
        if (!ee.A0Q && this.A00.A02 > 1) {
            this.A00.A0Q = true;
            this.A00.A0w(A00(0, 19, 73));
        }
        EE.A02(this.A00);
    }
}
