package com.facebook.ads.redexgen.X;

import com.explorestack.protobuf.openrtb.LossReason;
import com.facebook.ads.androidx.media3.common.text.Cue;
import com.vungle.ads.internal.protos.Sdk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.48, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class AnonymousClass48 extends AnonymousClass89 {
    public static byte[] A0I;
    public static String[] A0J = {"5avthSGNkh5nCkdsZIi", "L7ywCvhw", "hcOfJ", "5OsTCrdsimt4RFq0qGqjElJ", "wTm22FlZF43Koip7lRcC4ioY9aXXXMpL", "iAEOK", "pdCqApPDO85ILCqbyu426ZzonGdtH", "8UARrx67oil6FdkvMzqyfSv"};
    public static final int[] A0K;
    public static final int[] A0L;
    public static final int[] A0M;
    public static final int[] A0N;
    public static final int[] A0O;
    public static final int[] A0P;
    public static final int[] A0Q;
    public static final boolean[] A0R;
    public byte A00;
    public byte A01;
    public int A02;
    public int A03;
    public long A05;
    public List<C1936Th> A07;
    public List<C1936Th> A08;
    public boolean A09;
    public boolean A0A;
    public boolean A0B;
    public final int A0C;
    public final int A0D;
    public final int A0E;
    public final long A0F;
    public final C1769Mk A0G = new C1769Mk();
    public final ArrayList<C2194bY> A0H = new ArrayList<>();
    public C2194bY A06 = new C2194bY(0, 4);
    public int A04 = 0;

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0I, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ Sdk.SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A09() {
        A0I = new byte[]{108, 74, 78, 25, 31, 23, 107, 74, 76, 64, 75, 74, 93, 111, 72, 80, 71, 74, 79, 66, 6, 69, 78, 71, 72, 72, 67, 74, 8, 6, 98, 67, 64, 71, 83, 74, 82, 79, 72, 65, 6, 82, 73, 6, 101, 101, 23, 8, 6, 23, 23, 11, 14, 4, 6, 19, 14, 8, 9, 72, 31, 74, 10, 23, 83, 74, 4, 2, 6, 74, 81, 87, 95};
    }

    static {
        A09();
        A0M = new int[]{11, 1, 3, 12, 14, 5, 7, 9};
        A0L = new int[]{0, 4, 8, 12, 16, 20, 24, 28};
        A0Q = new int[]{-1, -16711936, -16776961, -16711681, -65536, -256, -65281};
        A0K = new int[]{32, 33, 34, 35, 36, 37, 38, 39, 40, 41, Sdk.SDKError.Reason.AD_LOAD_FAIL_PLACEMENT_ID_MISMATCH_VALUE, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, Sdk.SDKError.Reason.ASSET_WRITE_ERROR_VALUE, Sdk.SDKError.Reason.INVALID_INDEX_URL_VALUE, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE, Sdk.SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE, 120, Sdk.SDKError.Reason.TPAT_ERROR_VALUE, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, 231, 247, 209, 241, 9632};
        A0N = new int[]{174, 176, 189, 191, 8482, 162, 163, 9834, Sdk.SDKError.Reason.AD_LOAD_FAIL_EMPTY_BID_PAYLOAD_VALUE, 32, 232, Sdk.SDKError.Reason.PRIVACY_ICON_FALLBACK_ERROR_VALUE, 234, 238, 244, 251};
        A0O = new int[]{193, 201, LossReason.LOSS_REASON_CREATIVE_FILTERED_ANIMATION_TOO_LONG_VALUE, Sdk.SDKError.Reason.MRAID_JS_DOES_NOT_EXIST_VALUE, Sdk.SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, 192, 194, 199, 200, 202, 203, 235, 206, 207, 239, 212, Sdk.SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE, 249, Sdk.SDKError.Reason.MRAID_JS_COPY_FAILED_VALUE, 171, 187};
        A0P = new int[]{195, Sdk.SDKError.Reason.INVALID_CSB_DATA_VALUE, 205, 204, 236, 210, 242, Sdk.SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE, 245, Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE, Sdk.SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE, 92, 94, 95, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, Sdk.SDKError.Reason.ASSET_FAILED_INSUFFICIENT_SPACE_VALUE, 196, 228, Sdk.SDKError.Reason.INVALID_GZIP_BID_PAYLOAD_VALUE, 246, Sdk.SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 165, 164, 9474, 197, 229, Sdk.SDKError.Reason.AD_RESPONSE_INVALID_TEMPLATE_TYPE_VALUE, 248, 9484, 9488, 9492, 9496};
        A0R = new boolean[]{false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};
    }

    public AnonymousClass48(String str, int i, long j) {
        this.A0F = j > 0 ? 1000 * j : -9223372036854775807L;
        this.A0C = A06(48, 25, 26).equals(str) ? 2 : 3;
        switch (i) {
            case 1:
                this.A0D = 0;
                this.A0E = 0;
                break;
            case 2:
                this.A0D = 1;
                this.A0E = 0;
                break;
            case 3:
                this.A0D = 0;
                this.A0E = 1;
                break;
            case 4:
                this.A0D = 1;
                this.A0E = 1;
                break;
            default:
                MV.A07(A06(0, 13, 82), A06(13, 35, 91));
                this.A0D = 0;
                this.A0E = 0;
                break;
        }
        A0E(0);
        A08();
        this.A0A = true;
        this.A05 = -9223372036854775807L;
    }

    public static char A00(byte b) {
        int index = A0K[(b & 127) - 32];
        return (char) index;
    }

    public static char A01(byte b) {
        int index = A0O[b & 31];
        return (char) index;
    }

    public static char A02(byte b) {
        int index = A0P[b & 31];
        return (char) index;
    }

    public static char A03(byte b) {
        int index = A0N[b & 15];
        return (char) index;
    }

    public static char A04(byte b, byte b2) {
        if ((b & 1) == 0) {
            char cA01 = A01(b2);
            if (A0J[1].length() != 8) {
                throw new RuntimeException();
            }
            String[] strArr = A0J;
            strArr[3] = "or9hMb2GTVnsuDDJtVDKwJP";
            strArr[7] = "v53taZhdbGsZv6EdprRx1cb";
            return cA01;
        }
        return A02(b2);
    }

    public static int A05(byte b) {
        return (b >> 3) & 1;
    }

    private List<C1936Th> A07() {
        int iMin = 2;
        int size = this.A0H.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            C1936Th c1936ThA08 = this.A0H.get(i).A08(Integer.MIN_VALUE);
            arrayList.add(c1936ThA08);
            if (c1936ThA08 != null) {
                int positionAnchor = c1936ThA08.A08;
                iMin = Math.min(iMin, positionAnchor);
            }
        }
        List<Cue> displayCues = new ArrayList<>(size);
        for (int i2 = 0; i2 < size; i2++) {
            C1936Th c1936Th = (C1936Th) arrayList.get(i2);
            if (c1936Th != null) {
                int cueBuilderCount = c1936Th.A08;
                if (cueBuilderCount != iMin) {
                    c1936Th = (C1936Th) AbstractC1747Ln.A01(this.A0H.get(i2).A08(iMin));
                }
                displayCues.add(c1936Th);
            }
        }
        return displayCues;
    }

    private void A08() {
        this.A06.A0C(this.A02);
        this.A0H.clear();
        this.A0H.add(this.A06);
    }

    private void A0A(byte b) {
        this.A06.A0B(' ');
        int style = (b >> 1) & 7;
        this.A06.A0F(style, (b & 1) == 1);
    }

    private void A0B(byte b) {
        switch (b) {
            case 32:
                A0E(2);
                break;
            case 33:
            case 34:
            case 35:
            case 36:
            case 40:
            default:
                if (this.A02 != 0) {
                    switch (b) {
                        case 33:
                            this.A06.A09();
                            break;
                        case 44:
                            this.A07 = Collections.emptyList();
                            if (this.A02 == 1 || this.A02 == 3) {
                                A08();
                            }
                            break;
                        case 45:
                            if (this.A02 == 1 && !this.A06.A0G()) {
                                this.A06.A0A();
                                break;
                            }
                            break;
                        case 46:
                            A08();
                            break;
                        case 47:
                            this.A07 = A07();
                            A08();
                            break;
                    }
                }
                break;
            case 37:
                A0E(1);
                A0F(2);
                break;
            case 38:
                A0E(1);
                A0F(3);
                break;
            case 39:
                A0E(1);
                A0F(4);
                break;
            case 41:
                A0E(3);
                break;
        }
    }

    private void A0C(byte b, byte b2) {
        int i = A0M[b & 7];
        int row = b2 & 32;
        int row2 = row != 0 ? 1 : 0;
        if (row2 != 0) {
            i++;
        }
        int row3 = this.A06.A03;
        if (i != row3) {
            int row4 = this.A02;
            if (row4 != 1 && !this.A06.A0G()) {
                this.A06 = new C2194bY(this.A02, this.A03);
                this.A0H.add(this.A06);
            }
            C2194bY c2194bY = this.A06;
            if (A0J[4].charAt(12) == 'w') {
                throw new RuntimeException();
            }
            String[] strArr = A0J;
            strArr[3] = "DcsChnubJ5w4sO391Pamf6w";
            strArr[7] = "OeJDKNTkUiCX6ocwK3eoY7M";
            c2194bY.A03 = i;
        }
        int cursorOrStyle = (b2 & 16) == 16 ? 1 : 0;
        int row5 = b2 & 1;
        boolean isCursor = row5 == 1;
        int row6 = b2 >> 1;
        int i2 = row6 & 7;
        C2194bY c2194bY2 = this.A06;
        int row7 = cursorOrStyle != 0 ? 8 : i2;
        c2194bY2.A0F(row7, isCursor);
        if (cursorOrStyle != 0) {
            C2194bY c2194bY3 = this.A06;
            int row8 = A0L[i2];
            c2194bY3.A02 = row8;
        }
    }

    private void A0D(byte b, byte b2) {
        if (A0L(b)) {
            this.A0A = false;
        }
        if (!A0K(b)) {
            return;
        }
        switch (b2) {
            case 32:
            case 37:
            case 38:
            case 39:
            case 41:
            case 47:
                this.A0A = true;
                break;
            case 42:
            case 43:
                this.A0A = false;
                break;
        }
    }

    private void A0E(int i) {
        if (this.A02 == i) {
            return;
        }
        int i2 = this.A02;
        this.A02 = i;
        if (i == 3) {
            int i3 = 0;
            while (true) {
                int size = this.A0H.size();
                String[] strArr = A0J;
                String str = strArr[3];
                String str2 = strArr[7];
                int i4 = str.length();
                int oldCaptionMode = str2.length();
                if (i4 != oldCaptionMode) {
                    throw new RuntimeException();
                }
                A0J[1] = "t04SQziW";
                if (i3 < size) {
                    this.A0H.get(i3).A0D(i);
                    i3++;
                } else {
                    return;
                }
            }
        } else {
            A08();
            if (i2 == 3 || i == 1 || i == 0) {
                this.A07 = Collections.emptyList();
            }
        }
    }

    private void A0F(int i) {
        this.A03 = i;
        this.A06.A0E(i);
    }

    private boolean A0G() {
        return (this.A0F == -9223372036854775807L || this.A05 == -9223372036854775807L || A0V() - this.A05 < this.A0F) ? false : true;
    }

    private boolean A0H(byte b) {
        if (A0I(b)) {
            this.A04 = A05(b);
        }
        return this.A04 == this.A0D;
    }

    public static boolean A0I(byte b) {
        return (b & 224) == 0;
    }

    public static boolean A0J(byte b) {
        return (b & 240) == 16;
    }

    public static boolean A0K(byte b) {
        return (b & 247) == 20;
    }

    public static boolean A0L(byte b) {
        return 1 <= b && b <= 15;
    }

    public static boolean A0M(byte b, byte b2) {
        return (b & 246) == 18 && (b2 & 224) == 32;
    }

    public static boolean A0N(byte b, byte b2) {
        return (b & 247) == 17 && (b2 & 240) == 32;
    }

    public static boolean A0O(byte b, byte b2) {
        return (b & 246) == 20 && (b2 & 240) == 32;
    }

    public static boolean A0P(byte b, byte b2) {
        return (b & 240) == 16 && (b2 & 192) == 64;
    }

    public static boolean A0Q(byte b, byte b2) {
        return (b & 247) == 17 && (b2 & 240) == 48;
    }

    public static boolean A0R(byte b, byte b2) {
        return (b & 247) == 23 && b2 >= 33 && b2 <= 35;
    }

    private boolean A0S(boolean z, byte b, byte b2) {
        if (z && A0J(b)) {
            if (this.A0B && this.A00 == b && this.A01 == b2) {
                this.A0B = false;
                return true;
            }
            this.A0B = true;
            this.A00 = b;
            if (A0J[4].charAt(12) != 'w') {
                A0J[4] = "EXG4zTRNuhoKHo36gTZJWdwUCSkho82B";
                this.A01 = b2;
            } else {
                throw new RuntimeException();
            }
        } else {
            this.A0B = false;
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass89
    /* JADX INFO: renamed from: A0W */
    public final /* bridge */ /* synthetic */ C8B A6Q() throws C1820Oj {
        return super.A6Q();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass89, com.facebook.ads.redexgen.X.InterfaceC1800Np
    /* JADX INFO: renamed from: A0X, reason: merged with bridge method [inline-methods] */
    public final C8A A6S() throws C1820Oj {
        C8A outputBuffer = super.A6S();
        if (outputBuffer != null) {
            return outputBuffer;
        }
        if (A0G()) {
            C8A c8aA0Y = A0Y();
            if (A0J[1].length() != 8) {
                throw new RuntimeException();
            }
            String[] strArr = A0J;
            strArr[5] = "5suUi";
            strArr[2] = "gJClB";
            if (c8aA0Y != null) {
                this.A07 = Collections.emptyList();
                this.A05 = -9223372036854775807L;
                c8aA0Y.A0C(A0V(), A0Z(), Long.MAX_VALUE);
                return c8aA0Y;
            }
        }
        String[] strArr2 = A0J;
        if (strArr2[6].length() == strArr2[0].length()) {
            throw new RuntimeException();
        }
        A0J[1] = "FI5BPZoo";
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass89
    public final C1818Oh A0Z() {
        this.A08 = this.A07;
        return new C1818Oh((List) AbstractC1747Ln.A01(this.A07));
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass89
    /* JADX INFO: renamed from: A0a */
    public final /* bridge */ /* synthetic */ void AIW(C8B c8b) throws C1820Oj {
        super.AIW(c8b);
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x0016 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x00a5 A[SYNTHETIC] */
    @Override // com.facebook.ads.redexgen.X.AnonymousClass89
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A0b(com.facebook.ads.redexgen.X.C8B r12) {
        /*
            Method dump skipped, instruction units count: 431
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass48.A0b(com.facebook.ads.redexgen.X.8B):void");
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass89
    public final boolean A0d() {
        return this.A07 != this.A08;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass89, com.facebook.ads.redexgen.X.InterfaceC1800Np
    public final void AIp() {
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass89, com.facebook.ads.redexgen.X.InterfaceC1821Ok
    public final /* bridge */ /* synthetic */ void AKz(long j) {
        super.AKz(j);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass89, com.facebook.ads.redexgen.X.InterfaceC1800Np
    public final void flush() {
        super.flush();
        this.A07 = null;
        this.A08 = null;
        A0E(0);
        A0F(4);
        A08();
        this.A09 = false;
        this.A0B = false;
        this.A00 = (byte) 0;
        this.A01 = (byte) 0;
        this.A04 = 0;
        this.A0A = true;
        this.A05 = -9223372036854775807L;
    }
}
