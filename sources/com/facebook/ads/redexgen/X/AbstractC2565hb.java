package com.facebook.ads.redexgen.X;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.Display;
import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.hb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2565hb {
    public static final C2564ha A00;

    static {
        if (Build.VERSION.SDK_INT >= 26) {
            A00 = new C3J() { // from class: com.facebook.ads.redexgen.X.3H
            };
            return;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            A00 = new C3J();
        } else if (Build.VERSION.SDK_INT >= 23) {
            A00 = new C3L();
        } else {
            A00 = new C3N();
        }
    }

    public static int A00(View view) {
        return A00.A02(view);
    }

    public static int A01(View view) {
        return A00.A03(view);
    }

    public static int A02(View view) {
        return A00.A04(view);
    }

    public static int A03(View view) {
        return A00.A05(view);
    }

    public static Display A04(View view) {
        return A00.A06(view);
    }

    public static C2581hs A05(View view, C2581hs c2581hs) {
        return A00.A07(view, c2581hs);
    }

    public static C2581hs A06(View view, C2581hs c2581hs) {
        return A00.A08(view, c2581hs);
    }

    public static void A07(View view) {
        A00.A09(view);
    }

    public static void A08(View view) {
        A00.A0A(view);
    }

    public static void A09(View view, int i) {
        A00.A0B(view, i);
    }

    public static void A0A(View view, Drawable drawable) {
        A00.A0C(view, drawable);
    }

    public static void A0B(View view, AbstractC2543hF abstractC2543hF) {
        A00.A0D(view, abstractC2543hF);
    }

    public static void A0C(View view, InterfaceC2549hL interfaceC2549hL) {
        A00.A0E(view, interfaceC2549hL);
    }

    public static void A0D(View view, Runnable runnable) {
        A00.A0F(view, runnable);
    }

    public static void A0E(View view, Runnable runnable, long j) {
        A00.A0G(view, runnable, j);
    }

    public static boolean A0F(View view) {
        return A00.A0H(view);
    }

    public static boolean A0G(View view) {
        return A00.A0I(view);
    }

    public static boolean A0H(View view) {
        return A00.A0J(view);
    }
}
