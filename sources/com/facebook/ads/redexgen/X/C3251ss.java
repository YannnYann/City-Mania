package com.facebook.ads.redexgen.X;

import android.animation.LayoutTransition;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ss, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3251ss extends LinearLayout {
    public static String[] A0I = {"kYky", "Ytyb6EqPolkd3IBPRyelkKTSOwPpDK", "T7mJgPxrQO7oXK5", "ntUdAWqKDjSpARXDvSYNWruqLRNJVSnQ", "EUE8AWSPEnh2CCxvEJvcwP9LMDnlI69H", "1sRbwp1vEOWpoihmxUd6HSpJGtNrEdLQ", "KMlCf6mmSTXsWQ", "wQ59sdNYsDWf07oSSS0IvkK4b2nAfpeC"};
    public ImageView A00;
    public ImageView A01;
    public InterfaceC3252st A02;
    public Runnable A03;
    public boolean A04;
    public final int A05;
    public final Bitmap A06;
    public final Bitmap A07;
    public final Bitmap A08;
    public final Bitmap A09;
    public final Bitmap A0A;
    public final Bitmap A0B;
    public final LA A0C;
    public final C1643Hi A0D;
    public final C2917nO A0E;
    public final InterfaceC3144r9 A0F;
    public final EnumC3254sv A0G;
    public final EnumC3257sy A0H;

    public C3251ss(C1643Hi c1643Hi, boolean z, LA la, C2917nO c2917nO, InterfaceC3144r9 interfaceC3144r9, EnumC3254sv enumC3254sv, InterfaceC3252st interfaceC3252st, EnumC3257sy enumC3257sy) {
        this(c1643Hi, z, la, c2917nO, interfaceC3144r9, enumC3254sv, enumC3257sy);
        this.A02 = interfaceC3252st;
    }

    public C3251ss(C1643Hi c1643Hi, boolean z, LA la, C2917nO c2917nO, InterfaceC3144r9 interfaceC3144r9, EnumC3254sv enumC3254sv, EnumC3257sy enumC3257sy) {
        super(c1643Hi);
        this.A07 = AbstractC3123qo.A01(EnumC3122qn.CREDIT_LINE_INFO_ICON);
        this.A06 = AbstractC3123qo.A01(EnumC3122qn.CREDIT_LINE_DETAIL_ICON);
        this.A04 = false;
        this.A08 = AbstractC3123qo.A01(EnumC3122qn.AD_CHOICE_ICON);
        this.A09 = AbstractC3123qo.A01(EnumC3122qn.AD_CHOICE_TEXT);
        this.A0A = AbstractC3123qo.A01(EnumC3122qn.AD_CREDIT_LINE_COLLAPSE_TEXT);
        this.A0B = AbstractC3123qo.A01(EnumC3122qn.CREDIT_LINE_TEXT);
        this.A05 = la.A2z();
        this.A0E = c2917nO;
        this.A0F = interfaceC3144r9;
        this.A0G = enumC3254sv;
        this.A0D = c1643Hi;
        this.A0C = la;
        this.A0H = enumC3257sy;
        A05();
        A0K(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A02() {
        AbstractC3111qc.A0N(this.A00, 1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 100);
        A0E(3, 300, new InterfaceC3238sf() { // from class: com.facebook.ads.redexgen.X.FA
            @Override // com.facebook.ads.redexgen.X.InterfaceC3238sf
            public final void ALQ(Object obj, long j) {
                this.A00.A0U(obj, j);
            }
        }, new C3247so(this));
        postDelayed(new Runnable() { // from class: com.facebook.ads.redexgen.X.sj
            @Override // java.lang.Runnable
            public final void run() {
                this.A00.A0R();
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A03() {
        A0E(2, 300, new InterfaceC3238sf() { // from class: com.facebook.ads.redexgen.X.FB
            @Override // com.facebook.ads.redexgen.X.InterfaceC3238sf
            public final void ALQ(Object obj, long j) {
                this.A00.A0V(obj, j);
            }
        }, new C3245sm(this));
        AbstractC3111qc.A0N(this.A00, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f, 0);
        AbstractC3111qc.A0P(this.A00, 0);
    }

    private void A04() {
        if (this.A04 && this.A03 != null) {
            A06();
            A02();
        }
    }

    private void A05() {
        switch (this.A0H) {
            case A03:
                AbstractC3253su.A03(this.A0D, this.A0G);
                break;
            case A02:
                AbstractC3253su.A02(this.A0D, this.A0G);
                break;
        }
    }

    private void A06() {
        if (this.A04 && this.A03 != null) {
            removeCallbacks(this.A03);
            this.A03 = null;
        }
        this.A04 = false;
    }

    private void A07() {
        switch (this.A0H) {
            case A02:
                AbstractC3111qc.A0O(this, -859190839);
                break;
            default:
                AbstractC3111qc.A0O(this, -870569165);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A08() {
        switch (this.A0H) {
            case A02:
                this.A01.setPadding(AbstractC3068pv.A0U, AbstractC3068pv.A00, AbstractC3068pv.A0B, AbstractC3068pv.A00);
                break;
            case A04:
                this.A01.setPadding(AbstractC3068pv.A0U, AbstractC3068pv.A00, AbstractC3068pv.A0U, AbstractC3068pv.A00);
                this.A01.setVisibility(8);
                break;
            default:
                this.A01.setPadding(AbstractC3068pv.A0K, AbstractC3068pv.A00, AbstractC3068pv.A0B, AbstractC3068pv.A00);
                break;
        }
    }

    private void A09() {
        switch (this.A0H) {
            case A02:
                A0F(this.A00, this.A09, AbstractC3068pv.A00, AbstractC3068pv.A01, AbstractC3068pv.A0U, AbstractC3068pv.A01, AbstractC3068pv.A0X, 1123);
                break;
            case A04:
                A0F(this.A00, this.A0B, AbstractC3068pv.A02, AbstractC3068pv.A00, AbstractC3068pv.A02, AbstractC3068pv.A00, -2, 1126);
                break;
            default:
                A0F(this.A00, this.A06, AbstractC3068pv.A00, AbstractC3068pv.A0B, AbstractC3068pv.A0U, AbstractC3068pv.A0B, -2, 1125);
                break;
        }
    }

    private void A0A() {
        switch (this.A0H) {
            case A02:
                ImageView imageView = this.A01;
                Bitmap bitmap = this.A08;
                int i = AbstractC3068pv.A0K;
                int i2 = AbstractC3068pv.A00;
                int i3 = AbstractC3068pv.A0K;
                if (A0I[6].length() != 14) {
                    A0F(imageView, bitmap, i, i2, i3, AbstractC3068pv.A00, AbstractC3068pv.A0X, 1122);
                    return;
                } else {
                    A0I[1] = "3V7eP7xG7WTZc9MDvH5LSGfpfKaqXB";
                    A0F(imageView, bitmap, i, i2, i3, AbstractC3068pv.A00, AbstractC3068pv.A0X, 1122);
                    return;
                }
            case A04:
                ImageView imageView2 = this.A01;
                Bitmap bitmap2 = this.A0A;
                int i4 = AbstractC3068pv.A0U;
                if (A0I[6].length() != 14) {
                    throw new RuntimeException();
                }
                String[] strArr = A0I;
                strArr[4] = "BfuGKUtJXOjLFO9TkfLBBgMAfanlH5m0";
                strArr[7] = "PCZaCPjK2uAoJJ2LfmWPR1QmBonTi8PG";
                A0F(imageView2, bitmap2, i4, AbstractC3068pv.A00, AbstractC3068pv.A0U, AbstractC3068pv.A00, -2, 1127);
                return;
            default:
                A0F(this.A01, this.A07, AbstractC3068pv.A0K, AbstractC3068pv.A00, AbstractC3068pv.A0K, AbstractC3068pv.A00, -2, 1124);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0B() {
        this.A03 = new Runnable() { // from class: com.facebook.ads.redexgen.X.si
            @Override // java.lang.Runnable
            public final void run() {
                this.A00.A02();
            }
        };
        postDelayed(this.A03, this.A05);
    }

    private void A0C() {
        this.A04 = true;
        AbstractC3111qc.A0P(this.A00, 0);
        A0B();
    }

    private final void A0D() {
        AbstractC3111qc.A0P(this.A00, 8);
        AbstractC3111qc.A0P(this.A01, 0);
        if (this.A0H == EnumC3257sy.A04) {
            this.A01.setPadding(AbstractC3068pv.A0U, AbstractC3068pv.A00, AbstractC3068pv.A0U, AbstractC3068pv.A00);
        } else {
            this.A01.setPadding(AbstractC3068pv.A0K, AbstractC3068pv.A00, AbstractC3068pv.A0K, AbstractC3068pv.A00);
        }
    }

    private void A0E(int i, int i2, InterfaceC3238sf interfaceC3238sf, LayoutTransition.TransitionListener transitionListener) {
        LayoutTransition layoutTransition = new LayoutTransition();
        layoutTransition.setAnimator(i, new C3249sq(this, i2, interfaceC3238sf));
        layoutTransition.addTransitionListener(transitionListener);
        setLayoutTransition(layoutTransition);
    }

    private void A0F(ImageView imageView, Bitmap bitmap, int i, int i2, int i3, int i4, int i5, int i6) {
        AbstractC3111qc.A0H(i6, imageView);
        imageView.setImageBitmap(bitmap);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setAdjustViewBounds(true);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, i5);
        imageView.setPadding(i, i2, i3, i4);
        imageView.setLayoutParams(layoutParams);
    }

    private void A0K(boolean z) {
        setOrientation(0);
        setPadding(AbstractC3068pv.A00, AbstractC3068pv.A0K, AbstractC3068pv.A00, AbstractC3068pv.A0K);
        setClipToPadding(false);
        setGravity(17);
        A07();
        setCornerRadius(AbstractC3068pv.A0D);
        this.A01 = new ImageView(getContext());
        A0A();
        addView(this.A01);
        if (this.A0H == EnumC3257sy.A04) {
            this.A01.setVisibility(8);
        }
        this.A00 = new ImageView(getContext());
        A09();
        addView(this.A00);
        A0L(z);
        setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.sh
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.A00.A0T(view);
            }
        });
    }

    private void A0L(boolean z) {
        if (z && (this.A0H == EnumC3257sy.A03 || this.A0H == EnumC3257sy.A04)) {
            A0C();
        } else {
            AbstractC3111qc.A0P(this.A00, 8);
            AbstractC3111qc.A0P(this.A01, 0);
        }
    }

    public final void A0O() {
        A06();
    }

    public final void A0P() {
        A06();
        A0D();
    }

    public final void A0Q() {
        this.A04 = true;
        post(new Runnable() { // from class: com.facebook.ads.redexgen.X.sk
            @Override // java.lang.Runnable
            public final void run() {
                this.A00.A0S();
            }
        });
    }

    public final /* synthetic */ void A0R() {
        AbstractC3111qc.A0P(this.A00, 8);
    }

    public final /* synthetic */ void A0S() {
        postDelayed(new Runnable() { // from class: com.facebook.ads.redexgen.X.sg
            @Override // java.lang.Runnable
            public final void run() {
                this.A00.A03();
            }
        }, 300L);
    }

    public final /* synthetic */ void A0T(View view) {
        if (this.A04) {
            if (this.A0H == EnumC3257sy.A04) {
                return;
            }
            A04();
            if (this.A02 != null) {
                this.A02.AEX(view);
                return;
            } else {
                AbstractC3253su.A08(this.A0E, this.A0D, this.A0F, this.A0C, this.A0G);
                return;
            }
        }
        AbstractC3253su.A01(this.A0C, this.A0G, this.A0D);
        A0Q();
    }

    public final /* synthetic */ void A0U(Object obj, long j) {
        ((View) obj).animate().translationX(getWidth()).setDuration(j).setInterpolator(new InterpolatorC3033pL(1.5f)).setListener(new C3248sp(this)).start();
    }

    public final /* synthetic */ void A0V(Object obj, long j) {
        View view = (View) obj;
        view.setTranslationX(getWidth());
        view.animate().translationX(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT).setDuration(j).setListener(new C3246sn(this)).setInterpolator(new pM(1.5f)).start();
    }

    private void setCornerRadius(float f) {
        setOutlineProvider(new C3244sl(this, f));
        setClipToOutline(true);
    }
}
