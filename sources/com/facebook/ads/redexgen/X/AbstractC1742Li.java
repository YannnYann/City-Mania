package com.facebook.ads.redexgen.X;

import android.text.Spannable;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Li, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC1742Li {
    public static String[] A00 = {"9v5PgwX8x7Qx9bE4vELp3dd2e", "eDqIawLngFv", "jCm7OqsBCbeRG2KPHukv0AF4xgSZdXJY", "SJPEjl0yPs4", "ESLtlVS0s1MdJITZmQLKZzO3arnCnvs1", "9Mca8Yt6V", "5ZSLXscyc54IGIy5kBtw0sTkEH2UzAvY", "aSPS7VfGodPcehEijXGKAFMgQHvTYY4K"};

    public static void A00(Spannable spannable, Object obj, int i, int i2, int i3) {
        for (Object obj2 : spannable.getSpans(i, i2, obj.getClass())) {
            if (spannable.getSpanStart(obj2) == i && spannable.getSpanEnd(obj2) == i2 && spannable.getSpanFlags(obj2) == i3) {
                spannable.removeSpan(obj2);
            }
        }
        spannable.setSpan(obj, i, i2, i3);
        if (A00[4].charAt(1) == 'N') {
            throw new RuntimeException();
        }
        String[] strArr = A00;
        strArr[6] = "eE6uXPxArHxNGnmvvCudDILKvdYSJKtq";
        strArr[2] = "EDslWpdB1EO4GiKoaaN3CLWhJiVsosVy";
    }
}
