package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.facebook.ads.internal.view.FullScreenAdToolbar;
import com.vungle.ads.internal.protos.Sdk;
import java.text.NumberFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class FS extends RelativeLayout implements InterfaceC3145rA {
    public static byte[] A0h;
    public static String[] A0i = {"57rzzR6raHrat8cHk0n2c9utIvWN6OL8", "vZo4DQACnHxpUIABCEPhLIrXR", "3pKkUgRnbq5D8", "3oPHUcYdGBLGT6sjvwgTS6nCZs8dHXKK", "yMOWmEDq6oq3Yf8aoY", "BRjJ0geTmUVj6Aeo1VqVThKYcHpwhF7A", "bCnfD5Zsza6fNT9UI62TNCVdI9Gt63Qd", "0XbQU4AacrxlEwxF12eBigHvJ8"};
    public static final int A0j;
    public static final int A0k;
    public static final int A0l;
    public static final int A0m;
    public static final int A0n;
    public static final int A0o;
    public static final RelativeLayout.LayoutParams A0p;
    public View A00;
    public LinearLayout A01;
    public RelativeLayout A02;
    public RelativeLayout A03;
    public RelativeLayout A04;
    public Toast A05;
    public C2683jY A06;
    public C3055pi A07;
    public C3251ss A08;
    public C3255sw A09;
    public ViewOnClickListenerC1569El A0A;
    public C2561hX A0B;
    public C2499gV A0C;
    public String A0D;
    public String A0E;
    public boolean A0F;
    public boolean A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean A0J;
    public boolean A0K;
    public boolean A0L;
    public boolean A0M;
    public final Handler A0N;
    public final LA A0O;
    public final C2443fb A0P;
    public final InterfaceC2689je A0Q;
    public final C1643Hi A0R;
    public final InterfaceC2909nG A0S;
    public final C2917nO A0T;
    public final C3055pi A0U;
    public final ViewOnSystemUiVisibilityChangeListenerC3097qO A0V;
    public final InterfaceC3144r9 A0W;
    public final InterfaceC3200s3 A0X;
    public final InterfaceC3343uM A0Y;
    public final C3344uN A0Z;
    public final C2555hR A0a;
    public final AtomicBoolean A0b;
    public final AtomicBoolean A0c;
    public final boolean A0d;
    public final boolean A0e;
    public final boolean A0f;
    public final AbstractC3137r2 A0g;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public FS(C1643Hi c1643Hi, InterfaceC2909nG interfaceC2909nG, InterfaceC3144r9 interfaceC3144r9, LA la, String str, InterfaceC3200s3 interfaceC3200s3, boolean z) {
        super(c1643Hi);
        String strA0D = A0D(0, 0, 66);
        this.A0E = strA0D;
        this.A0D = strA0D;
        this.A0Q = new FZ(this);
        this.A0c = new AtomicBoolean(false);
        this.A0b = new AtomicBoolean(false);
        this.A0K = false;
        this.A0M = true;
        this.A0H = false;
        this.A0G = false;
        this.A0N = new Handler(Looper.getMainLooper());
        this.A0F = false;
        this.A0f = z;
        this.A0R = c1643Hi;
        this.A0W = interfaceC3144r9;
        this.A0S = interfaceC2909nG;
        this.A0O = la;
        this.A0P = la.A32().A0I().A07();
        this.A0T = new C2917nO(this.A0O.A37(), this.A0S);
        this.A0X = interfaceC3200s3;
        this.A0C = new C2499gV(c1643Hi, this.A0X, str, this.A0W);
        if (la.A32().A0I().A07() != null) {
            this.A0I = la.A32().A0I().A07().A0c();
            this.A0E = la.A32().A0I().A07().A0P();
            this.A0D = la.A32().A0I().A07().A0O();
        }
        this.A0J = this.A0O.A32().A0T() && this.A0O.A32().A0I().A03() > 0;
        this.A0e = this.A0O.A32().A0I().A0B();
        if (this.A0P == null) {
            this.A0W.A5C(this.A0X.A8c());
            this.A0W.A5C(this.A0X.A8X());
        }
        int iA03 = this.A0P != null ? !this.A0P.A0h() ? (this.A0J && this.A0e) ? this.A0O.A32().A0I().A03() : this.A0P.A0C() : this.A0P.A0E() : 0;
        this.A0c.set(!this.A0P.A0Z());
        FZ fz = null;
        this.A0U = new C3055pi(iA03, new FU(this, fz));
        this.A0d = C2888mv.A0m(this.A0R);
        this.A0g = A07();
        if (this.A0P.A0h()) {
            this.A0g.A09();
        }
        this.A0a = new C2555hR(this.A0R, this.A0S, this.A0O);
        String strA08 = la.A32().A0I().A08();
        if (strA08 != null) {
            AbstractC3353uW.A00(c1643Hi, this, strA08);
        }
        this.A0V = new ViewOnSystemUiVisibilityChangeListenerC3097qO(this);
        this.A0V.A05(EnumC3096qN.A03);
        if (C2888mv.A2L(this.A0R)) {
            this.A0g.setProgressSpinnerInvisible(true);
        }
        FT ft = new FT(this, fz);
        HashMap map = new HashMap();
        map.put(A0D(56, 9, 37), this.A0X.A9O());
        this.A0B = new C2561hX(this.A0R, this.A0O, this.A0P, this.A0S, ft, map);
        A0K();
        this.A0W.A4V(this, new RelativeLayout.LayoutParams(-1, -1));
        A0H();
        this.A0Y = new FY(this);
        this.A0Z = new C3344uN(this.A0R, this.A0g, this.A0O, (C1484Be) null, this.A0W, this.A0Y, this.A0A, this.A02, this.A0B);
        if (Build.VERSION.SDK_INT >= 35) {
            setFitsSystemWindows(true);
        }
        if (this.A0P.A0h()) {
            this.A0R.A0F().AFX();
        }
    }

    public static String A0D(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0h, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 40);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0P() {
        A0h = new byte[]{-98, 112, -4, 20, 6, 4, 20, -2, -77, -68, -71, -77, -69, -81, -65, -62, -71, -73, -71, -66, -17, -8, -11, -17, -9, -21, -1, -5, 1, -2, -17, -15, -60, -55, -49, -64, -51, -50, -49, -60, -49, -60, -68, -57, -45, -58, -39, -50, -37, -54, -60, -56, -47, -50, -56, -48, -67, -71, -82, -80, -78, -70, -78, -69, -63, -85, -98, -80, -102, -85, -99, -98, -99, -104, -81, -94, -99, -98, -88, -39, -57, -60, -40, -53, -57, -39, -63, -59, -50, -53, -59, -51};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final /* synthetic */ void onStart() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final /* synthetic */ void onStop() {
    }

    static {
        A0P();
        A0p = new RelativeLayout.LayoutParams(-1, -1);
        A0k = AbstractC3068pv.A0P;
        A0l = AbstractC3068pv.A0A;
        A0o = AbstractC3068pv.A08;
        A0m = AbstractC3068pv.A06;
        A0n = AbstractC2526gx.A02(-1, 77);
        A0j = AbstractC3068pv.A0X;
    }

    public FS(C1643Hi c1643Hi, InterfaceC2909nG interfaceC2909nG, InterfaceC3144r9 interfaceC3144r9, LA la, String str, InterfaceC3200s3 interfaceC3200s3) {
        this(c1643Hi, interfaceC2909nG, interfaceC3144r9, la, str, interfaceC3200s3, false);
    }

    private FullScreenAdToolbar A07() {
        FullScreenAdToolbar fullScreenAdToolbar = new FullScreenAdToolbar(this.A0R, this.A0W, this.A0T, 0, this.A0O.A2u(), this.A0I);
        fullScreenAdToolbar.setFullscreen(true);
        fullScreenAdToolbar.A0D(this.A0O.A31().A01(), ViewOnClickListenerC1569El.A05(this.A0O));
        fullScreenAdToolbar.setPageDetailsVisible(false);
        fullScreenAdToolbar.setPageDetails(this.A0O.A35(), this.A0O.A37(), this.A0P.A0C(), this.A0O.A36());
        fullScreenAdToolbar.setToolbarListener(new FV(this));
        return fullScreenAdToolbar;
    }

    private ViewOnClickListenerC1569El A09() {
        if (this.A0B == null || this.A0B.getViewabilityChecker() == null || this.A0B.getTouchDataRecorder() == null) {
            return null;
        }
        ViewOnClickListenerC1569El viewOnClickListenerC1569El = new ViewOnClickListenerC1569El(this.A0R, this.A0X.A7x(), this.A0O.A31().A01(), this.A0S, this.A0W, this.A0B.getViewabilityChecker(), this.A0B.getTouchDataRecorder(), this.A0O.A33());
        AbstractC3111qc.A0L(viewOnClickListenerC1569El);
        viewOnClickListenerC1569El.setText(this.A0O.A32().A0K().A05());
        viewOnClickListenerC1569El.setTextSize(14.0f);
        viewOnClickListenerC1569El.setPadding(AbstractC3068pv.A02, AbstractC3068pv.A02, AbstractC3068pv.A02, AbstractC3068pv.A02);
        viewOnClickListenerC1569El.setOnClickListener(new ViewOnClickListenerC3170rZ(this));
        return viewOnClickListenerC1569El;
    }

    private C3352uV A0B() {
        C3352uV c3352uV = new C3352uV(this.A0R, this.A0O.A31().A01(), true, !this.A0J ? 16 : 17, !this.A0J ? 14 : 13, 0);
        c3352uV.A04(this.A0O.A32().A0J().A0H(), this.A0O.A32().A0J().A0G(), null, false, true);
        TextView descriptionTv = c3352uV.getDescriptionTextView();
        descriptionTv.setAlpha(0.8f);
        descriptionTv.setMaxLines(1);
        descriptionTv.setEllipsize(TextUtils.TruncateAt.END);
        TextView descriptionTv2 = c3352uV.getTitleTextView();
        descriptionTv2.setMaxLines(1);
        descriptionTv2.setEllipsize(TextUtils.TruncateAt.END);
        return c3352uV;
    }

    private void A0G() {
        String strA01;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(A0k, A0k);
        layoutParams.addRule(15);
        layoutParams.addRule(9);
        C3346uP c3346uP = new C3346uP(this.A0R);
        AbstractC3111qc.A0O(c3346uP, 0);
        AbstractC3111qc.A0L(c3346uP);
        new AsyncTaskC1577Et(c3346uP, this.A0R).A05(A0k, A0k).A07(this.A0O.A35().A01());
        TextView textView = new TextView(this.A0R);
        AbstractC3111qc.A0L(textView);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        textView.setTextColor(this.A0O.A31().A01().A07(true));
        textView.setText(this.A0O.A32().A0J().A0H());
        textView.setTextSize(!this.A0I ? 16.0f : 17.0f);
        textView.setMaxLines(1);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        C3348uR c3348uR = new C3348uR(this.A0R, !this.A0I ? A0o : A0m, 5, A0n, -1);
        c3348uR.setGravity(16);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -1);
        TextView titleView = new TextView(this.A0R);
        titleView.setTextColor(this.A0O.A31().A01().A07(true));
        titleView.setGravity(16);
        titleView.setIncludeFontPadding(false);
        if (!this.A0I) {
            titleView.setTextSize(13.0f);
        }
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -1);
        layoutParams3.leftMargin = AbstractC3068pv.A0X;
        LinearLayout linearLayout = new LinearLayout(this.A0R);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, A0l);
        layoutParams4.topMargin = AbstractC3068pv.A0X / 2;
        layoutParams4.addRule(3, textView.getId());
        linearLayout.addView(c3348uR, layoutParams2);
        linearLayout.addView(titleView, layoutParams3);
        RelativeLayout.LayoutParams ratingInfoContainerParams = new RelativeLayout.LayoutParams(-2, -2);
        ratingInfoContainerParams.leftMargin = AbstractC3068pv.A0X;
        ratingInfoContainerParams.addRule(1, c3346uP.getId());
        ratingInfoContainerParams.addRule(15);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        relativeLayout.addView(linearLayout, layoutParams4);
        relativeLayout.addView(textView);
        if (this.A04 != null) {
            this.A04.removeAllViews();
            this.A04.addView(relativeLayout, ratingInfoContainerParams);
            this.A04.addView(c3346uP, layoutParams);
        }
        if (TextUtils.isEmpty(this.A0O.A32().A0J().A0D())) {
            linearLayout.setVisibility(8);
            return;
        }
        linearLayout.setVisibility(0);
        if (A0i[7].length() == 4) {
            throw new RuntimeException();
        }
        A0i[7] = "eZ";
        c3348uR.setRating(Float.parseFloat(this.A0O.A32().A0J().A0D()));
        if (this.A0O.A32().A0J().A0A() == null) {
            return;
        }
        StringBuilder ratingSB = new StringBuilder();
        ratingSB.append(A0D(0, 1, 78));
        if (!this.A0I) {
            strA01 = NumberFormat.getNumberInstance().format(Integer.parseInt(this.A0O.A32().A0J().A0A()));
        } else {
            strA01 = AbstractC3080q7.A01(Integer.parseInt(this.A0O.A32().A0J().A0A()));
        }
        ratingSB.append(strA01);
        ratingSB.append(A0D(1, 1, 31));
        titleView.setText(ratingSB.toString());
    }

    private void A0H() {
        if (this.A0P.A0Z()) {
            A0J();
        } else {
            A0O();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0I() {
        this.A0L = true;
        if (this.A0O.A32().A0T()) {
            this.A0C.A06();
            this.A0W.A5D(this.A0X.A7L(), new C5Y(0, 0));
        }
    }

    private void A0J() {
        C3184rn c3184rnA0F = new C3186rp(this.A0R, this.A0O.A32().A0J(), this.A0O.A35()).A0A(this.A0O.A31().A01()).A0D(this.A0P.A0R()).A0C(this.A0P.A0L()).A09(2000).A0E(this.A0I).A0B(this.A0E).A0F();
        AbstractC2919nQ.A04(c3184rnA0F, this.A0T, EnumC2916nN.A0U);
        addView(c3184rnA0F, A0p);
        c3184rnA0F.A04(new FX(this));
    }

    private void A0K() {
        RelativeLayout.LayoutParams layoutParams;
        this.A0A = A09();
        this.A02 = new RelativeLayout(getContext());
        AbstractC3111qc.A0L(this.A02);
        this.A04 = new RelativeLayout(getContext());
        AbstractC3111qc.A0L(this.A04);
        if (this.A0d) {
            A0G();
        } else {
            RelativeLayout relativeLayout = this.A04;
            C3352uV c3352uVA0B = A0B();
            RelativeLayout.LayoutParams iconAndMetaDataContainerParams = new RelativeLayout.LayoutParams(-2, -2);
            relativeLayout.addView(c3352uVA0B, iconAndMetaDataContainerParams);
        }
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(0, 0, AbstractC3068pv.A0A, 0);
        this.A02.addView(this.A04, layoutParams2);
        if (this.A0A != null) {
            layoutParams2.addRule(0, this.A0A.getId());
            if (!this.A0I) {
                layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams.addRule(6, this.A04.getId());
                layoutParams.addRule(8, this.A04.getId());
            } else {
                layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                AbstractC3111qc.A0W(this.A0A, AbstractC3111qc.A06(-16738826, A0j));
                this.A0A.setStateListAnimator(null);
                this.A0A.setPadding(AbstractC3068pv.A0C, AbstractC3068pv.A07, AbstractC3068pv.A0C, AbstractC3068pv.A07);
                AbstractC3111qc.A0a(this.A0A);
            }
            layoutParams.addRule(11);
            this.A02.addView(this.A0A, layoutParams);
        }
        AbstractC3111qc.A0L(this.A0g);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams3.addRule(10);
        this.A01 = new LinearLayout(getContext());
        AbstractC3111qc.A0L(this.A01);
        RelativeLayout.LayoutParams adWebViewParams = new RelativeLayout.LayoutParams(-2, -2);
        adWebViewParams.setMargins(AbstractC3068pv.A0A, AbstractC3068pv.A06, AbstractC3068pv.A0A, AbstractC3068pv.A06);
        adWebViewParams.addRule(12);
        this.A01.setOrientation(1);
        RelativeLayout.LayoutParams toolbarParams = new RelativeLayout.LayoutParams(-1, -1);
        toolbarParams.setMargins(AbstractC3068pv.A0A, 0, AbstractC3068pv.A0A, 0);
        toolbarParams.addRule(3, this.A0g.getId());
        toolbarParams.addRule(2, this.A01.getId());
        this.A01.addView(this.A02, new RelativeLayout.LayoutParams(-2, -2));
        this.A03 = new RelativeLayout(getContext());
        AbstractC3111qc.A0L(this.A03);
        this.A01.addView(this.A03);
        if (this.A0O.A3F()) {
            this.A0g.A08();
            A0M();
        }
        if (this.A0O.A3U()) {
            A0L();
        }
        this.A0g.setVisibility(4);
        this.A0B.setVisibility(4);
        this.A02.setVisibility(4);
        addView(this.A0g, layoutParams3);
        addView(this.A0B, toolbarParams);
        addView(this.A01, adWebViewParams);
        if (this.A0P.A0d()) {
            this.A0B.A0C();
        }
    }

    private void A0L() {
        this.A09 = AbstractC3256sx.A02(this.A0R, EnumC3254sv.A03, this.A0O);
        AbstractC3111qc.A0L(this.A09);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(9);
        layoutParams.topMargin = AbstractC3068pv.A0A;
        this.A03.addView(this.A09, layoutParams);
    }

    private void A0M() {
        this.A08 = AbstractC3256sx.A01(this.A0R, true, this.A0O, this.A0T, this.A0W, EnumC3254sv.A03, AbstractC3253su.A00(this.A0O));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(11);
        layoutParams.topMargin = AbstractC3068pv.A0A;
        this.A03.addView(this.A08, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x011f A[PHI: r1 r3
      0x011f: PHI (r1v13 int) = (r1v8 int), (r1v24 int) binds: [B:35:0x011b, B:26:0x00d5] A[DONT_GENERATE, DONT_INLINE]
      0x011f: PHI (r3v4 int) = (r3v2 int), (r3v7 int) binds: [B:35:0x011b, B:26:0x00d5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0165 A[PHI: r1 r3
      0x0165: PHI (r1v9 int) = (r1v8 int), (r1v24 int) binds: [B:35:0x011b, B:26:0x00d5] A[DONT_GENERATE, DONT_INLINE]
      0x0165: PHI (r3v3 int) = (r3v2 int), (r3v7 int) binds: [B:35:0x011b, B:26:0x00d5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void A0N() {
        /*
            Method dump skipped, instruction units count: 542
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.FS.A0N():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0O() {
        AbstractC3111qc.A0X(this);
        if (!this.A0P.A0d()) {
            C2561hX c2561hX = this.A0B;
            if (A0i[4].length() != 18) {
                throw new RuntimeException();
            }
            String[] strArr = A0i;
            strArr[1] = "xj34PAIXy0BC0JvFurkBkOtWc";
            strArr[2] = "hWQrQPNffHRqy";
            c2561hX.A0C();
        }
        this.A0g.setVisibility(0);
        this.A0B.setVisibility(0);
        if (this.A02 != null) {
            RelativeLayout relativeLayout = this.A02;
            if (A0i[7].length() != 4) {
                A0i[7] = "GHPvfAAYCmFSIETbcdzzC0huzOqb6N";
                relativeLayout.setVisibility(0);
            } else {
                String[] strArr2 = A0i;
                strArr2[3] = "tvYjLA1oGXNhTHZAIhYTsER90pYUTPum";
                strArr2[6] = "jKhXSIgEZQzlredWxanTIzgk7i5P2ie1";
                relativeLayout.setVisibility(0);
            }
        }
        this.A0R.A0F().A3s();
        if (this.A0A != null && this.A0O.A2x() > 0 && this.A07 == null) {
            this.A07 = new C3055pi(this.A0O.A2x(), new FW(this));
            this.A07.A07();
        }
        this.A0U.A07();
        if (this.A08 != null && this.A0O.A3O()) {
            this.A08.A0Q();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0Q(int i) {
        String strValueOf = String.valueOf(i);
        Toast toast = this.A05;
        String strA0K = this.A0P.A0K();
        String progress = A0D(2, 6, Sdk.SDKError.Reason.TPAT_ERROR_VALUE);
        AbstractC3111qc.A0c(toast, strA0K.replace(progress, strValueOf), 49, 0, AbstractC3068pv.A0V);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0W(boolean z, String str) {
        this.A0H = true;
        HashMap map = new HashMap();
        map.put(A0D(8, 12, 40), z ? A0D(79, 13, 58) : A0D(44, 12, 61));
        map.put(A0D(20, 12, 100), str);
        C3329u8 c3329u8 = new C3329u8(this.A0R, this.A0X.A7x(), this.A0B.getViewabilityChecker(), this.A0B.getTouchDataRecorder(), this.A0S, this.A0O.A33(), this.A0W);
        c3329u8.A0A(this.A0O);
        c3329u8.A06(this.A0O.A37(), this.A0O.A32().A0K().A06(), map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0X() {
        if (!this.A0O.A1c().equals(A0D(65, 14, 17))) {
            if (this.A0O.A1c().equals(A0D(32, 12, 51))) {
                LA la = this.A0O;
                if (A0i[4].length() != 18) {
                    throw new RuntimeException();
                }
                A0i[0] = "r5y7OBqhAYVA47bIfl4AlIWKO2XfiX80";
                if (la.A32().A0W()) {
                }
            }
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0Y() {
        return this.A0e && !this.A0K && !this.A0M && this.A0P.A0C() < this.A0O.A32().A0I().A03();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void ABc(Intent intent, Bundle bundle, C2683jY c2683jY) {
        this.A06 = c2683jY;
        this.A06.A0A(this.A0Q);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void AGF(boolean z) {
        this.A0U.A06();
        this.A0G = true;
        if (!this.A0F && !z) {
            C3251ss c3251ss = this.A08;
            if (A0i[4].length() != 18) {
                throw new RuntimeException();
            }
            String[] strArr = A0i;
            strArr[3] = "khoeLKhAkDTHqtvHh44TDBpYJbcg0vVG";
            strArr[6] = "EayQQNVlJFU2ogZcZ4XThOAwKTaD1bU7";
            if (c3251ss != null) {
                this.A08.A0P();
            }
        }
        this.A0F = false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void AGp(boolean z) {
        if (this.A0e && this.A0M) {
            return;
        }
        boolean z2 = this.A0K;
        if (A0i[5].charAt(2) == 'm') {
            throw new RuntimeException();
        }
        A0i[0] = "UQp6GtSKm4mkcrS1rXAjxFqYQJcA6U4M";
        if (!z2 && this.A0c.get() && !this.A0U.A05()) {
            this.A0U.A07();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void AKD(Bundle bundle) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public String getCurrentClientToken() {
        return this.A0O.A37();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (Build.VERSION.SDK_INT >= 35) {
            setFitsSystemWindows(true);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b2  */
    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onDestroy() {
        /*
            r4 = this;
            com.facebook.ads.redexgen.X.qO r0 = r4.A0V
            r0.A03()
            com.facebook.ads.redexgen.X.ss r0 = r4.A08
            if (r0 == 0) goto Le
            com.facebook.ads.redexgen.X.ss r0 = r4.A08
            r0.A0O()
        Le:
            com.facebook.ads.redexgen.X.jY r0 = r4.A06
            if (r0 == 0) goto L2f
            com.facebook.ads.redexgen.X.jY r3 = r4.A06
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.FS.A0i
            r0 = 0
            r1 = r1[r0]
            r0 = 29
            char r1 = r1.charAt(r0)
            r0 = 68
            if (r1 == r0) goto Lb8
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.FS.A0i
            java.lang.String r1 = "voPpcOtL9PQSCLq1wYvqOCQr8JaLbGKq"
            r0 = 0
            r2[r0] = r1
            com.facebook.ads.redexgen.X.je r0 = r4.A0Q
            r3.A0B(r0)
        L2f:
            com.facebook.ads.redexgen.X.hX r0 = r4.A0B
            if (r0 == 0) goto L8a
            com.facebook.ads.redexgen.X.LA r0 = r4.A0O
            java.lang.String r0 = r0.A37()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L67
            com.facebook.ads.redexgen.X.nG r3 = r4.A0S
            com.facebook.ads.redexgen.X.LA r0 = r4.A0O
            java.lang.String r2 = r0.A37()
            com.facebook.ads.redexgen.X.ti r1 = new com.facebook.ads.redexgen.X.ti
            r1.<init>()
            com.facebook.ads.redexgen.X.hX r0 = r4.A0B
            com.facebook.ads.redexgen.X.c2 r0 = r0.getViewabilityChecker()
            com.facebook.ads.redexgen.X.ti r1 = r1.A05(r0)
            com.facebook.ads.redexgen.X.hX r0 = r4.A0B
            com.facebook.ads.redexgen.X.qT r0 = r0.getTouchDataRecorder()
            com.facebook.ads.redexgen.X.ti r0 = r1.A04(r0)
            java.util.Map r0 = r0.A07()
            r3.ABt(r2, r0)
        L67:
            com.facebook.ads.redexgen.X.hX r3 = r4.A0B
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.FS.A0i
            r0 = 1
            r1 = r2[r0]
            r0 = 2
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto Lb8
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.FS.A0i
            java.lang.String r1 = "HjELnbww4zRnKHk33aEIOd3z3"
            r0 = 1
            r2[r0] = r1
            java.lang.String r1 = "L9K5feiifaRZL"
            r0 = 2
            r2[r0] = r1
            r3.A0D()
        L8a:
            com.facebook.ads.redexgen.X.pi r0 = r4.A0U
            r0.A06()
            com.facebook.ads.redexgen.X.r2 r0 = r4.A0g
            r3 = 0
            r0.setToolbarListener(r3)
            android.os.Handler r0 = r4.A0N
            r0.removeCallbacksAndMessages(r3)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.FS.A0i
            r0 = 7
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 4
            if (r1 == r0) goto Lb2
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.FS.A0i
            java.lang.String r1 = "edn3At82DbAhSP2VjV"
            r0 = 4
            r2[r0] = r1
            r4.A05 = r3
            r4.A06 = r3
            return
        Lb2:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        Lb8:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.FS.onDestroy():void");
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            AGp(false);
        } else {
            if (A0i[7].length() == 4) {
                throw new RuntimeException();
            }
            A0i[0] = "oMjhyB5nK2QQecdmAxokhN3bvhPRjHlA";
            this.A0F = true;
            AGF(false);
        }
    }

    public void setListener(InterfaceC3144r9 interfaceC3144r9) {
    }

    public void setServerSideRewardHandler(C2499gV c2499gV) {
        this.A0C = c2499gV;
    }
}
