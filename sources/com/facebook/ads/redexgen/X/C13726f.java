package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import java.text.NumberFormat;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.6f, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C13726f extends AbstractC1563Ef {
    public static byte[] A0M;
    public static String[] A0N = {"QUFYIN7o4MSHfMbcaqgxGqdg8oING", "Qixa92rp7KQSHPhBId3L5m9SXc6gxNRP", "TUKhftCqFUFv9xNbjbPA3CLhBIkdW", "aNiMBj1VMT3xct4Co4hWzqTsg", "QYSCqyZ4CS", "VjIbmM2G6pRRrYhuKIf6SOzC6eQUF7eo", "KFJXOgKoK7JNlCBWMf", "dachHr6cLZKwbIDqTeRsc0FgbmZCJ"};
    public static final int A0O;
    public static final int A0P;
    public static final int A0Q;
    public static final int A0R;
    public static final int A0S;
    public static final int A0T;
    public static final int A0U;
    public static final int A0V;
    public static final int A0W;
    public static final int A0X;
    public static final int A0Y;
    public static final int A0Z;
    public static final int A0a;
    public View A00;
    public View A01;
    public ImageView A02;
    public C1643Hi A03;
    public C3055pi A04;
    public AbstractC3137r2 A05;
    public C3358ub A06;
    public AbstractC3370un A07;
    public C3386v3 A08;
    public C3413vU A09;
    public C2555hR A0A;
    public C2546hI A0B;
    public C1459Af A0C;
    public boolean A0D;
    public boolean A0E;
    public final Handler A0F;
    public final InterfaceC3144r9 A0G;
    public final InterfaceC3343uM A0H;
    public final C3344uN A0I;
    public final C3374ur A0J;
    public final C1484Be A0K;
    public final C1466Am A0L;

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0M, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 13);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0D() {
        A0M = new byte[]{-85, -86, -68, -75, -54, -71, -45, -57, -56, -75, -58, -56, -67, -62, -69, -45, -75, -62, -67, -63, -75, -56, -67, -61, -62, -57, -45, -60, -64, -75, -51, -71, -72, -109, -106, -102, -116, -90, -103, -116, -98, -120, -103, -117, -90, -102, -118, -103, -116, -116, -107, -90, -102, -113, -106, -98, -107, -127, 107, 125, -119, 111, 120, 110, -119, 109, 107, 124, 110, -119, 125, 114, 121, -127, 120, -55, -57, -71, -58, -73, -64, -67, -73, -65};
    }

    static {
        A0D();
        A0R = AbstractC3068pv.A0e;
        A0Z = AbstractC3068pv.A0c;
        A0O = (int) (AbstractC3070px.A02 * 8.0f);
        A0P = (int) (AbstractC3070px.A02 * 10.0f);
        A0U = (int) (AbstractC3070px.A02 * 20.0f);
        A0V = (int) (AbstractC3070px.A02 * 13.0f);
        A0S = (int) (AbstractC3070px.A02 * 48.0f);
        A0Y = (int) (AbstractC3070px.A02 * 14.0f);
        A0W = (int) (AbstractC3070px.A02 * 12.0f);
        A0Q = AbstractC3068pv.A0y;
        A0X = AbstractC2526gx.A02(-1, 77);
        A0T = (int) (AbstractC3070px.A02 * 16.0f);
        A0a = (int) (AbstractC3070px.A02 * 12.0f);
    }

    public C13726f(C3374ur c3374ur) {
        super(c3374ur, false);
        this.A0F = new Handler(Looper.getMainLooper());
        this.A0E = false;
        this.A0D = false;
        this.A03 = c3374ur.A06();
        this.A05 = c3374ur.A0B();
        this.A0J = c3374ur;
        this.A01 = new View(this.A03);
        AbstractC3111qc.A0L(this.A01);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(0, 0);
        layoutParams.addRule(13);
        addView(this.A01, layoutParams);
        A0A();
        this.A0G = c3374ur.A0C();
        AbstractC3353uW.A00(c3374ur.A06(), this, getAdInfo().A0I().A08());
        this.A0K = A02(c3374ur);
        AbstractC3111qc.A0L(this.A0K);
        getAdDetailsView().bringToFront();
        if (!A05()) {
            this.A0L = A03(c3374ur);
        } else {
            this.A0L = null;
        }
        if (getAdDataBundle().A2m()) {
            if (this.A0L != null) {
                this.A0L.setVisibility(8);
            }
            getAdDetailsView().setVisibility(8);
            A09();
        }
        A1l();
        this.A0A = new C2555hR(this.A03, c3374ur.A07(), getAdDataBundle());
        this.A0H = new C1560Ec(this);
        this.A0I = A01(c3374ur);
        C3064pr c3064prA02 = ((AbstractC1563Ef) this).A08.A02(getAdDataBundle());
        this.A03.A0H().A00(c3064prA02.A01);
        if (c3064prA02.A00) {
            this.A0K.getVideoImplView().setOnClickListener(new ViewOnClickListenerC3377uu(this));
        } else if (C2888mv.A1L(getAdContextWrapper())) {
            AbstractC3306tl.A00(this.A0K.getVideoImplView(), C2888mv.A1M(getAdContextWrapper()), new ViewOnClickListenerC3378uv(this));
        }
        if (c3374ur.A05().A2a()) {
            if (this.A0J.A05().A2d()) {
                this.A07 = new ER(c3374ur);
            } else {
                this.A07 = new ES(c3374ur);
            }
            View view = this.A07;
            ViewGroup.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
            addView(view, layoutParams2);
            getAdDetailsView().setVisibility(8);
        }
    }

    private C3344uN A01(C3374ur c3374ur) {
        if (this.A0L != null) {
            return new C3344uN(c3374ur, getAdDataBundle(), this.A0K, this.A0L, getAdDetailsView(), this.A0G, this.A0H);
        }
        return new C3344uN(c3374ur, getAdDataBundle(), this.A0K, this.A0G, this.A0H, getAdDetailsView());
    }

    private C1484Be A02(C3374ur c3374ur) {
        RelativeLayout.LayoutParams layoutParams;
        C1484Be c1484Be = (C1484Be) c3374ur.A02();
        if (c1484Be == null) {
            c1484Be = new C1484Be(this.A03);
        }
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        if (getAdDataBundle().A2m()) {
            c1484Be.getVideoView().setPadding(c1484Be.getVideoView().getPaddingLeft(), c1484Be.getVideoView().getPaddingTop(), c1484Be.getVideoView().getPaddingRight(), c1484Be.getVideoView().getPaddingBottom() + A0a);
        }
        layoutParams2.addRule(13);
        addView(c1484Be, layoutParams2);
        int iA1j = A1j(c3374ur.A0B());
        this.A02 = (ImageView) c3374ur.A03();
        if (this.A02 != null) {
            if (!A05()) {
                ImageView imageView = this.A02;
                int i = AbstractC1563Ef.A0K;
                int toolbarHeight = AbstractC1563Ef.A0K;
                imageView.setPadding(i, toolbarHeight, AbstractC1563Ef.A0K, AbstractC1563Ef.A0K);
                layoutParams = new RelativeLayout.LayoutParams(AbstractC1563Ef.A0L, AbstractC1563Ef.A0L);
                layoutParams.setMargins(0, iA1j, AbstractC1563Ef.A0J, 0);
                layoutParams.addRule(11);
            } else {
                layoutParams = new RelativeLayout.LayoutParams(AbstractC3370un.A0B, AbstractC3370un.A0B);
                int i2 = AbstractC3068pv.A0e;
                int toolbarHeight2 = AbstractC3068pv.A0u;
                layoutParams.setMargins(i2, toolbarHeight2, AbstractC3068pv.A0e, AbstractC3068pv.A0c);
                layoutParams.addRule(9);
            }
            layoutParams.addRule(10);
            ImageView imageView2 = this.A02;
            String[] strArr = A0N;
            if (strArr[7].length() == strArr[4].length()) {
                throw new RuntimeException();
            }
            A0N[3] = "RUV05LvgTVtcmprhEttuSCpIx";
            c1484Be.addView(imageView2, layoutParams);
        }
        return c1484Be;
    }

    private C1466Am A03(C3374ur c3374ur) {
        C1466Am c1466AmA0E = c3374ur.A0E();
        if (c1466AmA0E == null) {
            return null;
        }
        c1466AmA0E.A0A(-1, AbstractC1563Ef.A0D, false);
        c1466AmA0E.setPadding(AbstractC1563Ef.A0O, AbstractC1563Ef.A0O, AbstractC1563Ef.A0O, AbstractC1563Ef.A0O);
        RelativeLayout.LayoutParams progressBarLayoutParams = new RelativeLayout.LayoutParams(-1, AbstractC1563Ef.A0N);
        progressBarLayoutParams.addRule(12);
        addView(c1466AmA0E, progressBarLayoutParams);
        return c1466AmA0E;
    }

    private void A05() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        if (this.A0B != null) {
            addView(this.A0B.A0W(), layoutParams);
        }
    }

    private void A06() {
        this.A08 = new C3386v3(this.A0J.A06(), getAdDataBundle(), this.A0J.A08(), this.A0F, this.A0J.A0C());
        addView(this.A08.A0E(getCtaButton()));
    }

    private void A07() {
        AbstractC3111qc.A0e(this.A02, getCtaButton(), getAdDetailsView(), this.A01, this.A0I, this.A0J.A0B());
        for (InterfaceC2348e3 interfaceC2348e3 : this.A0K.getPlugins()) {
            if (interfaceC2348e3 instanceof AnonymousClass51) {
                this.A0K.A0h(interfaceC2348e3);
                return;
            }
        }
    }

    private void A08() {
        if (getAnimationPlugin() != null) {
            getAnimationPlugin().A0H();
            this.A0K.A0h(getAnimationPlugin());
        }
    }

    private void A09() {
        RelativeLayout.LayoutParams layoutParams;
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        A0E(relativeLayout);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(0, 0, A0R, 0);
        RelativeLayout relativeLayout2 = new RelativeLayout(getContext());
        RelativeLayout.LayoutParams appMetadataLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
        appMetadataLayoutParams.setMargins(A0R, A0Z, A0R, A0Z);
        appMetadataLayoutParams.addRule(12);
        relativeLayout2.addView(relativeLayout, layoutParams2);
        ViewOnClickListenerC1569El ctaButton = getCtaButton();
        ctaButton.setTextSize(14.0f);
        ctaButton.setIncludeFontPadding(false);
        ctaButton.setTextColor(-1);
        layoutParams2.addRule(0, ctaButton.getId());
        if (!getAdDataBundle().A2e()) {
            ctaButton.setPadding(A0P, A0P, A0P, A0P);
            layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(6, relativeLayout.getId());
            layoutParams.addRule(8, relativeLayout.getId());
            ctaButton.setBackgroundColor(-12549889);
        } else {
            layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            AbstractC3111qc.A0W(ctaButton, AbstractC3111qc.A06(-16738826, A0O));
            ctaButton.setPadding(A0U, A0V, A0U, A0V);
            ctaButton.setStateListAnimator(null);
            AbstractC3111qc.A0a(ctaButton);
        }
        layoutParams.addRule(11);
        if (ctaButton.getParent() != null) {
            AbstractC3111qc.A0e(ctaButton);
        }
        relativeLayout2.addView(ctaButton, layoutParams);
        addView(relativeLayout2, appMetadataLayoutParams);
        relativeLayout2.bringToFront();
    }

    private void A0A() {
        if (this.A05 == null) {
            return;
        }
        LA adDataBundle = getAdDataBundle();
        if (A0N[6].length() != 18) {
            throw new RuntimeException();
        }
        String[] strArr = A0N;
        strArr[2] = "8PENcoURn8tYxYDZWdxrE0xj5q4aF";
        strArr[0] = "NpgYsaWM2tMmK1ULlf2RY7UcVYKwt";
        if (!adDataBundle.A2D()) {
            this.A0C = new C1459Af(this.A05, 400, -this.A05.getToolbarHeight(), 0);
        }
    }

    private void A0B() {
        new C2917nO(getAdDataBundle().A37(), getAdEventManager()).A04(EnumC2916nN.A1D, null);
        if (!getAdInfo().A0W()) {
            return;
        }
        super.A09.set(true);
        AbstractC3111qc.A0X(this);
        AbstractC3111qc.A0e(this.A0L, this.A0I, this.A00);
        AbstractC3111qc.A0M(this.A05);
        Pair<EnumC2556hS, View> pairA03 = this.A0A.A03(getCtaButton());
        View view = (View) pairA03.second;
        String[] strArr = A0N;
        if (strArr[2].length() != strArr[0].length()) {
            throw new RuntimeException();
        }
        A0N[3] = "FxfG3zWETYKhpCEsP1aqGpvXk";
        this.A00 = view;
        A0F((EnumC2556hS) pairA03.first);
        if (getAdInfo().A0L().A00() >= 0) {
            this.A0D = true;
            if (this.A05 != null) {
                this.A05.setToolbarActionMode(getAdDataBundle().A3N() ? 8 : 2);
                this.A05.setProgressImmediate(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            }
            this.A04 = new C3055pi((int) getAdInfo().A0L().A00(), 20.0f, 20L, new Handler(Looper.getMainLooper()), new C1559Eb(this));
            this.A04.A07();
        }
    }

    private void A0C() {
        if (this.A0C != null) {
            this.A0C.A4b(true, false);
        }
        if (!A05() && !getAdDataBundle().A2m() && getAdDetailsAnimation() != null) {
            getAdDetailsAnimation().A4b(true, false);
        }
    }

    private void A0E(RelativeLayout relativeLayout) {
        int i;
        String formattingRatingCount;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(A0S, A0S);
        layoutParams.addRule(15);
        layoutParams.addRule(9);
        C3346uP c3346uP = new C3346uP(this.A03);
        AbstractC3111qc.A0O(c3346uP, 0);
        AbstractC3111qc.A0L(c3346uP);
        new AsyncTaskC1577Et(c3346uP, this.A03).A05(A0S, A0S).A07(getAdDataBundle().A35().A01());
        TextView textView = new TextView(this.A03);
        AbstractC3111qc.A0L(textView);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        textView.setTextColor(getAdDataBundle().A31().A01().A07(true));
        textView.setText(getAdDataBundle().A32().A0J().A0H());
        textView.setTextSize(!getAdDataBundle().A2e() ? 16.0f : 17.0f);
        textView.setMaxLines(1);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        C1643Hi c1643Hi = this.A03;
        if (!getAdDataBundle().A2e()) {
            i = A0Y;
        } else {
            i = A0W;
            String[] strArr = A0N;
            if (strArr[2].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            A0N[5] = "zMOp0v68HU8LM6AfFyrfYJAIOfQzbFgD";
        }
        C3348uR c3348uR = new C3348uR(c1643Hi, i, 5, A0X, -1);
        c3348uR.setGravity(16);
        LinearLayout.LayoutParams ratingCountParams = new LinearLayout.LayoutParams(-2, -1);
        TextView textView2 = new TextView(this.A03);
        textView2.setTextColor(getAdDataBundle().A31().A01().A07(true));
        textView2.setGravity(16);
        textView2.setIncludeFontPadding(false);
        if (!getAdDataBundle().A2e()) {
            textView2.setTextSize(13.0f);
        }
        LinearLayout.LayoutParams starRatingContainerParams = new LinearLayout.LayoutParams(-2, -1);
        starRatingContainerParams.leftMargin = A0Q;
        LinearLayout linearLayout = new LinearLayout(this.A03);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, A0T);
        layoutParams2.topMargin = A0Q / 2;
        layoutParams2.addRule(3, textView.getId());
        linearLayout.addView(c3348uR, ratingCountParams);
        linearLayout.addView(textView2, starRatingContainerParams);
        RelativeLayout.LayoutParams containerParams = new RelativeLayout.LayoutParams(-2, -2);
        containerParams.leftMargin = A0Q;
        containerParams.addRule(1, c3346uP.getId());
        containerParams.addRule(15);
        RelativeLayout relativeLayout2 = new RelativeLayout(getContext());
        relativeLayout2.addView(linearLayout, layoutParams2);
        relativeLayout2.addView(textView);
        relativeLayout.addView(relativeLayout2, containerParams);
        relativeLayout.addView(c3346uP, layoutParams);
        if (TextUtils.isEmpty(getAdDataBundle().A32().A0J().A0D())) {
            linearLayout.setVisibility(8);
            return;
        }
        linearLayout.setVisibility(0);
        c3348uR.setRating(Float.parseFloat(getAdDataBundle().A32().A0J().A0D()));
        if (getAdDataBundle().A32().A0J().A0A() == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(A04(0, 1, Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE));
        if (!getAdDataBundle().A2e()) {
            formattingRatingCount = NumberFormat.getNumberInstance().format(Integer.parseInt(getAdDataBundle().A32().A0J().A0A()));
        } else {
            formattingRatingCount = AbstractC3080q7.A01(Integer.parseInt(getAdDataBundle().A32().A0J().A0A()));
        }
        sb.append(formattingRatingCount);
        String formattingRatingCount2 = A04(1, 1, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE);
        sb.append(formattingRatingCount2);
        String formattingRatingCount3 = sb.toString();
        textView2.setText(formattingRatingCount3);
    }

    private void A0F(EnumC2556hS enumC2556hS) {
        EnumC2960o7 enumC2960o7A00 = EnumC2960o7.A00(getAdDataBundle().A1a());
        if (enumC2960o7A00 == EnumC2960o7.A08) {
            if (this.A09 != null) {
                return;
            }
            AbstractC3111qc.A0e(this.A02, getCtaButton(), getAdDetailsView(), this.A01, this.A0I);
            this.A09 = new C3413vU(this.A03, getAdDataBundle(), this.A0J.A08(), this.A0F, this.A0J.A0C(), this.A05);
            addView(this.A09.A0K(getCtaButton()), new RelativeLayout.LayoutParams(-1, -1));
            return;
        }
        if (enumC2960o7A00 == EnumC2960o7.A05) {
            if (this.A06 != null) {
                return;
            }
            AbstractC3111qc.A0e(this.A02, getCtaButton(), getAdDetailsView(), this.A01, this.A0I);
            this.A06 = new C3358ub(this.A03, getAdDataBundle(), this.A0J.A08(), this.A0F, this.A0J.A0C());
            addView(this.A06.A0D(getCtaButton()), new RelativeLayout.LayoutParams(-1, -1));
            return;
        }
        if (!getAdDataBundle().A32().A0L().A03().isEmpty()) {
            if (getAdDataBundle().A32().A0L().A04()) {
                this.A0B = new C2546hI(this.A03, getAdDataBundle(), this.A0G, getCtaButton(), this.A0F, this.A0J.A08());
                AbstractC3111qc.A0e(this.A05, getAdDetailsView(), this.A02);
                A05();
                return;
            }
        } else if (getAdDataBundle().A32().A0L().A04() || getAdDataBundle().A32().A0L().A05()) {
            A07();
            A06();
            return;
        }
        A0G(enumC2556hS);
        String[] strArr = A0N;
        if (strArr[2].length() != strArr[0].length()) {
            throw new RuntimeException();
        }
        A0N[5] = "XwWMDLrqRvQWrOlwGXJRzy5eNtvO8QzI";
    }

    private void A0G(EnumC2556hS enumC2556hS) {
        if (this.A00 == null) {
        }
        this.A0K.A0i(false);
        this.A0K.setVisibility(8);
        switch (C3379uw.A00[enumC2556hS.ordinal()]) {
            case 1:
                getAdDetailsView().setVisibility(0);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.setMargins(0, A1j(this.A05), 0, 0);
                layoutParams.addRule(2, getAdDetailsView().getId());
                addView(this.A00, layoutParams);
                break;
            case 2:
                AbstractC3111qc.A0e(getAdDetailsView());
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams2.setMargins(AbstractC1563Ef.A0M, AbstractC1563Ef.A0M, AbstractC1563Ef.A0M, AbstractC1563Ef.A0M);
                addView(this.A00, layoutParams2);
                break;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1563Ef, com.facebook.ads.redexgen.X.AbstractC3370un
    public final void A1Q() {
        super.A1Q();
        A08();
        getAdDetailsView().A0j();
        if (this.A09 != null) {
            this.A09.A0L();
        }
        C3358ub c3358ub = this.A06;
        if (A0N[5].charAt(17) != 'k') {
            A0N[6] = "md7rIfygLfbWPIkKcE";
            if (c3358ub != null) {
                this.A06.A0E();
            }
            if (this.A0B != null) {
                this.A0B.A0Y();
            }
            if (this.A08 != null) {
                this.A08.A0H();
            }
            this.A0F.removeCallbacksAndMessages(null);
            if (A0N[3].length() == 25) {
                A0N[5] = "bB4JBA3ZSEqYzY8c8XgwhRx5D9raQ3WM";
                return;
            }
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1563Ef, com.facebook.ads.redexgen.X.AbstractC3370un
    public final void A1X(C2420fE c2420fE, String str, double d, Bundle bundle) {
        super.A1X(c2420fE, str, d, bundle);
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (!bundle.getBoolean(A04(2, 31, 103), false)) {
            A0C();
        }
        if (bundle.getBoolean(A04(57, 18, 29), false)) {
            A0B();
        }
        if (bundle.getBoolean(A04(33, 24, 58), false)) {
            C3344uN c3344uN = this.A0I;
            if (A0N[1].charAt(18) != '3') {
                throw new RuntimeException();
            }
            String[] strArr = A0N;
            strArr[2] = "jjtMTZWEM7Dg1szUnnnmuTjwvMhej";
            strArr[0] = "cexdZia4vusGbXInA5fVVHDcQrSB4";
            c3344uN.A07(this);
        }
        if (A05() && (getAdDetailsView() instanceof AbstractC1576Es)) {
            AbstractC1576Es abstractC1576Es = (AbstractC1576Es) getAdDetailsView();
            String[] strArr2 = A0N;
            if (strArr2[7].length() != strArr2[4].length()) {
                String[] strArr3 = A0N;
                strArr3[2] = "Ih6EqgYtvSfaYgSNPPElGp7Lxj0t8";
                strArr3[0] = "h5CA5aG2lPOu2yMQLS9sdpZh4eIWu";
                abstractC1576Es.A0q();
                return;
            }
            String[] strArr4 = A0N;
            strArr4[7] = "00UfvTGlPPvipTISrgumxqYWr80Pn";
            strArr4[4] = "mO62e8xwcE";
            abstractC1576Es.A0q();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3370un
    public final void A1Y(C5Y c5y) {
        super.A1Y(c5y);
        if (A05() && !getAdDataBundle().A2D()) {
            removeView(getAdDetailsView());
        }
        A0B();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3370un
    public final void A1Z(BD bd) {
        super.A1Z(bd);
        if (this.A07 != null && this.A07.getVisibility() == 0) {
            return;
        }
        if (A05()) {
            this.A03.A0F().AM1(AbstractC3046pZ.A00((float) this.A0J.A05().A1F()), getResources().getConfiguration().orientation, true, false, AbstractC2386ef.A0E(this.A0J.A04()));
        }
        Resources resources = getResources();
        if (A0N[5].charAt(17) == 'k') {
            throw new RuntimeException();
        }
        A0N[6] = "ip031XD9FRryimrL8V";
        A1t(resources.getConfiguration().orientation);
        if (getAdDataBundle().A2O()) {
            this.A0K.setOnClickListener(getCtaButton());
        }
        if (A05()) {
            getAdDetailsView().setVisibility(0);
            if (getAdDetailsView() instanceof AbstractC1576Es) {
                ((AbstractC1576Es) getAdDetailsView()).A0u(getResources().getConfiguration().orientation);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3370un
    public final void A1a(C5V c5v, int i) {
        super.A1a(c5v, i);
        int videoLengthMs = c5v.A00();
        int remainingVideoTimeInMillis = this.A0K.getDuration();
        int videoLengthMs2 = remainingVideoTimeInMillis - videoLengthMs;
        if (getAnimationPlugin() != null && videoLengthMs2 < 3000 && getAnimationPlugin().A0M()) {
            getAnimationPlugin().A0I();
        }
        if ((getAdDetailsView() instanceof AbstractC1576Es) && !this.A0J.A05().A2d()) {
            int currentPosMs = c5v.A00();
            ((AbstractC1576Es) getAdDetailsView()).A0s(((remainingVideoTimeInMillis * i) + currentPosMs) / 1000);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3370un
    public final void A1b(boolean z) {
        super.A1b(z);
        getAdDetailsView().A0m(z);
        if (this.A07 != null) {
            this.A07.A1b(z);
        }
        if (this.A09 != null) {
            this.A09.A0N(z);
        }
        C3358ub c3358ub = this.A06;
        String[] strArr = A0N;
        if (strArr[7].length() == strArr[4].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0N;
        strArr2[7] = "iXZFA7pvq2EjOt4WoFSsptv7Y6FsA";
        strArr2[4] = "3FZLJfDRd9";
        if (c3358ub != null) {
            this.A06.A0G(z);
        }
        if (this.A0B != null) {
            this.A0B.A0e(z);
        }
        if (this.A08 != null) {
            this.A08.A0J(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3370un
    public final boolean A1d() {
        return getAdInfo().A0W();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3370un
    public final boolean A1g() {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x004a  */
    @Override // com.facebook.ads.redexgen.X.AbstractC3370un
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean A1i(boolean r6) {
        /*
            r5 = this;
            r4 = 1
            if (r6 == 0) goto L33
            boolean r0 = r5.A0E
            if (r0 != 0) goto L33
            java.util.concurrent.atomic.AtomicBoolean r0 = r5.A09
            boolean r3 = r0.get()
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C13726f.A0N
            r0 = 7
            r1 = r2[r0]
            r0 = 4
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L65
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C13726f.A0N
            java.lang.String r1 = "IfEmWBIDBUNw5tL7YhS4lNzldGhzw"
            r0 = 2
            r2[r0] = r1
            java.lang.String r1 = "8CoNQoXVMdzgwU1krh95bRLsSKKH4"
            r0 = 0
            r2[r0] = r1
            if (r3 != 0) goto L33
            com.facebook.ads.redexgen.X.uN r0 = r5.A0I
            r0.A07(r5)
            return r4
        L33:
            com.facebook.ads.redexgen.X.fE r0 = r5.getAdInfo()
            boolean r3 = r0.A0W()
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C13726f.A0N
            r0 = 5
            r1 = r1[r0]
            r0 = 17
            char r1 = r1.charAt(r0)
            r0 = 107(0x6b, float:1.5E-43)
            if (r1 == r0) goto L65
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C13726f.A0N
            java.lang.String r1 = "YRUjLZqfjvY5EOxU383ujQcW8j7gUgor"
            r0 = 1
            r2[r0] = r1
            if (r3 == 0) goto L63
            java.util.concurrent.atomic.AtomicBoolean r0 = r5.A09
            boolean r0 = r0.get()
            if (r0 != 0) goto L63
            com.facebook.ads.redexgen.X.Be r1 = r5.A0K
            com.facebook.ads.redexgen.X.ex r0 = com.facebook.ads.redexgen.X.EnumC2403ex.A09
            r1.A0e(r0)
            return r4
        L63:
            r0 = 0
            return r0
        L65:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C13726f.A1i(boolean):boolean");
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1563Ef
    public final AbstractC3309to A1k(C3374ur c3374ur, C2420fE c2420fE, String str) {
        double dA1F = c3374ur.A05().A1F();
        if (A05()) {
            return new C3354uX((float) dA1F, str, c3374ur.A06(), getColors(), c3374ur.A05(), c3374ur.A0C(), getCtaButton(), AbstractC1563Ef.A0H, false, c3374ur.A07(), c3374ur.A0F(), c3374ur.A0A(), c3374ur.A0E(), c3374ur.A08(), false).A03();
        }
        return new C1565Eh(c3374ur.A06(), getCtaButton(), AbstractC1563Ef.A0I, c2420fE.A0J().A00() == EnumC2425fJ.A05, getColors(), c2420fE.A0K().A07(), str, c3374ur.A07(), c3374ur.A0C(), c3374ur.A0F(), c3374ur.A0A(), c3374ur.A05());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1563Ef
    public final void A1l() {
        super.A1l();
        if (getAnimationPlugin() != null) {
            getAnimationPlugin().ABd(this.A0K);
        }
    }

    public final void A1q() {
        getCtaButton().A0E(A04(75, 9, 71));
    }

    public final void A1r() {
        if (getAdDetailsView() instanceof AbstractC1576Es) {
            ((AbstractC1576Es) getAdDetailsView()).setPlaceHolderTextForRewardsConversion(getAdDataBundle().A1o());
        }
    }

    public final void A1s() {
        new C2917nO(this.A0J.A05().A37(), getAdEventManager()).A04(EnumC2916nN.A0v, null);
        if (this.A0J.A0B() != null) {
            this.A0J.A0B().setVisibility(8);
            String[] strArr = A0N;
            if (strArr[2].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            A0N[6] = "yAwhrDcExjWPfFDTEi";
            removeView(this.A0J.A0B());
        }
        removeView(this.A07);
        removeView(this.A0K);
        A08();
        removeView(getAdDetailsView());
        removeView(this.A0L);
        removeView(this.A00);
        if (this.A0B != null) {
            removeView(this.A0B.A0X());
        }
        if (this.A0J.A05().A2d()) {
            A1n();
        } else {
            A1m();
        }
    }

    public final void A1t(int i) {
        if (!A05()) {
            return;
        }
        this.A03.A0F().AM3(i);
        this.A0K.A0a(i);
        A1o(i, this.A0K, (RelativeLayout) this.A0K.getVideoView());
    }

    public final void A1u(C5Z c5z) {
        if (this.A07 != null) {
            boolean z = this.A07 instanceof ER;
            if (A0N[3].length() != 25) {
                throw new RuntimeException();
            }
            A0N[5] = "FAigyzJhEFxQxsaDiDi5NbLqtOf6Lp3I";
            if (z) {
                ((ER) this.A07).A1j(c5z);
            }
            if (this.A07 instanceof ES) {
                ((ES) this.A07).A1j(c5z);
            }
            this.A07.A1Q();
            removeView(this.A07);
            if (A0N[6].length() != 18) {
                String[] strArr = A0N;
                strArr[7] = "VyeDXSZFGYmD1QmQMyFsICGfXcawo";
                strArr[4] = "LIOwJh30UZ";
                this.A07 = null;
            } else {
                String[] strArr2 = A0N;
                strArr2[7] = "wN3IsD8puMayp9KO28b4vVZi0fOl6";
                strArr2[4] = "vypOhhEh5B";
                this.A07 = null;
            }
        }
        getAdDetailsView().setVisibility(0);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3370un
    public int getCloseButtonStyle() {
        if (getAdDataBundle().A2n() && this.A05 != null) {
            return this.A05.getToolbarActionMode();
        }
        if (this.A0D) {
            if (getAdDataBundle().A3N()) {
                return 8;
            }
            return 2;
        }
        if (A1d() && !super.A09.get()) {
            return 1;
        }
        return super.getCloseButtonStyle();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1563Ef, com.facebook.ads.redexgen.X.AbstractC3370un, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.A07 != null && this.A07.getVisibility() == 0) {
            getAdDetailsView().setVisibility(8);
            return;
        }
        if (this.A09 != null && super.A09.get()) {
            this.A09.A0M(configuration.orientation);
            String[] strArr = A0N;
            if (strArr[7].length() != strArr[4].length()) {
                A0N[1] = "DO7In235juv9PXUKV934zSaX5akZYCRG";
                return;
            }
        } else {
            C3358ub c3358ub = this.A06;
            String[] strArr2 = A0N;
            if (strArr2[2].length() == strArr2[0].length()) {
                A0N[3] = "fUeg7uXpIwsYCOJvIzf4Pz9qp";
                if (c3358ub != null && super.A09.get()) {
                    this.A06.A0F(configuration.orientation);
                    return;
                }
                if (getAdDataBundle().A32().A0L().A04() && this.A0B != null && super.A09.get()) {
                    this.A0B.A0a(configuration.orientation);
                    if (A0N[3].length() != 25) {
                        throw new RuntimeException();
                    }
                    A0N[5] = "kZmqBw7HqjefhdtwCyHYueahbgSJOGXS";
                    return;
                }
                A1t(configuration.orientation);
                return;
            }
        }
        throw new RuntimeException();
    }

    public void setVideoAdViewListener(InterfaceC3094qL interfaceC3094qL) {
        if (this.A07 instanceof ER) {
            ((ER) this.A07).setVideoAdViewListener(interfaceC3094qL);
        }
        if (this.A07 instanceof ES) {
            ((ES) this.A07).setVideoAdViewListener(interfaceC3094qL);
        }
    }
}
