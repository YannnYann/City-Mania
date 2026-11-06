package com.facebook.ads.redexgen.X;

import android.view.View;
import com.facebook.ads.NativeAdLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sD, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3210sD {
    public static String[] A00 = {"Mh7OQPY25mJ4xZdJdnJU4lIWxnSb2W80", "uMvQGqYS2R9kLiwAhxbB5gyg9uPLoFmG", "JD8RnvPxGeaTxsc34jN0O6vhnDfoaLvm", "v", "yiVoJ6", "bh6EDcFJy1WMlrC6ew5uNV", "HsXTYL", "k"};
    public static final int A01 = (int) (AbstractC3070px.A02 * 200.0f);
    public static final int A03 = (int) (AbstractC3070px.A02 * 200.0f);
    public static final int A02 = (int) (AbstractC3070px.A02 * 50.0f);

    public static EnumC2407f1 A00(NativeAdLayout nativeAdLayout) {
        if (nativeAdLayout == null) {
            return EnumC2407f1.A05;
        }
        if (A03(nativeAdLayout)) {
            return EnumC2407f1.A06;
        }
        return EnumC2407f1.A04;
    }

    public static AbstractC3209sC A01(C1643Hi c1643Hi, InterfaceC2909nG interfaceC2909nG, String str, View view) {
        if (view == null) {
            return null;
        }
        int h = view.getWidth();
        int w = view.getHeight();
        if (h >= A01 && w >= A01) {
            return new FC(c1643Hi, interfaceC2909nG, str);
        }
        if (h < A03 || w < A02) {
            return null;
        }
        return new FD(c1643Hi, interfaceC2909nG, str);
    }

    public static FE A02(C1643Hi c1643Hi, InterfaceC2909nG interfaceC2909nG, String str, C2441fZ c2441fZ, InterfaceC3145rA interfaceC3145rA, InterfaceC3144r9 interfaceC3144r9) {
        return new FE(c1643Hi, interfaceC2909nG, str, c2441fZ, interfaceC3145rA, interfaceC3144r9);
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0010  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean A03(com.facebook.ads.NativeAdLayout r4) {
        /*
            int r1 = r4.getWidth()
            int r4 = r4.getHeight()
            int r0 = com.facebook.ads.redexgen.X.AbstractC3210sD.A01
            if (r1 < r0) goto L10
            int r0 = com.facebook.ads.redexgen.X.AbstractC3210sD.A01
            if (r4 >= r0) goto L29
        L10:
            int r0 = com.facebook.ads.redexgen.X.AbstractC3210sD.A03
            if (r1 < r0) goto L34
            int r3 = com.facebook.ads.redexgen.X.AbstractC3210sD.A02
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.AbstractC3210sD.A00
            r0 = 5
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 22
            if (r1 == r0) goto L2b
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L29:
            r0 = 0
            goto L35
        L2b:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC3210sD.A00
            java.lang.String r1 = "hhrIY4o6fKEkU42z4UVpb3"
            r0 = 5
            r2[r0] = r1
            if (r4 >= r3) goto L29
        L34:
            r0 = 1
        L35:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC3210sD.A03(com.facebook.ads.NativeAdLayout):boolean");
    }
}
