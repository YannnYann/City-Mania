package com.facebook.ads.redexgen.X;

import android.view.View;
import javax.annotation.Nullable;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.jF, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2664jF {
    public static String[] A00 = {"UqypfisWbLbbWLDfIVvpiaUsz0iS", "wEiCJDeLGzLJebV", "cX", "dRMEhdR7kDOm9Ob", "SmhGT229bW5LAFpAZzaxeRYqKvMDeGhX", "QcSoUKFtoryhyFMFYIfDI81ChPsDlMu7", "SBvSWfqovIH0ljTVzoffsyrdWCNw", com.ironsource.G5.q};

    public static int A00(@Nullable C2660jB c2660jB, @Nullable AbstractC2629ig abstractC2629ig, View view, View view2, AbstractC2645iw abstractC2645iw, boolean z) {
        if (abstractC2645iw.A1T() == 0 || c2660jB.A03() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(abstractC2645iw.A1o(view) - abstractC2645iw.A1o(view2)) + 1;
        }
        int iA0D = abstractC2629ig.A0D(view2);
        int iA0G = abstractC2629ig.A0G(view);
        String[] strArr = A00;
        if (strArr[4].charAt(28) == strArr[5].charAt(28)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A00;
        strArr2[3] = "xd2oZUwi45Npmqe";
        strArr2[1] = "1k2xoHfklbXXQiR";
        int extend = abstractC2629ig.A0C();
        return Math.min(extend, iA0D - iA0G);
    }

    public static int A01(@Nullable C2660jB c2660jB, @Nullable AbstractC2629ig abstractC2629ig, View view, View view2, AbstractC2645iw abstractC2645iw, boolean z) {
        if (abstractC2645iw.A1T() == 0 || c2660jB.A03() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return c2660jB.A03();
        }
        int iA0D = abstractC2629ig.A0D(view2) - abstractC2629ig.A0G(view);
        int iA1o = abstractC2645iw.A1o(view);
        int laidOutArea = abstractC2645iw.A1o(view2);
        float fAbs = iA0D / (Math.abs(iA1o - laidOutArea) + 1);
        int laidOutArea2 = c2660jB.A03();
        return (int) (fAbs * laidOutArea2);
    }

    public static int A02(@Nullable C2660jB c2660jB, @Nullable AbstractC2629ig abstractC2629ig, View view, View view2, AbstractC2645iw abstractC2645iw, boolean z, boolean z2) {
        int laidOutArea;
        if (abstractC2645iw.A1T() != 0) {
            int iA03 = c2660jB.A03();
            String[] strArr = A00;
            if (strArr[3].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A00;
            strArr2[6] = "xSzU3PMpL9LC7k2G9V08vNIV3nIP";
            strArr2[0] = "UsrmTbcEPDcBULmsiiLKltF5MwgK";
            if (iA03 != 0 && view != null && view2 != null) {
                int maxPosition = Math.min(abstractC2645iw.A1o(view), abstractC2645iw.A1o(view2));
                int iA1o = abstractC2645iw.A1o(view);
                int minPosition = abstractC2645iw.A1o(view2);
                int iMax = Math.max(iA1o, minPosition);
                if (z2) {
                    int minPosition2 = c2660jB.A03();
                    laidOutArea = Math.max(0, (minPosition2 - iMax) - 1);
                } else {
                    laidOutArea = Math.max(0, maxPosition);
                }
                if (!z) {
                    return laidOutArea;
                }
                int itemsBefore = abstractC2629ig.A0D(view2);
                int minPosition3 = abstractC2629ig.A0G(view);
                int maxPosition2 = Math.abs(itemsBefore - minPosition3);
                int itemsBefore2 = abstractC2645iw.A1o(view);
                int minPosition4 = abstractC2645iw.A1o(view2);
                float fAbs = laidOutArea * (maxPosition2 / (Math.abs(itemsBefore2 - minPosition4) + 1));
                int itemsBefore3 = abstractC2629ig.A0B();
                int minPosition5 = abstractC2629ig.A0G(view);
                return Math.round(fAbs + (itemsBefore3 - minPosition5));
            }
        }
        return 0;
    }
}
