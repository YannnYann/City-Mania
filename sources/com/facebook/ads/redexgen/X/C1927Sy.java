package com.facebook.ads.redexgen.X;

import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Sy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1927Sy implements InterfaceC1830Ot {
    public static byte[] A0B;
    public static String[] A0C = {"kvahaK37sOLnwDFfnOq", "yZiP5AqEmO3k8TpmKVl1XQGPiKhYSM5M", "usGSJ69btV8Dv3r63jGUdww58XzHzZNc", "PEe7f5oEsPqgmkqAoWPr4r6sZlN4UajI", "zLihgrkWdioASsyIDxoPFW0ZjEXFNEN1", "p8JA1b5BgUenvR679b2QNCJit85cgwQI", "8fuK5eu37ZxpjsMbzziryDXsxDUjrwpe", "YOCU2QMTUAa74todh04RrzV4YhGHcz55"};
    public int A00;
    public boolean A01;
    public final int A02;
    public final long A03;
    public final long A04;
    public final long A05;
    public final long A06;
    public final long A07;
    public final C1874Qx A08;
    public final boolean A09;
    public final boolean A0A;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ Sdk.SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A0B = new byte[]{101, 38, 36, 43, 43, 42, 49, 101, 39, 32, 101, 41, 32, 54, 54, 101, 49, 45, 36, 43, 101, 40, 38, 7, 4, 3, 23, 14, 22, 46, 13, 3, 6, 33, 13, 12, 22, 16, 13, 14, 60, 9, 26, 15, 13, 28, 72, 10, 29, 14, 14, 13, 26, 72, 27, 1, 18, 13, 72, 26, 13, 9, 11, 0, 13, 12, 72, 31, 1, 28, 0, 72, 4, 13, 27, 27, 72, 28, 0, 9, 6, 72, 93, 88, 88, 5, 27, 72, 7, 14, 72, 10, 29, 14, 14, 13, 26, 13, 12, 72, 5, 13, 12, 1, 9, 72, 12, 9, 28, 9, 70, 125, 126, 124, 116, 93, 106, 121, 121, 122, 109, 91, 106, 109, 126, 107, 118, 112, 113, 82, 108, 26, 13, 30, 30, 29, 10, 62, 23, 10, 40, 20, 25, 1, 26, 25, 27, 19, 57, 30, 12, 29, 10, 42, 29, 26, 13, 30, 30, 29, 10, 53, 11, 64, 87, 68, 68, 71, 80, 100, 77, 80, 114, 78, 67, 91, 64, 67, 65, 73, 111, 81, 77, 65, 88, 98, 85, 70, 70, 69, 82, 109, 83, 98, 102, 97, 77, 122, 105, 105, 106, 125, 66, 124};
    }

    static {
        A03();
    }

    public C1927Sy() {
        this(new C1874Qx(true, 65536), 50000, 50000, UnityAdsConstants.RequestPolicy.RETRY_MAX_INTERVAL, 5000, -1, false, 0, false);
    }

    public C1927Sy(C1874Qx c1874Qx, int i, int i2, int i3, int i4, int i5, boolean z, int i6, boolean z2) {
        int i7;
        String strA02 = A02(163, 19, 95);
        String strA022 = A02(21, 1, 101);
        A04(i3, 0, strA02, strA022);
        String strA023 = A02(Sdk.SDKError.Reason.MRAID_JS_WRITE_FAILED_VALUE, 32, 5);
        A04(i4, 0, strA023, strA022);
        String strA024 = A02(193, 11, Sdk.SDKError.Reason.ASSET_WRITE_ERROR_VALUE);
        A04(i, i3, strA024, strA02);
        A04(i, i4, strA024, strA023);
        A04(i2, i, A02(182, 11, 93), strA024);
        A04(i6, 0, A02(111, 20, 98), strA022);
        this.A08 = c1874Qx;
        this.A07 = N1.A0O(i);
        this.A06 = N1.A0O(i2);
        this.A05 = N1.A0O(i3);
        this.A04 = N1.A0O(i4);
        this.A02 = i5;
        if (this.A02 != -1) {
            i7 = this.A02;
        } else {
            i7 = 13107200;
        }
        this.A00 = i7;
        this.A09 = z;
        this.A03 = N1.A0O(i6);
        this.A0A = z2;
    }

    public static int A00(int i) {
        switch (i) {
            case -2:
                return 0;
            case -1:
            default:
                throw new IllegalArgumentException();
            case 0:
                return 144310272;
            case 1:
                return 13107200;
            case 2:
                return 131072000;
            case 3:
                return 131072;
            case 4:
                return 131072;
            case 5:
                return 131072;
            case 6:
                return 131072;
        }
    }

    private final int A01(RA[] raArr) {
        int iA00 = 0;
        for (RA ra : raArr) {
            if (ra != null) {
                int targetBufferSize = ra.A9y().A02;
                iA00 += A00(targetBufferSize);
            }
        }
        int targetBufferSize2 = Math.max(13107200, iA00);
        return targetBufferSize2;
    }

    public static void A04(int i, int i2, String str, String str2) {
        AbstractC1747Ln.A09(i >= i2, str + A02(0, 21, 56) + str2);
    }

    private void A05(boolean z) {
        int i;
        if (this.A02 == -1) {
            i = 13107200;
        } else {
            i = this.A02;
        }
        this.A00 = i;
        this.A01 = false;
        if (z) {
            this.A08.A01();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1830Ot
    public final C1874Qx A7V() {
        return this.A08;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1830Ot
    public final long A7a(QD qd) {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1830Ot
    public final void AGW(QD qd) {
        A05(false);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1830Ot
    public final void AGj(QD qd) {
        A05(true);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1830Ot
    public final void AHD(QD qd) {
        A05(true);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1830Ot
    public final void AHO(C1829Os c1829Os, RY ry, RA[] raArr) {
        int iA01;
        if (this.A02 == -1) {
            iA01 = A01(raArr);
        } else {
            iA01 = this.A02;
        }
        this.A00 = iA01;
        this.A08.A02(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1830Ot
    public final boolean AK5(QD qd) {
        return this.A0A;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1830Ot
    public final boolean ALD(C1829Os c1829Os) {
        boolean z = true;
        boolean z2 = this.A08.A00() >= this.A00;
        long jMin = this.A07;
        if (c1829Os.A00 > 1.0f) {
            jMin = Math.min(N1.A0Q(jMin, c1829Os.A00), this.A06);
        }
        long jMax = Math.max(jMin, 500000L);
        long minBufferUs = c1829Os.A01;
        if (minBufferUs < jMax) {
            boolean targetBufferSizeReached = this.A09;
            if (!targetBufferSizeReached && z2) {
                z = false;
            }
            this.A01 = z;
            boolean z3 = this.A01;
            if (A0C[0].length() != 19) {
                throw new RuntimeException();
            }
            String[] strArr = A0C;
            strArr[1] = "RPsxz9X2WJlrVCFRvztVCr1gFLsyu0HY";
            strArr[6] = "UfnKhmU3SdsrRgULwhfYF6GPsY2YBSit";
            if (!z3) {
                long minBufferUs2 = c1829Os.A01;
                if (minBufferUs2 < 500000) {
                    if (A0C[0].length() != 19) {
                        throw new RuntimeException();
                    }
                    A0C[5] = "qFHleZoIFEsxwUX876jY3pD2SZwF5bQA";
                    MV.A07(A02(22, 18, 31), A02(40, 71, 21));
                }
            }
        } else if (c1829Os.A01 >= this.A06 || z2) {
            this.A01 = false;
        }
        boolean targetBufferSizeReached2 = this.A01;
        return targetBufferSizeReached2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1830Ot
    public final boolean ALG(long j, float f, boolean z, boolean z2, long j2) {
        long jA0R = N1.A0R(j, f);
        long jMin = z ? this.A04 : this.A05;
        if (j2 != -9223372036854775807L) {
            jMin = Math.min(j2 / 2, jMin);
        }
        if (jMin > 0 && jA0R < jMin) {
            boolean z3 = this.A09;
            String[] strArr = A0C;
            if (strArr[3].charAt(11) != strArr[7].charAt(11)) {
                A0C[5] = "21qilKx7gAUezU3xgLpSHKKlQKWSAEKe";
                if (!z3) {
                    C1874Qx c1874Qx = this.A08;
                    String[] strArr2 = A0C;
                    if (strArr2[1].charAt(28) != strArr2[6].charAt(28)) {
                        A0C[0] = "VkpHjHCIFEEZQEtz5DH";
                        if (c1874Qx.A00() >= this.A00) {
                        }
                    }
                }
                return false;
            }
            throw new RuntimeException();
        }
        return true;
    }
}
