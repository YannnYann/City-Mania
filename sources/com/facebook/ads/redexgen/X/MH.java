package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class MH extends AbstractC2386ef {
    public static String A04;
    public static String A05;
    public static String A06;
    public static byte[] A07;
    public static String[] A08 = {"1", "OJ2IOsbUnCKybSqk53zM3JXcifahO", "e4RldewFXKwYCBzcZ5CwWZ5XjhlRHNiJ", "729G42gqUNiz5ZAUAxRhvFZ2YWMhTd0L", "J1Ql0tv9onNfDvsMKNTgjNyaDa6Pnzub", "9fBm", "mbPUpspz4Nj5AFGqwEe2w9x9WWs", "2uSYGuFAJgr"};
    public int A00;
    public final boolean A01;
    public final C2392em A02;
    public final boolean A03;

    public static String A0A(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 30);
            if (A08[3].charAt(0) != '7') {
                throw new RuntimeException();
            }
            A08[5] = "PWjD";
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0B() {
        A07 = new byte[]{93, 114, 119, 125, 117, 62, 114, 113, 121, 121, 123, 122, 68, 75, 65, 87, 74, 76, 65, 11, 76, 75, 81, 64, 75, 81, 11, 68, 70, 81, 76, 74, 75, 11, 115, 108, 96, 114, 24, 27, 25, 17, 37, 14, 19, 23, 31, 46, 39, 35, 52, 39, 29, 54, 43, 47, 39, 11, 17, 16, 7, 11, 9, 1, 37, 35, 53, 53, 51, 37, 37, 76, 87, 80, 79, 92, 75, 74, 88, 85, 102, 85, 80, 87, 82, 89, 95, 73, 94, 115, 88, 94, 77, 79, 71, 73, 94, 115, 69, 95, 115, 66, 67, 88, 115, 66, 89, 64, 64, 73, 79, 89, 78, 95, 80, 85, 95, 87, 96, 118, 99, 116, 127, 72, 118, 121, 115, 72, 117, 101, 120, 96, 100, 114};
    }

    public abstract EnumC2383ec A0J();

    static {
        A0B();
        A04 = A0A(64, 7, 72);
        A05 = A0A(85, 24, 50);
        A06 = A0A(Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, 16, 9);
    }

    public MH(C1643Hi c1643Hi, InterfaceC2909nG interfaceC2909nG, String str, C2392em c2392em, boolean z) {
        this(c1643Hi, interfaceC2909nG, str, c2392em, z, false);
    }

    public MH(C1643Hi c1643Hi, InterfaceC2909nG interfaceC2909nG, String str, C2392em c2392em, boolean z, boolean z2) {
        super(c1643Hi, interfaceC2909nG, str);
        this.A00 = 0;
        this.A02 = c2392em;
        this.A03 = z;
        this.A01 = z2;
        if (this.A02 != null) {
            this.A02.A07(new InterfaceC2385ee() { // from class: com.facebook.ads.redexgen.X.MI
                @Override // com.facebook.ads.redexgen.X.InterfaceC2385ee
                public final void AGh() {
                    this.A00.A0K();
                }
            });
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2386ef
    public final EnumC2383ec A0G(String str) {
        if (this.A02 != null) {
            this.A02.A08(super.A03);
        }
        if (C3329u8.A05(super.A01)) {
            EnumC2383ec enumC2383ec = EnumC2383ec.A05;
            if (A08[1].length() != 32) {
                A08[6] = "d9";
                return enumC2383ec;
            }
        } else {
            boolean zA0N = A0N(str);
            String[] strArr = A08;
            if (strArr[2].charAt(18) != strArr[4].charAt(18)) {
                A08[1] = "2xR5Lf7zvGoOc6k6N0KJGWYDjft65vIkC";
                if (zA0N) {
                    return EnumC2383ec.A05;
                }
                return A0J();
            }
        }
        throw new RuntimeException();
    }

    public final /* synthetic */ void A0K() {
        this.A00++;
        if (A0N(null) && super.A00 != null) {
            super.A00.ADg();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A0L(java.util.Map<java.lang.String, java.lang.String> r8, com.facebook.ads.redexgen.X.EnumC2383ec r9) {
        /*
            Method dump skipped, instruction units count: 298
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.MH.A0L(java.util.Map, com.facebook.ads.redexgen.X.ec):void");
    }

    public final boolean A0M(Uri uri) {
        try {
            String queryParameter = uri.getQueryParameter(A0A(71, 14, 39));
            boolean redirectedToApp = TextUtils.isEmpty(queryParameter);
            if (redirectedToApp) {
                return false;
            }
            Intent intent = new Intent(A0A(12, 26, 59), AbstractC3036pP.A00(queryParameter));
            intent.addFlags(268435456);
            if (Build.VERSION.SDK_INT >= 30) {
                intent.addFlags(1024);
            }
            return C3022p8.A0F(super.A01, intent);
        } catch (C3020p6 unused) {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean A0N(java.lang.String r5) {
        /*
            r4 = this;
            if (r5 == 0) goto L2d
            r3 = 109(0x6d, float:1.53E-43)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.MH.A08
            r0 = 2
            r1 = r2[r0]
            r0 = 4
            r2 = r2[r0]
            r0 = 18
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L3f
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.MH.A08
            java.lang.String r1 = "7G1cJQr0jIuGleknkY04jEhD0A31LjuP"
            r0 = 3
            r2[r0] = r1
            r1 = 9
            r0 = 34
            java.lang.String r0 = A0A(r3, r1, r0)
            boolean r0 = r5.equals(r0)
            if (r0 != 0) goto L3d
        L2d:
            int r0 = r4.A00
            if (r0 == 0) goto L3d
            int r1 = r4.A00
            com.facebook.ads.redexgen.X.Hi r0 = r4.A01
            int r0 = com.facebook.ads.redexgen.X.C2888mv.A0G(r0)
            if (r1 < r0) goto L3d
            r0 = 1
        L3c:
            return r0
        L3d:
            r0 = 0
            goto L3c
        L3f:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.MH.A0N(java.lang.String):boolean");
    }
}
