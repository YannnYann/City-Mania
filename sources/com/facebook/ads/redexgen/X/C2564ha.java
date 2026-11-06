package com.facebook.ads.redexgen.X;

import android.graphics.drawable.Drawable;
import android.view.Display;
import android.view.View;
import java.lang.reflect.Field;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ha, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2564ha {
    public static Field A00;
    public static boolean A01;
    public static byte[] A02;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 72);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{26, 54, 20, 20, 18, 4, 4, 30, 21, 30, 27, 30, 3, 14, 51, 18, 27, 18, 16, 22, 3, 18};
    }

    public abstract int A02(View view);

    public abstract int A03(View view);

    public abstract int A04(View view);

    public abstract int A05(View view);

    public abstract Display A06(View view);

    public abstract C2581hs A07(View view, C2581hs c2581hs);

    public abstract C2581hs A08(View view, C2581hs c2581hs);

    public abstract void A09(View view);

    public abstract void A0A(View view);

    public abstract void A0B(View view, int i);

    public abstract void A0C(View view, Drawable drawable);

    public abstract void A0E(View view, InterfaceC2549hL interfaceC2549hL);

    public abstract void A0F(View view, Runnable runnable);

    public abstract void A0G(View view, Runnable runnable, long j);

    public abstract boolean A0I(View view);

    public abstract boolean A0J(View view);

    static {
        A01();
        A01 = false;
    }

    public final void A0D(View view, AbstractC2543hF abstractC2543hF) {
        view.setAccessibilityDelegate(abstractC2543hF == null ? null : abstractC2543hF.A00());
    }

    public final boolean A0H(View view) {
        if (A01) {
            return false;
        }
        if (A00 == null) {
            try {
                A00 = View.class.getDeclaredField(A00(0, 22, 63));
                A00.setAccessible(true);
            } catch (Throwable unused) {
                A01 = true;
                return false;
            }
        }
        try {
            return A00.get(view) != null;
        } catch (Throwable unused2) {
            A01 = true;
            return false;
        }
    }
}
