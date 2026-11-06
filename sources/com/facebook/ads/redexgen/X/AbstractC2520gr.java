package com.facebook.ads.redexgen.X;

import android.graphics.drawable.Drawable;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.gr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2520gr extends Drawable {
    public static String[] A00 = {"YEFrjfwCEWu", "", "GYovhjhdb5Je", "S1Fz", "LeiEw92n2EsObareFd", "xgqXw3gEiUgyln4SIM", "kGClknFKKNldAaaK4EgXWOsNKvCYjz7L", "I70UDyBH67pytg1dUxrP2KgAWNh3bG3K"};
    public static final double A01 = Math.cos(Math.toRadians(45.0d));

    public static float A00(float f, float f2, boolean z) {
        if (z) {
            double d = f;
            if (A00[2].length() == 3) {
                throw new RuntimeException();
            }
            String[] strArr = A00;
            strArr[5] = "P9aPeBSvznAhF57KLP";
            strArr[4] = "W3RUpaMuYeMV1XeTAU";
            return (float) (d + ((1.0d - A01) * ((double) f2)));
        }
        return f;
    }

    public static float A01(float f, float f2, boolean z) {
        if (z) {
            return (float) (((double) (1.5f * f)) + ((1.0d - A01) * ((double) f2)));
        }
        return 1.5f * f;
    }
}
