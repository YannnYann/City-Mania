package com.facebook.ads.redexgen.X;

import android.widget.ImageView;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3187rq extends ImageView {
    public static String[] A01 = {"", "xAgTXbjVi62PdicRvipr2yH2TBkp", "gkbD2s1xpJQg4uStKBrjHXnqoYLvnFUr", "soe6jIArtiQ", "3Vk7uiWTp4D98Qq5DBFXHdZ3JTbv3qUy", "5FE99nP0vOH07stjGxCxhCer", "JVbWipYt4YB", ""};
    public ImageView.ScaleType A00;

    public C3187rq(C1643Hi c1643Hi) {
        super(c1643Hi);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0045  */
    @Override // android.widget.ImageView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onMeasure(int r8, int r9) {
        /*
            r7 = this;
            int r5 = android.view.View.MeasureSpec.getSize(r9)
            int r4 = android.view.View.MeasureSpec.getSize(r8)
            int r0 = android.view.View.MeasureSpec.getMode(r8)
            r3 = 1073741824(0x40000000, float:2.0)
            if (r0 != r3) goto L45
            int r6 = android.view.View.MeasureSpec.getMode(r9)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C3187rq.A01
            r0 = 1
            r1 = r2[r0]
            r0 = 5
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L69
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C3187rq.A01
            java.lang.String r1 = "LPpzUfvPRnl"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "8xYze5Yy4ig"
            r0 = 3
            r2[r0] = r1
            if (r6 != r3) goto L45
            int r0 = java.lang.Math.min(r4, r5)
            r7.setMeasuredDimension(r0, r0)
        L3b:
            android.widget.ImageView$ScaleType r0 = r7.A00
            if (r0 == 0) goto L44
            android.widget.ImageView$ScaleType r0 = r7.A00
            super.setScaleType(r0)
        L44:
            return
        L45:
            int r0 = android.view.View.MeasureSpec.getMode(r8)
            if (r0 != r3) goto L55
            if (r5 <= 0) goto L51
            int r4 = java.lang.Math.min(r4, r5)
        L51:
            r7.setMeasuredDimension(r4, r4)
            goto L3b
        L55:
            int r0 = android.view.View.MeasureSpec.getMode(r9)
            if (r0 != r3) goto L65
            if (r4 <= 0) goto L61
            int r5 = java.lang.Math.min(r4, r5)
        L61:
            r7.setMeasuredDimension(r5, r5)
            goto L3b
        L65:
            super.onMeasure(r8, r9)
            goto L3b
        L69:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3187rq.onMeasure(int, int):void");
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        this.A00 = scaleType;
    }
}
