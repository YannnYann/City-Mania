package com.facebook.ads.redexgen.X;

import android.util.SparseArray;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.unity3d.ads.core.domain.CommonGetHeaderBiddingToken;
import com.vungle.ads.internal.protos.Sdk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class OF implements InterfaceC2284d0 {
    public static byte[] A02;
    public static String[] A03 = {"wmSfLwiS34X7me76LjGwJOiAVmheqQx3", "kIDwuFfh1FXECnAjTkU01CuzUe2tZ360", "M", "7ag8D6NRMPeXKfU4jajGTSlFcHc", "JHsxRuMNPRYK", "RGHD24dxQsRa6iJkFJzEedLaD7BbP", CommonGetHeaderBiddingToken.HB_TOKEN_VERSION, "jKdIK5mZcRxsI7bpwKKzHsCNQNl7r"};
    public final int A00;
    public final List<VC> A01;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 35);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private List<VC> A03(C2283cz c2283cz) {
        String strA02;
        int i;
        if (A05(32)) {
            return this.A01;
        }
        C1769Mk c1769Mk = new C1769Mk(c2283cz.A03);
        List<VC> arrayList = this.A01;
        while (c1769Mk.A07() > 0) {
            int iA0I = c1769Mk.A0I();
            int iA09 = c1769Mk.A09() + c1769Mk.A0I();
            if (iA0I == 134) {
                arrayList = new ArrayList<>();
                int iA0I2 = c1769Mk.A0I() & 31;
                for (int i2 = 0; i2 < iA0I2; i2++) {
                    String strA0W = c1769Mk.A0W(3);
                    int iA0I3 = c1769Mk.A0I();
                    boolean z = (iA0I3 & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0;
                    if (z) {
                        strA02 = A02(19, 19, 95);
                        i = iA0I3 & 63;
                    } else {
                        strA02 = A02(0, 19, 68);
                        i = 1;
                    }
                    byte bA0I = (byte) c1769Mk.A0I();
                    c1769Mk.A0g(1);
                    List<byte[]> listA04 = null;
                    if (z) {
                        int i3 = bA0I & 64;
                        if (A03[1].charAt(6) != 'f') {
                            throw new RuntimeException();
                        }
                        A03[4] = "FsV9Mfskg9pS";
                        listA04 = Lv.A04(i3 != 0);
                    }
                    arrayList.add(new C1714Ke().A11(strA02).A10(strA0W).A0Z(i).A12(listA04).A14());
                }
            }
            c1769Mk.A0f(iA09);
        }
        return arrayList;
    }

    public static void A04() {
        A02 = new byte[]{6, 23, 23, 11, 14, 4, 6, 19, 14, 8, 9, 72, 4, 2, 6, 74, 81, 87, 95, 29, 12, 12, 16, 21, 31, 29, 8, 21, 19, 18, 83, 31, 25, 29, 81, 75, 76, 68, 113, 96, 96, 124, 121, 115, 113, 100, 121, 127, 126, 63, 102, 126, 116, 62, 116, 102, 114, 62, 113, 121, 100, 79, 94, 94, 66, 71, 77, 79, 90, 71, 65, 64, 1, 86, 3, 93, 77, 90, 75, 29, 27};
        if (A03[3].length() != 27) {
            throw new RuntimeException();
        }
        A03[5] = "XufL5Fc8nPS31dY2Hr";
    }

    static {
        A04();
    }

    public OF() {
        this(0);
    }

    @MetaExoPlayerCustomization
    public OF(int i) {
        this(i, XR.A03(new VC[0]));
    }

    public OF(int i, List<VC> list) {
        this.A00 = i;
        this.A01 = list;
    }

    private C2279cv A00(C2283cz c2283cz) {
        return new C2279cv(A03(c2283cz));
    }

    private C2289d5 A01(C2283cz c2283cz) {
        return new C2289d5(A03(c2283cz));
    }

    private boolean A05(int i) {
        return (this.A00 & i) != 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2284d0
    public final SparseArray<InterfaceC2287d3> A5z() {
        return new SparseArray<>();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2284d0
    public final InterfaceC2287d3 A64(int i, C2283cz c2283cz) {
        switch (i) {
            case 2:
            case INVALID_TPAT_KEY_VALUE:
                return new O1(new OB(A01(c2283cz)));
            case 3:
            case 4:
                return new O1(new O3(c2283cz.A01));
            case 15:
                if (A05(2)) {
                    return null;
                }
                return new O1(new OG(false, c2283cz.A01));
            case 16:
                return new O1(new O9(A01(c2283cz)));
            case 17:
                if (A05(2)) {
                    return null;
                }
                return new O1(new O4(c2283cz.A01));
            case 21:
                return new O1(new O5());
            case 27:
                if (A05(4)) {
                    return null;
                }
                return new O1(new O8(A00(c2283cz), A05(1), A05(8)));
            case 36:
                return new O1(new O6(A00(c2283cz)));
            case 89:
                return new O1(new OC(c2283cz.A02));
            case EMPTY_TPAT_ERROR_VALUE:
            case INVALID_CONFIG_RESPONSE_VALUE:
                return new O1(new ON(c2283cz.A01));
            case MRAID_DOWNLOAD_JS_ERROR_VALUE:
                if (!A05(64)) {
                    return null;
                }
                break;
            case STORE_REGION_CODE_ERROR_VALUE:
                if (A05(16)) {
                    return null;
                }
                return new C1807Nw(new O2(A02(61, 20, 13)));
            case CONFIG_REFRESH_FAILED_VALUE:
                break;
            case 172:
                return new O1(new OJ(c2283cz.A01));
            case 257:
                return new C1807Nw(new O2(A02(38, 23, 51)));
            default:
                return null;
        }
        return new O1(new OD(c2283cz.A01));
    }
}
