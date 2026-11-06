package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class F8 extends LinearLayout implements InterfaceC3289tU {
    public static byte[] A0C;
    public static String[] A0D = {"BcFQtfDK9hAKOHqMXZ8WU6w7kFFUFtET", "X99THADY", "xrszHQ9U", "LYniCeaA4In2f6PN1EUmKn0u4UFNnAjg", "67LwLf7vOYRi", "KnFyaMa0IlAp039IMTM4cUE050arzdiU", "KZPDiGlj7ylPLpBKS8aEPn6szpzZSRmX", "X62cFkrE6UVt0O0iOT2HQ44CPhejJ5g7"};
    public static final int A0E;
    public static final int A0F;
    public static final int A0G;
    public static final Uri A0H;
    public static final View.OnTouchListener A0I;
    public ImageView A00;
    public ImageView A01;
    public ImageView A02;
    public ImageView A03;
    public C3280tL A04;
    public InterfaceC3288tT A05;
    public String A06;
    public final WebView A07;
    public final C1643Hi A08;
    public final InterfaceC3285tQ A09;
    public final boolean A0A;
    public final boolean A0B;

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 110);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0A() {
        A0C = new byte[]{-18, 13, 15, 23, -21, 20, 23, 27, 13, 17, 58, 61, 66, 44, 61, 47, -53, -20, -31, -22, -100, -22, -35, -16, -27, -14, -31, -100, -34, -18, -21, -13, -17, -31, -18, 27, 28, 41, 47, 46, -12, 28, 38, 27, 40, 37, 42, 55, 45, 59, 56, 50, 45, -9, 50, 55, 61, 46, 55, 61, -9, 42, 44, 61, 50, 56, 55, -9, 31, 18, 14, 32, 72, 84, 82, 19, 70, 83, 73, 87, 84, 78, 73, 19, 72, 77, 87, 84, 82, 74, 53, 65, 65, 61, 7, -4, -4, 68, 68, 68, -5, 51, 46, 48, 50, 47, 60, 60, 56, -5, 48, 60, 58};
    }

    static {
        A0A();
        A0F = Color.rgb(Sdk.SDKError.Reason.AD_LOAD_FAIL_EMPTY_BID_PAYLOAD_VALUE, Sdk.SDKError.Reason.AD_LOAD_FAIL_EMPTY_BID_PAYLOAD_VALUE, Sdk.SDKError.Reason.AD_LOAD_FAIL_EMPTY_BID_PAYLOAD_VALUE);
        A0G = Color.argb(34, 0, 0, 0);
        A0E = AbstractC3068pv.A0n;
        A0H = AbstractC3036pP.A00(A06(90, 23, 95));
        A0I = new ViewOnTouchListenerC3265t6();
    }

    public F8(C1643Hi c1643Hi, WebView webView, boolean z) {
        super(c1643Hi);
        this.A09 = new F9(this);
        this.A07 = webView;
        this.A08 = c1643Hi;
        this.A0A = AbstractC2889mw.A06(c1643Hi);
        this.A0B = z;
        A08();
        A0C(false);
        AbstractC3111qc.A0H(1113, this);
    }

    private void A08() {
        float f;
        AbstractC3111qc.A0O(this, -1);
        setGravity(16);
        this.A01 = new ImageView(this.A08);
        this.A01.setContentDescription(A06(4, 5, 58));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A0E, A0E);
        layoutParams.setMargins(0, 0, AbstractC3068pv.A0e, 0);
        this.A01.setScaleType(ImageView.ScaleType.CENTER);
        this.A01.setImageBitmap(AbstractC3123qo.A01(EnumC3122qn.BROWSER_CLOSE));
        this.A01.setOnTouchListener(A0I);
        this.A01.setOnClickListener(new ViewOnClickListenerC3266t7(this));
        addView(this.A01, layoutParams);
        if (this.A0A && !C2888mv.A2z(this.A08)) {
            this.A00 = new ImageView(this.A08);
            this.A00.setEnabled(false);
            this.A00.setAlpha(0.3f);
            this.A00.setContentDescription(A06(0, 4, 62));
            ViewGroup.LayoutParams backButtonParams = new LinearLayout.LayoutParams(A0E, A0E);
            this.A00.setScaleType(ImageView.ScaleType.CENTER);
            this.A00.setImageBitmap(AbstractC3123qo.A01(EnumC3122qn.BACK_ARROW_V2));
            this.A00.setOnTouchListener(A0I);
            this.A00.setOnClickListener(new ViewOnClickListenerC3267t8(this));
            addView(this.A00, backButtonParams);
        }
        this.A04 = new C3280tL(this.A08);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2);
        if (this.A0A || C2888mv.A2z(this.A08)) {
            f = 0.5f;
        } else {
            f = 1.0f;
        }
        layoutParams2.weight = f;
        this.A04.setGravity(17);
        if (C2888mv.A2z(this.A08) && !this.A0B) {
            LinearLayout linearLayout = new LinearLayout(this.A08);
            linearLayout.setOrientation(1);
            addView(linearLayout, layoutParams2);
            AbstractC3111qc.A0L(linearLayout);
            ImageView imageView = new ImageView(this.A08);
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setImageBitmap(AbstractC3123qo.A01(EnumC3122qn.HANDLER));
            linearLayout.addView(imageView, new LinearLayout.LayoutParams(-1, -2));
            LinearLayout.LayoutParams closeButtonParams = new LinearLayout.LayoutParams(-1, -2);
            linearLayout.addView(this.A04, closeButtonParams);
        } else {
            View view = this.A04;
            String[] strArr = A0D;
            if (strArr[3].charAt(7) == strArr[6].charAt(7)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0D;
            strArr2[1] = "wak0M6ib";
            strArr2[2] = "1XgxFmUy";
            addView(view, layoutParams2);
        }
        if (this.A0A && !C2888mv.A2z(this.A08)) {
            this.A02 = new ImageView(this.A08);
            this.A02.setEnabled(false);
            this.A02.setAlpha(0.3f);
            this.A02.setContentDescription(A06(9, 7, 93));
            ViewGroup.LayoutParams titleViewsParams = new LinearLayout.LayoutParams(A0E, A0E);
            this.A02.setScaleType(ImageView.ScaleType.CENTER);
            this.A02.setImageBitmap(AbstractC3123qo.A02(EnumC3122qn.BACK_ARROW_V2));
            this.A02.setOnTouchListener(A0I);
            this.A02.setOnClickListener(new ViewOnClickListenerC3268t9(this));
            addView(this.A02, titleViewsParams);
        }
        this.A03 = new ImageView(this.A08);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(A0E, A0E);
        layoutParams3.setMargins(AbstractC3068pv.A0e, 0, 0, 0);
        this.A03.setContentDescription(A06(16, 19, 14));
        this.A03.setScaleType(ImageView.ScaleType.CENTER);
        this.A03.setOnTouchListener(A0I);
        this.A03.setOnClickListener(new ViewOnClickListenerC3269tA(this));
        addView(this.A03, layoutParams3);
        AbstractC3111qc.A0H(1115, this.A03);
        A09();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A09() {
        /*
            Method dump skipped, instruction units count: 204
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.F8.A09():void");
    }

    private void A0C(boolean z) {
        int i = z ? 0 : 8;
        if (this.A00 != null) {
            this.A00.setVisibility(i);
        }
        if (this.A02 != null) {
            this.A02.setVisibility(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0D(boolean z) {
        if (z) {
            A0C(true);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3289tU
    public InterfaceC3285tQ getBrowserNavigationListener() {
        return this.A09;
    }

    public static Bitmap getExternalBrowserBitmap() {
        return AbstractC3123qo.A01(EnumC3122qn.BROWSER_LAUNCH_NATIVE_V2);
    }

    public void setCloseButtonVisibility(int i) {
        this.A01.setVisibility(i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3289tU
    public void setListener(InterfaceC3288tT interfaceC3288tT) {
        this.A05 = interfaceC3288tT;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3289tU
    public void setTitle(String str) {
        this.A04.setTitle(str);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3289tU
    public void setUrl(String str) {
        this.A06 = str;
        if (!TextUtils.isEmpty(this.A06)) {
            String strA06 = A06(35, 11, 76);
            String str2 = this.A06;
            if (A0D[4].length() == 25) {
                throw new RuntimeException();
            }
            A0D[0] = "AeRJB9OTfMvsbBGGlXyED2wo8BwDWifT";
            if (!strA06.equals(str2)) {
                this.A04.setSubtitle(this.A06);
                ImageView imageView = this.A03;
                String[] strArr = A0D;
                if (strArr[5].charAt(10) == strArr[7].charAt(10)) {
                    String[] strArr2 = A0D;
                    strArr2[1] = "st1TAnSo";
                    strArr2[2] = "hb2Gh0RK";
                    imageView.setEnabled(false);
                    this.A03.setColorFilter((ColorFilter) null);
                    return;
                }
                String[] strArr3 = A0D;
                strArr3[3] = "CdcgRHbkiupQGtXo0S5IQ6iiLJJUYX6Y";
                strArr3[6] = "vmQ5n0yhFYv8xX8lqJCwlk97Jzxr9JD0";
                imageView.setEnabled(true);
                this.A03.setColorFilter((ColorFilter) null);
                return;
            }
        }
        this.A04.setSubtitle(null);
        this.A03.setEnabled(false);
        this.A03.setColorFilter(new PorterDuffColorFilter(A0F, PorterDuff.Mode.SRC_IN));
    }
}
