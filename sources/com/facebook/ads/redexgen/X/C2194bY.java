package com.facebook.ads.redexgen.X;

import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.bY, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2194bY {
    public static String[] A08 = {"9L1w1wV8uajUNZnJ4CsOiYfBiqoiZfeA", "bzRqQYl6PZHe7cfIHZtstW", "iY6zgtiE4PSYe0KB82pLH9ipKgaa2WMA", "EFWNwk268AsnZ5dtWGIGOBNrPqtnFZY6", "TcLUNR3L8Jh6JezAs", "nVl3z02gaD8dKggnIOCH8XoSTId1zgut", "g04dyTW3dZEIDdz5", "CGmG3KdGn75Yn1mGp9OkuGqxGyDJVKW2"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public final List<C2193bX> A06 = new ArrayList();
    public final List<SpannableString> A07 = new ArrayList();
    public final StringBuilder A05 = new StringBuilder();

    public C2194bY(int i, int i2) {
        A0C(i);
        this.A01 = i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x00f4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private android.text.SpannableString A04() {
        /*
            Method dump skipped, instruction units count: 277
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2194bY.A04():android.text.SpannableString");
    }

    public static void A05(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
        spannableStringBuilder.setSpan(new StyleSpan(2), i, i2, 33);
    }

    public static void A06(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
        spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
    }

    public static void A07(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3) {
        if (i3 == -1) {
            return;
        }
        spannableStringBuilder.setSpan(new ForegroundColorSpan(i3), i, i2, 33);
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0013 */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.facebook.ads.redexgen.X.C1936Th A08(int r9) {
        /*
            Method dump skipped, instruction units count: 230
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2194bY.A08(int):com.facebook.ads.redexgen.X.Th");
    }

    public final void A09() {
        int length = this.A05.length();
        if (length > 0) {
            int length2 = length - 1;
            this.A05.delete(length2, length);
            int length3 = this.A06.size();
            for (int i = length3 - 1; i >= 0; i--) {
                C2193bX c2193bX = this.A06.get(i);
                int length4 = c2193bX.A00;
                if (length4 == length) {
                    int length5 = c2193bX.A00;
                    c2193bX.A00 = length5 - 1;
                } else {
                    return;
                }
            }
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0022 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A0A() {
        /*
            r6 = this;
            java.util.List<android.text.SpannableString> r1 = r6.A07
            android.text.SpannableString r0 = r6.A04()
            r1.add(r0)
            java.lang.StringBuilder r0 = r6.A05
            r5 = 0
            r0.setLength(r5)
            java.util.List<com.facebook.ads.redexgen.X.bX> r0 = r6.A06
            r0.clear()
            int r1 = r6.A01
            int r0 = r6.A03
            int r4 = java.lang.Math.min(r1, r0)
        L1c:
            java.util.List<android.text.SpannableString> r0 = r6.A07
            int r0 = r0.size()
            if (r0 < r4) goto L49
            java.util.List<android.text.SpannableString> r3 = r6.A07
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C2194bY.A08
            r0 = 4
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 17
            if (r1 == r0) goto L39
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L39:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C2194bY.A08
            java.lang.String r1 = "wHJCFsjRLmJYmOGCiYb2btDMgDXd1Srk"
            r0 = 2
            r2[r0] = r1
            java.lang.String r1 = "2mSpReiYVVDYMy0V4w8ODhLzaW3OOfiX"
            r0 = 7
            r2[r0] = r1
            r3.remove(r5)
            goto L1c
        L49:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2194bY.A0A():void");
    }

    public final void A0B(char c) {
        if (this.A05.length() < 32) {
            this.A05.append(c);
        }
    }

    public final void A0C(int i) {
        this.A00 = i;
        this.A06.clear();
        this.A07.clear();
        this.A05.setLength(0);
        this.A03 = 15;
        this.A02 = 0;
        this.A04 = 0;
    }

    public final void A0D(int i) {
        this.A00 = i;
    }

    public final void A0E(int i) {
        this.A01 = i;
    }

    public final void A0F(int i, boolean z) {
        this.A06.add(new C2193bX(i, z, this.A05.length()));
    }

    public final boolean A0G() {
        if (this.A06.isEmpty() && this.A07.isEmpty()) {
            StringBuilder sb = this.A05;
            String[] strArr = A08;
            if (strArr[2].charAt(11) != strArr[7].charAt(11)) {
                throw new RuntimeException();
            }
            A08[5] = "ZUB0lQjssyACEg1ILMogw129NIO2tx51";
            if (sb.length() == 0) {
                return true;
            }
        }
        return false;
    }
}
