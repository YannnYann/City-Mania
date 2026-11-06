package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.fx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2465fx {
    public static byte[] A00;
    public static String[] A01 = {"SZD1gnuwYC0ZDT5XCpN5wGg04vpvlXtv", "38Pkme0hctlwOycqXgIFmSt4EwGMsPu", "PZ5YSJhnqoOlFoXIJ", "MKZOkal4amZt32sY0duMnYWyMVrdvNv7", "PmMqC", "MtvBWYcgrX5nN2Ecp9gb0xGXALHF8kJ8", "836OSMulKGxVhnpon", "Ud77gBKi5ZcurXFgX0oEk2YfAMQgAhDP"};

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 18);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{25, 95, 67, 90, 91, 103, 96, 122, 107, 124, 125, 122, 103, 122, 103, 111, 98, 3, 20, 6, 16, 3, 21, 20, 21, 46, 7, 24, 21, 20, 30};
    }

    static {
        A01();
    }

    /* JADX WARN: Incorrect condition in loop: B:23:0x012a */
    /* JADX WARN: Incorrect condition in loop: B:27:0x015b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void A02(com.facebook.ads.redexgen.X.C1643Hi r11, com.facebook.ads.redexgen.X.C2771kz r12, com.facebook.ads.redexgen.X.C13997g r13) {
        /*
            Method dump skipped, instruction units count: 391
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2465fx.A02(com.facebook.ads.redexgen.X.Hi, com.facebook.ads.redexgen.X.kz, com.facebook.ads.redexgen.X.7g):void");
    }

    public static void A03(C1643Hi c1643Hi, C2771kz c2771kz, C13997g c13997g) {
        int i = 0;
        for (C2420fE c2420fE : c13997g.A39()) {
            String strA08 = c2420fE.A0I().A08();
            if (strA08 != null) {
                C2769kx c2769kx = new C2769kx(strA08, AbstractC2460fs.A00(c2420fE.A0I()), AbstractC2460fs.A01(c2420fE.A0I()), c13997g.A1r(), A00(5, 12, 28));
                if (i == 0) {
                    c2771kz.A0c(c2769kx);
                } else {
                    c2771kz.A0d(c2769kx);
                }
            }
            String[] strArr = A01;
            if (strArr[2].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[0] = "d4OGgqInyGax2uUwuJ6rocUy9OK0g6RJ";
            strArr2[7] = "8ZRzgNChvbJeQD0ONiajCC1PQNrhJWUQ";
            AbstractC2459fr.A00(c13997g, c2771kz, A00(17, 14, 99));
            Iterator<String> it = c2420fE.A0L().A03().iterator();
            while (it.hasNext()) {
                c2771kz.A0d(new C2769kx(it.next(), -1, -1, c13997g.A1r(), A00(5, 12, 28)));
            }
            if (!TextUtils.isEmpty(c2420fE.A0I().A09())) {
                new C2767kv(c2420fE.A0I().A09(), c13997g.A1r(), A00(5, 12, 28), c2420fE.A0I().A06()).A04 = false;
            }
            i++;
        }
    }
}
