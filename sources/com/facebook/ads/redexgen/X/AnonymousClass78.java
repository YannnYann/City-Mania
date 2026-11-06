package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.TranslateAnimation;
import android.view.inputmethod.InputMethodManager;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.78, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class AnonymousClass78 extends C1602Ft implements View.OnClickListener, View.OnTouchListener {
    public static int A09;
    public static int A0A;
    public static int A0B;
    public static int A0C;
    public static int A0D;
    public static byte[] A0E;
    public static String[] A0F = {"vfTLnFhfSR04yeCwpvXggcuo0R5", "ZWqkUfXAT4shJrSnLwE7AR", "uDvCFU1cpeIDU20c5XpSWP5NsJK", "LZCc6xsCgIvsqlWtLYm2xpoo9wVjlUK6", "XWtwisYBczvYKAmZU1o9rLXCsVE6mj6U", "L5HF9ROWNN8fhzCl", "opMnHAf4pzNwIHSRqseTLBuOcV2JnA3E", "J4YnYXEx7z1RD4kZFuYo5ZRCwoH6qkZ0"};
    public int A00;
    public int A01;
    public C2917nO A02;
    public boolean A03;
    public final int A04;
    public final Handler A05;
    public final InputMethodManager A06;
    public final Runnable A07;
    public final String A08;

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 39);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A09() {
        A0E = new byte[]{18, 29, 24, 18, 26, 46, 2, 30, 4, 3, 18, 20, 50, 62, 60, 127, 55, 48, 50, 52, 51, 62, 62, 58, 127, 48, 53, 34, 127, 51, 48, 63, 63, 52, 35, 127, 50, 61, 56, 50, 58, 52, 53, 46, 34, 32, 99, 43, 44, 46, 40, 47, 34, 34, 38, 99, 44, 41, 62, 99, 36, 35, 57, 40, 63, 62, 57, 36, 57, 36, 44, 33, 99, 46, 33, 36, 46, 38, 40, 41, 91, 87, 85, 22, 94, 89, 91, 93, 90, 87, 87, 83, 22, 89, 92, 75, 22, 86, 89, 76, 81, 78, 93, 22, 89, 92, 103, 91, 84, 81, 91, 83, 88, 95, 65, 68, 69, 110, 92, 84, 69, 89, 94, 85, 4, 2, 20, 3, 46, 19, 4, 23, 23, 20, 3, 20, 21, 46, 18, 29, 24, 18, 26, 46, 24, 16, 19, 46, 18, 29, 24, 18, 26, 2, 20, 18, 4, 19, 62, 3, 20, 7, 7, 4, 19, 4, 5, 62, 2, 13, 8, 2, 10, 62, 8, 0, 3, 62, 21, 24, 17, 8, 15, 6};
    }

    static {
        A09();
        A0B = 450;
        A09 = 500;
        A0A = 50;
        A0D = 450;
        A0C = 150;
    }

    public AnonymousClass78(C2683jY c2683jY, C1643Hi c1643Hi, InterfaceC2909nG interfaceC2909nG, InterfaceC3144r9 interfaceC3144r9, String str, int i) {
        super(c2683jY, c1643Hi, interfaceC2909nG, interfaceC3144r9, false);
        this.A00 = 0;
        this.A01 = 0;
        this.A03 = false;
        this.A07 = new RunnableC3147rC(this);
        this.A08 = str;
        this.A05 = new Handler(Looper.getMainLooper());
        this.A06 = (InputMethodManager) c1643Hi.getSystemService(A05(112, 12, 22));
        this.A04 = i;
    }

    public static /* synthetic */ int A02(AnonymousClass78 anonymousClass78) {
        int i = anonymousClass78.A00;
        anonymousClass78.A00 = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A06() {
        AbstractC3111qc.A0O(this, 1610612736);
    }

    private void A07() {
        if (this.A08 == null) {
            return;
        }
        if (AdPlacementType.BANNER.name().equals(this.A08)) {
            this.A0A.A0E(A05(12, 31, Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE), null);
            return;
        }
        if (AdPlacementType.NATIVE.name().equals(this.A08)) {
            this.A0A.A0E(A05(80, 32, 31), null);
            return;
        }
        String strName = AdPlacementType.INTERSTITIAL.name();
        String str = this.A08;
        if (A0F[4].charAt(16) == 's') {
            throw new RuntimeException();
        }
        String[] strArr = A0F;
        strArr[2] = "8IzRIUJb9efYPKAtJhwGPycbwOZ";
        strArr[0] = "TYtUym7r2NCZhHy5XAtvyYbKtYz";
        if (strName.equals(str)) {
            this.A0A.A0E(A05(43, 37, 106), null);
            return;
        }
        AdPlacementType adPlacementType = AdPlacementType.REWARDED_VIDEO;
        if (A0F[1].length() != 22) {
            A0F[4] = "SFf1ftnlqD0kN47UujIaTMcIpRdH9pNa";
            if (!adPlacementType.name().equals(this.A08)) {
                return;
            }
        } else {
            A0F[5] = "xl3LAAZMJtlBjKhfgYaNvWZdB";
            if (!adPlacementType.name().equals(this.A08)) {
                return;
            }
        }
        this.A0A.A0E(EnumC2343dy.A04.A03(), null);
    }

    private void A08() {
        AbstractC3111qc.A0O(this, 0);
    }

    public static /* synthetic */ boolean A0B(View view, MotionEvent motionEvent) {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.C1602Ft
    public final InterfaceC3284tP A0F() {
        return new C1606Fx(this);
    }

    @Override // com.facebook.ads.redexgen.X.C1602Ft
    public final void A0G() {
        AbstractC3111qc.A0O(this, 1610612736);
        setPadding(getResources().getConfiguration().orientation);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadii(new float[]{A0A, A0A, A0A, A0A, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT});
        gradientDrawable.setColor(-1);
        this.A09.setBackground(gradientDrawable);
        this.A09.setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.ads.redexgen.X.rB
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return AnonymousClass78.A0B(view, motionEvent);
            }
        });
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(10);
        addView(this.A09, layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(3, this.A09.getId());
        layoutParams2.addRule(12);
        this.A0G.setBackgroundColor(-1);
        addView(this.A0G, layoutParams2);
        this.A0G.setOnTouchListener(this);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, (int) (C1602Ft.A0L * AbstractC3070px.A02));
        layoutParams3.addRule(3, this.A09.getId());
        this.A0E.setProgress(0);
        addView(this.A0E, layoutParams3);
        A06();
        this.A0D.A4V(this, new RelativeLayout.LayoutParams(-1, -1));
    }

    @Override // com.facebook.ads.redexgen.X.C1602Ft
    public final void A0H() {
        A08();
        this.A0A.A05().overridePendingTransition(0, 0);
        TranslateAnimation translateAnimation = new TranslateAnimation(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, Resources.getSystem().getDisplayMetrics().heightPixels);
        translateAnimation.setDuration(A09);
        translateAnimation.setFillAfter(true);
        translateAnimation.setAnimationListener(new AnimationAnimationListenerC3149rE(this));
        startAnimation(translateAnimation);
    }

    @Override // com.facebook.ads.redexgen.X.C1602Ft
    public final void A0I() {
    }

    @Override // com.facebook.ads.redexgen.X.C1602Ft
    public final void A0K(String str) {
        if (this.A04 > 0 && !this.A03) {
            this.A03 = true;
            this.A05.removeCallbacksAndMessages(null);
            Map<String, String> mapA07 = new C3303ti().A05(null).A04(null).A07();
            mapA07.put(A05(0, 12, 86), str);
            if (this.A02 != null) {
                this.A02.A04(EnumC2916nN.A0J, mapA07);
            }
            A07();
            this.A0C.ACA(super.A06, mapA07);
            if (C2888mv.A2W(this.A0B)) {
                HashMap map = new HashMap();
                map.put(MH.A04, Boolean.TRUE.toString());
                map.put(MH.A05, Boolean.TRUE.toString());
                map.put(MH.A06, Boolean.TRUE.toString());
                this.A0C.ACb(super.A06, map);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C1602Ft, com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void ABc(Intent intent, Bundle bundle, C2683jY c2683jY) {
        super.ABc(intent, bundle, c2683jY);
        this.A02 = new C2917nO(super.A06, this.A0C);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        A08();
        TranslateAnimation translateAnimation = new TranslateAnimation(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, Resources.getSystem().getDisplayMetrics().heightPixels, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        translateAnimation.setDuration(A0B);
        translateAnimation.setFillAfter(true);
        translateAnimation.setAnimationListener(new AnimationAnimationListenerC3148rD(this));
        startAnimation(translateAnimation);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            A0H();
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        setPadding(configuration.orientation);
    }

    @Override // com.facebook.ads.redexgen.X.C1602Ft, com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void onDestroy() {
        super.onDestroy();
        this.A05.removeCallbacksAndMessages(null);
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        switch (motionEvent.getActionMasked()) {
            case 0:
                InputMethodManager inputMethodManager = this.A06;
                if (A0F[3].charAt(27) != 'j') {
                    A0F[3] = "Hgev4doSvbcbElmdNlOVsn7Rf5RjbGzx";
                    if (inputMethodManager == null) {
                        return false;
                    }
                } else {
                    String[] strArr = A0F;
                    strArr[2] = "qGqyMKbBFDFRjfgCXxgALDISrIL";
                    strArr[0] = "EN7i1IUPYbUCnP9fW5N1h9YqXh6";
                    if (inputMethodManager == null) {
                        return false;
                    }
                }
                InputMethodManager inputMethodManager2 = this.A06;
                if (A0F[1].length() != 22) {
                    throw new RuntimeException();
                }
                A0F[4] = "madM7u7tjAexKCWlkxQmLTMOJOLS0YZT";
                if (!inputMethodManager2.isAcceptingText()) {
                    return false;
                }
                A0K(A05(154, 30, 70));
                return false;
            case 1:
                int i = this.A01;
                String[] strArr2 = A0F;
                if (strArr2[7].charAt(9) != strArr2[6].charAt(9)) {
                    throw new RuntimeException();
                }
                A0F[4] = "Huh8TFUZudwEPF459QqvFaUogfM154L9";
                this.A01 = i + 1;
                if (this.A01 < 5) {
                    return false;
                }
                A0K(A05(Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, 30, 86));
                return false;
            default:
                return false;
        }
    }

    private void setPadding(int i) {
        if (i == 2) {
            setPadding(0, A0C, 0, 0);
        } else {
            setPadding(0, A0D, 0, 0);
        }
    }
}
