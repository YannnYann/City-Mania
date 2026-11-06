package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.fp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2457fp {
    public static byte[] A09;
    public static String[] A0A = {"sUaEQAhVuiO0VAXdO2JdlLerKfoiMKKD", "IqyvPSs9abb36obPtrHb", "pzIcc", "AbneYxZGR5WioOuAn7Jlw7LdtInLK7rT", "hBm1e44xzlSZcZcMOozsAHLJ6DEugPx3", "jZVNH", "nWBulu0j1HPd6ivhGXGPDUfhxJDF8DgG", "RXKxbTX7PavRaC2OgByFl9WxJiST5XzE"};
    public final C1484Be A02;
    public final YG A05;
    public final String A06;
    public final Map<String, String> A07;
    public final boolean A08;
    public final BJ A04 = new BJ() { // from class: com.facebook.ads.redexgen.X.5f
        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
        /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
        public final void A03(C5X c5x) {
            YF yf = new YF(this.A00.A06, c5x.A03(), c5x.A01(), c5x.A02());
            if (c5x.A00() >= 0.05d) {
                yf.A06(c5x.A01());
            }
            C2457fp.A00(this.A00);
            this.A00.A05.A04(yf);
        }
    };
    public final BM A03 = new BM() { // from class: com.facebook.ads.redexgen.X.5e
        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
        /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
        public final void A03(C5Y c5y) {
            if (this.A00.A08) {
                this.A00.A07();
            }
        }
    };
    public int A01 = 0;
    public int A00 = 0;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 17);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A09 = new byte[]{48, 35, 48, 59, 33, 10, 60, 59, 49, 48, 45, 81, 69, 86, 90, 82, 104, 84, 88, 66, 89, 67, 4, 16, 3, 15, 7, 17};
    }

    static {
        A04();
    }

    public C2457fp(C1484Be c1484Be, String str, boolean z, Map<String, String> map) {
        this.A06 = str;
        this.A02 = c1484Be;
        this.A07 = map;
        this.A08 = z;
        this.A05 = new YG(this.A06);
        this.A02.getEventBus().A03(this.A04, this.A03);
    }

    public static /* synthetic */ int A00(C2457fp c2457fp) {
        int i = c2457fp.A01;
        c2457fp.A01 = i + 1;
        return i;
    }

    public final Map<String, String> A06() {
        String strA01 = YG.A01(this.A05.A03());
        HashMap map = new HashMap();
        if (this.A07 != null) {
            Map<String, String> map2 = this.A07;
            String[] strArr = A0A;
            String encodedFrameData = strArr[0];
            if (encodedFrameData.charAt(24) == strArr[7].charAt(24)) {
                throw new RuntimeException();
            }
            A0A[1] = "";
            map.putAll(map2);
        }
        if (strA01 == null) {
            strA01 = A02(0, 0, 88);
        }
        map.put(A02(22, 6, Sdk.SDKError.Reason.INVALID_INDEX_URL_VALUE), strA01);
        map.put(A02(11, 11, 38), String.valueOf(this.A01));
        int i = this.A00 + 1;
        this.A00 = i;
        map.put(A02(0, 11, 68), String.valueOf(i));
        return map;
    }

    public final void A07() {
        this.A02.getEventBus().A04(this.A04, this.A03);
    }
}
