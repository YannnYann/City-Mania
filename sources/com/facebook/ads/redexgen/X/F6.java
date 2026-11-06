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
public final class F6 extends LinearLayout implements InterfaceC3289tU {
    public static byte[] A0E;
    public static String[] A0F = {"knq4crm7fvqQP", "POuWJNR6FFtqsTvB6KeDXgsqVDDrfXB5", "10LYd3PkBnL3JTlwXO74lkb8laVhyfxM", "yGvyB2PsIdOlgSHN7xWAdIyeKrkcUuSJ", "30OsfDGqNeLBXhmKwxFpv8WuoKRgKdOB", "v4mwmIuaROl", "LuFvPWZsJ2RrZ", "py7QobRXpH9AZVstdVJJOkEIejHuBaN9"};
    public static final int A0G;
    public static final int A0H;
    public static final int A0I;
    public static final int A0J;
    public static final int A0K;
    public static final Uri A0L;
    public static final View.OnTouchListener A0M;
    public ImageView A00;
    public ImageView A01;
    public ImageView A02;
    public ImageView A03;
    public LinearLayout A04;
    public C3281tM A05;
    public InterfaceC3288tT A06;
    public String A07;
    public final WebView A08;
    public final C1643Hi A09;
    public final InterfaceC3285tQ A0A;
    public final boolean A0B;
    public final boolean A0C;
    public final boolean A0D;

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 39);
            String[] strArr = A0F;
            if (strArr[3].charAt(13) == strArr[1].charAt(13)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0F;
            strArr2[6] = "2vQcPj1ELj1bu";
            strArr2[0] = "7aOELiI6quiDs";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0A() {
        A0E = new byte[]{80, 115, 113, 121, 27, 52, 55, 43, 61, 39, 14, 19, 22, 0, 19, 5, 14, 49, 36, 47, 97, 47, 32, 53, 40, 55, 36, 97, 35, 51, 46, 54, 50, 36, 51, 5, 6, 11, 17, 16, 94, 6, 8, 5, 10, 15, 18, 29, 23, 1, 28, 26, 23, 93, 26, 29, 7, 22, 29, 7, 93, 18, 16, 7, 26, 28, 29, 93, 37, 58, 54, 36, 27, 23, 21, 86, 25, 22, 28, 10, 23, 17, 28, 86, 27, 16, 10, 23, 21, 29, 80, 76, 76, 72, 2, 23, 23, 79, 79, 79, 22, 94, 89, 91, 93, 90, 87, 87, 83, 22, 91, 87, 85};
    }

    static {
        A0A();
        A0I = Color.rgb(Sdk.SDKError.Reason.AD_LOAD_FAIL_EMPTY_BID_PAYLOAD_VALUE, Sdk.SDKError.Reason.AD_LOAD_FAIL_EMPTY_BID_PAYLOAD_VALUE, Sdk.SDKError.Reason.AD_LOAD_FAIL_EMPTY_BID_PAYLOAD_VALUE);
        A0L = AbstractC3036pP.A00(A06(90, 23, 31));
        A0M = new ViewOnTouchListenerC3270tB();
        A0K = Color.argb(34, 0, 0, 0);
        A0G = AbstractC3068pv.A0R;
        A0H = AbstractC3068pv.A0K;
        A0J = AbstractC3068pv.A0B;
    }

    public F6(C1643Hi c1643Hi, WebView webView) {
        this(c1643Hi, webView, false, false);
    }

    public F6(C1643Hi c1643Hi, WebView webView, boolean z, boolean z2) {
        super(c1643Hi);
        this.A0A = new F7(this);
        this.A08 = webView;
        this.A09 = c1643Hi;
        this.A0B = AbstractC2889mw.A06(c1643Hi);
        this.A0D = z;
        this.A0C = z2;
        A08();
        if (z2) {
            A0C(false);
        }
    }

    private void A08() {
        float f;
        AbstractC3111qc.A0O(this, -1);
        setGravity(16);
        this.A01 = new ImageView(this.A09);
        this.A01.setContentDescription(A06(4, 5, Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE));
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(A0G, A0G);
        this.A01.setScaleType(ImageView.ScaleType.CENTER);
        this.A01.setImageBitmap(AbstractC3123qo.A01(EnumC3122qn.BROWSER_CLOSE));
        this.A01.setOnTouchListener(A0M);
        this.A01.setOnClickListener(new ViewOnClickListenerC3271tC(this));
        addView(this.A01, layoutParams);
        if (this.A0B && !C2888mv.A2z(this.A09)) {
            this.A00 = new ImageView(this.A09);
            this.A00.setEnabled(false);
            this.A00.setAlpha(0.3f);
            this.A00.setContentDescription(A06(0, 4, 53));
            ViewGroup.LayoutParams backButtonParams = new LinearLayout.LayoutParams(A0G, A0G);
            this.A00.setScaleType(ImageView.ScaleType.CENTER);
            this.A00.setImageBitmap(AbstractC3123qo.A01(EnumC3122qn.BACK_ARROW));
            this.A00.setOnTouchListener(A0M);
            this.A00.setOnClickListener(new ViewOnClickListenerC3272tD(this));
            addView(this.A00, backButtonParams);
        }
        this.A05 = new C3281tM(this.A09);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2);
        if (this.A0B || C2888mv.A2z(this.A09)) {
            f = 0.5f;
        } else {
            f = 1.0f;
        }
        layoutParams2.weight = f;
        this.A05.setGravity(17);
        if (C2888mv.A2z(this.A09) && !this.A0D) {
            this.A04 = new LinearLayout(this.A09);
            this.A04.setOrientation(1);
            this.A04.setPadding(0, A0J, 0, A0J);
            layoutParams2.setMarginStart(0);
            addView(this.A04, layoutParams2);
            ImageView imageView = new ImageView(this.A09);
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setImageBitmap(AbstractC3123qo.A01(EnumC3122qn.HANDLER));
            imageView.setPadding(0, A0H, 0, A0H);
            LinearLayout.LayoutParams closeButtonParams = new LinearLayout.LayoutParams(-1, -2);
            this.A04.addView(imageView, closeButtonParams);
            LinearLayout.LayoutParams titleViewsParams = new LinearLayout.LayoutParams(-1, -2);
            this.A04.addView(this.A05, titleViewsParams);
        } else {
            addView(this.A05, layoutParams2);
        }
        if (this.A0B && !C2888mv.A2z(this.A09)) {
            this.A02 = new ImageView(this.A09);
            this.A02.setEnabled(false);
            this.A02.setAlpha(0.3f);
            this.A02.setContentDescription(A06(9, 7, 70));
            ViewGroup.LayoutParams titleViewsParams2 = new LinearLayout.LayoutParams(A0G, A0G);
            this.A02.setScaleType(ImageView.ScaleType.CENTER);
            this.A02.setImageBitmap(AbstractC3123qo.A02(EnumC3122qn.BACK_ARROW));
            this.A02.setOnTouchListener(A0M);
            this.A02.setOnClickListener(new ViewOnClickListenerC3273tE(this));
            addView(this.A02, titleViewsParams2);
        }
        this.A03 = new ImageView(this.A09);
        ViewGroup.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(A0G, A0G);
        this.A03.setContentDescription(A06(16, 19, 102));
        this.A03.setScaleType(ImageView.ScaleType.CENTER);
        this.A03.setOnTouchListener(A0M);
        this.A03.setOnClickListener(new ViewOnClickListenerC3274tF(this));
        addView(this.A03, layoutParams3);
        A09();
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A09() {
        /*
            r7 = this;
            r3 = 0
            com.facebook.ads.redexgen.X.Hi r0 = r7.A09
            boolean r6 = com.facebook.ads.redexgen.X.C2888mv.A0i(r0)
            r4 = 0
            if (r6 != 0) goto L36
            com.facebook.ads.redexgen.X.Hi r0 = r7.A09
            android.content.pm.PackageManager r5 = r0.getPackageManager()
            if (r5 == 0) goto L36
            r2 = 46
            r1 = 26
            r0 = 84
            java.lang.String r2 = A06(r2, r1, r0)
            android.net.Uri r0 = com.facebook.ads.redexgen.X.F6.A0L
            android.content.Intent r1 = new android.content.Intent
            r1.<init>(r2, r0)
            r0 = 65536(0x10000, float:9.1835E-41)
            java.util.List r2 = r5.queryIntentActivities(r1, r0)
            boolean r0 = r2.isEmpty()
            if (r0 == 0) goto L4f
            android.widget.ImageView r1 = r7.A03
            r0 = 8
            r1.setVisibility(r0)
        L36:
            com.facebook.ads.redexgen.X.Hi r0 = r7.A09
            boolean r0 = com.facebook.ads.redexgen.X.C2888mv.A2z(r0)
            if (r0 != 0) goto L40
            if (r6 == 0) goto L49
        L40:
            android.widget.ImageView r0 = r7.A03
            r0.setVisibility(r4)
            android.graphics.Bitmap r3 = r7.getExternalBrowserBitmap()
        L49:
            android.widget.ImageView r0 = r7.A03
            r0.setImageBitmap(r3)
            return
        L4f:
            int r1 = r2.size()
            r0 = 1
            if (r1 != r0) goto L9c
            java.lang.Object r0 = r2.get(r4)
            android.content.pm.ResolveInfo r0 = (android.content.pm.ResolveInfo) r0
            android.content.pm.ActivityInfo r0 = r0.activityInfo
            if (r0 == 0) goto L9c
            java.lang.Object r0 = r2.get(r4)
            android.content.pm.ResolveInfo r0 = (android.content.pm.ResolveInfo) r0
            android.content.pm.ActivityInfo r0 = r0.activityInfo
            java.lang.String r3 = r0.packageName
            r2 = 72
            r1 = 18
            r0 = 95
            java.lang.String r0 = A06(r2, r1, r0)
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L9c
            com.facebook.ads.redexgen.X.qn r3 = com.facebook.ads.redexgen.X.EnumC3122qn.BROWSER_LAUNCH_CHROME
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.F6.A0F
            r0 = 4
            r1 = r1[r0]
            r0 = 28
            char r1 = r1.charAt(r0)
            r0 = 104(0x68, float:1.46E-43)
            if (r1 == r0) goto La1
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.F6.A0F
            java.lang.String r1 = "wfUY0m3OLxiViQ5pYdTJeAjco4FSuRgM"
            r0 = 3
            r2[r0] = r1
            java.lang.String r1 = "aNDMwOovjkuIBRKYf6vflm3uDfmFdOS8"
            r0 = 1
            r2[r0] = r1
            android.graphics.Bitmap r3 = com.facebook.ads.redexgen.X.AbstractC3123qo.A01(r3)
            goto L36
        L9c:
            android.graphics.Bitmap r3 = r7.getExternalBrowserBitmap()
            goto L36
        La1:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.F6.A09():void");
    }

    private void A0C(boolean z) {
        int i = z ? 0 : 8;
        if (this.A00 != null) {
            this.A00.setVisibility(i);
        }
        ImageView imageView = this.A02;
        String[] strArr = A0F;
        String str = strArr[3];
        String str2 = strArr[1];
        int iCharAt = str.charAt(13);
        int visibility = str2.charAt(13);
        if (iCharAt == visibility) {
            throw new RuntimeException();
        }
        A0F[4] = "60KYo7QhjtgENhj2KqPalgoBByrtiSu8";
        if (imageView != null) {
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
        return this.A0A;
    }

    private Bitmap getExternalBrowserBitmap() {
        if (this.A0C) {
            Bitmap bitmapA01 = AbstractC3123qo.A01(EnumC3122qn.BROWSER_LAUNCH_NATIVE_V2);
            if (A0F[5].length() == 31) {
                throw new RuntimeException();
            }
            A0F[4] = "wMzYYSB4aZPNeA9ARsTFIivGNhHq4oSc";
            return bitmapA01;
        }
        return AbstractC3123qo.A01(EnumC3122qn.BROWSER_LAUNCH_NATIVE);
    }

    public void setCloseButtonVisibility(int i) {
        this.A01.setVisibility(i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3289tU
    public void setListener(InterfaceC3288tT interfaceC3288tT) {
        this.A06 = interfaceC3288tT;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3289tU
    public void setTitle(String str) {
        this.A05.setTitle(str);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3289tU
    public void setUrl(String str) {
        this.A07 = str;
        if (TextUtils.isEmpty(this.A07) || A06(35, 11, 67).equals(this.A07)) {
            this.A05.setSubtitle(null);
            this.A03.setEnabled(false);
            this.A03.setColorFilter(new PorterDuffColorFilter(A0I, PorterDuff.Mode.SRC_IN));
        } else {
            this.A05.setSubtitle(this.A07);
            this.A03.setEnabled(true);
            this.A03.setColorFilter((ColorFilter) null);
        }
    }
}
