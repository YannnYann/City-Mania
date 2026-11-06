package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Build;
import android.view.DisplayCutout;
import android.view.View;
import android.view.WindowInsets;
import android.widget.LinearLayout;
import com.unity3d.services.UnityAdsConstants;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1607Fy extends AbstractC3137r2 {
    public static byte[] A08;
    public static String[] A09 = {"uIXLqHhvGmjoGPJG9cBAQ", "V", "8fRs1qjLH6XqoJn", "ci1q4QA001tVQ4Bl77EpjAjT", "gnmz4UsmoKc1Cn9NoCgGi2hw8zGBmAqZ", "bulj7p0JKKQ3", "H4XX9R6gSHKjlrWA9juc7", "pLP29u1F8mwA8paWdS0YJJRl9a"};
    public static final int A0A;
    public static final int A0B;
    public static final int A0C;
    public static final Integer A0D;
    public static final Integer A0E;
    public int A00;
    public InterfaceC3141r6 A01;
    public float A02;
    public InterfaceC3136r1 A03;
    public boolean A04;
    public final C1643Hi A05;
    public final C3140r5 A06;
    public final EnumC3142r7 A07;

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 76);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        byte[] bArr = {-45, -4, -1, 3, -11, -80, -47, -12};
        String[] strArr = A09;
        if (strArr[1].length() == strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A09;
        strArr2[3] = "sqYCvA8pn8g2TbloiqTXisT5";
        strArr2[2] = "WEhCQwebYdqhiJb";
        A08 = bArr;
    }

    static {
        A07();
        A0A = AbstractC3068pv.A0D;
        A0C = AbstractC3068pv.A0J;
        A0B = (int) (((double) A0C) / 2.0d);
        A0D = 855638016;
        A0E = null;
    }

    public C1607Fy(C1643Hi c1643Hi, EnumC3142r7 enumC3142r7, LA la, int i, InterfaceC3141r6 interfaceC3141r6) {
        super(c1643Hi);
        this.A00 = 0;
        this.A04 = true;
        this.A05 = c1643Hi;
        this.A07 = enumC3142r7;
        this.A01 = interfaceC3141r6;
        A04();
        this.A06 = new C3140r5(this.A05, la, this.A07, i);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 48;
        this.A06.setContentDescription(A03(0, 8, 68));
        this.A06.setOnClickListener(new ViewOnClickListenerC3139r4(this));
        addView(this.A06, layoutParams);
        A06();
    }

    private void A04() {
        View view = new View(this.A05);
        view.setLayoutParams(new LinearLayout.LayoutParams(0, 0, 1.0f));
        addView(view);
    }

    private void A05() {
        Rect requestedMargins = getRequestedMargins();
        if (this.A01 != null && requestedMargins != null) {
            this.A01.AFc(getToolbarHeight());
        }
    }

    private void A06() {
        if (Build.VERSION.SDK_INT >= 28) {
            setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.facebook.ads.redexgen.X.r3
                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    return this.A00.A0F(view, windowInsets);
                }
            });
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public final void A09() {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public final void A0A() {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public final void A0B() {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public final void A0C(float f, int i) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public final void A0D(C2429fN c2429fN, boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public final boolean A0E() {
        return false;
    }

    public final /* synthetic */ WindowInsets A0F(View view, WindowInsets windowInsets) {
        int cutoutInsetTop;
        DisplayCutout cutout = windowInsets.getDisplayCutout();
        if (cutout != null && (cutoutInsetTop = cutout.getSafeInsetTop()) != this.A00) {
            this.A00 = cutoutInsetTop;
            A05();
        }
        return windowInsets;
    }

    public final void A0G() {
        if (this.A03 != null && this.A04) {
            this.A03.ADh(this);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public Rect getRequestedMargins() {
        if (getResources().getConfiguration().orientation == 1) {
            int i = AbstractC3068pv.A0x;
            int i2 = AbstractC3068pv.A0f;
            int orientation = this.A00;
            return new Rect(i, i2 + orientation, 0, 0);
        }
        return new Rect(AbstractC3068pv.A0x, AbstractC3068pv.A0y, 0, 0);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public int getToolbarActionMode() {
        return this.A06.A09();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public int getToolbarHeight() {
        if (this.A07 == EnumC3142r7.A07) {
            if (getResources().getConfiguration().orientation == 1) {
                int i = this.A00;
                int orientation = A0C;
                int i2 = i + orientation;
                int orientation2 = AbstractC3068pv.A0f;
                return i2 + (orientation2 * 2);
            }
            int i3 = A0C;
            int orientation3 = AbstractC3068pv.A0y;
            int i4 = i3 + (orientation3 * 2);
            if (A09[4].charAt(1) == 'I') {
                throw new RuntimeException();
            }
            A09[5] = "CxDDHTLRgfwS";
            return i4;
        }
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public InterfaceC3136r1 getToolbarListener() {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        A05();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        A05();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setAdReportingVisible(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setCTAClickListener(View.OnClickListener onClickListener) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setCTAClickListener(ViewOnClickListenerC1569El viewOnClickListenerC1569El) {
    }

    private void setClickable(float f) {
        this.A04 = f <= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || C2888mv.A18(this.A05);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setFullscreen(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setPageDetails(C2441fZ c2441fZ, String str, int i, C2450fi c2450fi) {
        this.A02 = i * 1000;
        setClickable(this.A02);
        this.A06.A0A(this.A02);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setPageDetailsVisible(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setProgress(float f) {
        float f2 = (f / 100.0f) * this.A02;
        float remainingMs = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        if (this.A02 - f2 > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            float remainingMs2 = this.A02;
            remainingMs = remainingMs2 - f2;
        }
        this.A06.A0B(remainingMs);
        setClickable(remainingMs);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setProgressClickListener(View.OnClickListener onClickListener) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setProgressImage(EnumC3122qn enumC3122qn) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setProgressImmediate(float f) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setProgressSpinnerInvisible(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setToolbarActionMessage(String str) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setToolbarActionMode(int i) {
        this.A06.A0C(i);
        if (i == 0) {
            setProgress(100.0f);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setToolbarListener(InterfaceC3136r1 interfaceC3136r1) {
        this.A03 = interfaceC3136r1;
    }
}
