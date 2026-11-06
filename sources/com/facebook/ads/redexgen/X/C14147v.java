package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7v, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C14147v extends MH {
    public static byte[] A02;
    public static String[] A03 = {"OXbCEMjwdPN5xvU2NT0kKgep5UeL1Sqr", "SX0ygsPxRN6KiRybC8JMsMv996SDI", "L77PzfY5dGd9ppcaJeqEYdg5mL", "qaE4mxmFDXDzve4pMTR5s0xQhV", "rrEUCxltihDw1phZ7LTyezPpJ6vgfWBl", "FdpTQfSalwXKw6iuOYHl49ZbqEAaQDuv", "IFg4N7XoM6S2Rxr", "IzcF2xeWDVSzXIhxKqlgaOjlVHZ1W1Z3"};
    public Map<String, String> A00;
    public final Uri A01;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 16);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        byte[] bArr = {58, 63, 56, 61};
        if (A03[5].charAt(30) != 'u') {
            throw new RuntimeException();
        }
        A03[5] = "82m81CO1d0OwjHPL38rD7xdABiLQ6kup";
        A02 = bArr;
    }

    static {
        A01();
    }

    public C14147v(C1643Hi c1643Hi, InterfaceC2909nG interfaceC2909nG, String str, Uri uri, Map<String, String> mExtraData) {
        super(c1643Hi, interfaceC2909nG, str, null, true, true);
        this.A01 = uri;
        this.A00 = mExtraData;
    }

    @Override // com.facebook.ads.redexgen.X.MH
    public final EnumC2383ec A0J() {
        Uri uriA0O = A0O();
        if (this.A00 != null && uriA0O != null) {
            new C3303ti(this.A00).A03(((AbstractC2386ef) this).A01, uriA0O.toString());
        }
        Map<String, String> map = this.A00;
        if (A03[5].charAt(30) != 'u') {
            throw new RuntimeException();
        }
        A03[6] = "7umG1RvFX2i";
        A0L(map, null);
        return EnumC2383ec.A08;
    }

    public final Uri A0O() {
        String uri = this.A01.getQueryParameter(A00(0, 4, 70));
        if (uri == null) {
            uri = A00(0, 0, 20);
        }
        return AbstractC3036pP.A00(uri);
    }
}
