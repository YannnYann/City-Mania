package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.ironsource.M9;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.protobuf.EventTypeExtended;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.6C, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C6C extends AbstractC1546Do {
    public static byte[] A0j;
    public static String[] A0k = {"zF", "YuhgBsbCJ4GENG72FYuTSQ3UxVCmrs0t", "RSfzcHToFNO8jc1tX2m0S0AZ0vbf9kKl", "p", "lGjhRdALEILVIUsiuWCm6MXJK2R8L6Co", "wXQvDYR5huLQKlTsBS5mG0rN7ygrQvR2", "AYgBJnzxyMi9rrwHO3oB8yOhTSWVLxNu", "3k2Jytm7iEKA6X2jmmGhgFSNDYaf4AHR"};
    public static final int A0l;
    public static final int A0m;
    public static final int A0n;
    public static final int A0o;
    public static final int A0p;
    public static final int A0q;
    public static final int A0r;
    public static final int A0s;
    public static final int A0t;
    public static final int A0u;
    public static final int A0v;
    public float A00;
    public C2429fN A01;
    public C3055pi A02;
    public C3358ub A03;
    public C3386v3 A04;
    public C3413vU A05;
    public C2546hI A06;
    public EnumC2349e4 A07;
    public C1462Ai A08;
    public boolean A09;
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;
    public boolean A0D;
    public boolean A0E;
    public boolean A0F;
    public boolean A0G;
    public boolean A0H;
    public final int A0I;
    public final int A0J;
    public final int A0K;
    public final int A0L;
    public final int A0M;
    public final Handler A0N;
    public final View A0O;
    public final C1643Hi A0P;
    public final C2917nO A0Q;
    public final AbstractC3137r2 A0R;
    public final AbstractC3309to A0S;
    public final ViewOnClickListenerC1569El A0T;
    public final InterfaceC3196rz A0U;
    public final C2555hR A0V;
    public final C1489Bj A0W;
    public final C1484Be A0X;
    public final C5Z A0Y;
    public final BM A0Z;
    public final BK A0a;
    public final BG A0b;
    public final BE A0c;
    public final BC A0d;
    public final BB A0e;
    public final C1478Ay A0f;
    public final C1466Am A0g;
    public final boolean A0h;
    public final boolean A0i;

    public static String A0C(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0j, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 44);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0L() {
        A0j = new byte[]{-55, -43, -45, -108, -52, -57, -55, -53, -56, -43, -43, -47, -108, -57, -54, -39, -108, -49, -44, -38, -53, -40, -39, -38, -49, -38, -49, -57, -46, -108, -55, -46, -49, -55, -47, -53, -54, 15, 24, 27, 12, 14, 13, 8, 23, 29, 13, -33, -46, -28, -50, -33, -47, -46, -47, -52, -29, -42, -47, -46, -36, -67, -80, -85, -84, -74};
    }

    static {
        A0L();
        A0p = (int) (AbstractC3070px.A02 * 48.0f);
        A0n = AbstractC2526gx.A02(-1, 77);
        A0u = (int) (AbstractC3070px.A02 * 26.0f);
        A0v = (int) (AbstractC3070px.A02 * 12.0f);
        A0r = (int) (AbstractC3070px.A02 * 12.0f);
        A0s = (int) (AbstractC3070px.A02 * 44.0f);
        A0q = AbstractC3068pv.A0y;
        A0t = (int) (AbstractC3070px.A02 * 16.0f);
        A0o = AbstractC2526gx.A02(A0n, 90);
        A0m = (int) (AbstractC3070px.A02 * 4.0f);
        A0l = (int) (AbstractC3070px.A03 * 32.0f);
    }

    public C6C(C1643Hi c1643Hi, InterfaceC2909nG interfaceC2909nG, LA la, C2771kz c2771kz, InterfaceC3200s3 interfaceC3200s3, int i, InterfaceC3144r9 interfaceC3144r9, C2917nO c2917nO, AbstractC3137r2 abstractC3137r2, int i2, int i3, int i4, boolean z, int i5, boolean z2, boolean z3, boolean z4, InterfaceC3196rz interfaceC3196rz, int i6, int i7) {
        C2429fN c2429fNA00;
        super(c1643Hi, interfaceC3200s3, interfaceC2909nG, la, i, z3, z4, interfaceC3144r9, i7);
        this.A0N = new Handler(Looper.getMainLooper());
        this.A00 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        this.A09 = false;
        this.A0A = false;
        this.A0H = false;
        this.A0B = false;
        this.A0F = false;
        this.A0E = true;
        this.A0C = false;
        this.A0D = false;
        this.A0d = new BC() { // from class: com.facebook.ads.redexgen.X.6I
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(BD bd) {
                this.A00.A0H = true;
                if (this.A00.getAdDataBundle().A2M()) {
                    this.A00.A0P.A0F().AM1(AbstractC3046pZ.A00((float) ((AbstractC1546Do) this.A00).A08.A1F()), this.A00.getResources().getConfiguration().orientation, true, true, AbstractC2386ef.A0E(C2387eg.A00(this.A00.A0P, ((AbstractC1546Do) this.A00).A0A, "", AbstractC3036pP.A00(((AbstractC1546Do) this.A00).A08.A32().A0K().A06()), new HashMap(), ((AbstractC1546Do) this.A00).A08.A33())));
                    this.A00.A0N(this.A00.getResources().getConfiguration().orientation);
                    this.A00.A0S.setVisibility(0);
                    if (this.A00.A0S instanceof AbstractC1576Es) {
                        ((AbstractC1576Es) this.A00.A0S).A0u(this.A00.getResources().getConfiguration().orientation);
                    }
                }
                if (this.A00.getAdDataBundle().A2O()) {
                    this.A00.A0g.setOnClickListener(this.A00.A0T);
                }
            }
        };
        this.A0c = new BE() { // from class: com.facebook.ads.redexgen.X.6H
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(BF bf) {
                if (!((AbstractC1546Do) this.A00).A0C.A07()) {
                    this.A00.A1f();
                }
            }
        };
        this.A0b = new BG() { // from class: com.facebook.ads.redexgen.X.6G
            @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
            public final /* bridge */ /* synthetic */ void A03(C2855mO c2855mO) {
            }
        };
        this.A0e = new BB() { // from class: com.facebook.ads.redexgen.X.6F
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(C5V c5v) {
                this.A00.A0V(c5v);
                this.A00.A0U.AEz((this.A00.A00 * this.A00.A0X.getDuration()) + c5v.A00());
            }
        };
        this.A0Z = new BM() { // from class: com.facebook.ads.redexgen.X.6E
            public static String[] A01 = {"WHlfg22LQewOceL2LP0nfjs", "MLczN6H9d0ts9YHCrKUbmxW9Pv4xX40Z", "bfgAoKxvo7gEuP52Z2EO408IJ8JPPLb2", "8W4TrLCVwT5pN341HhH6D3mP2byMMwpU", "ScQcjv0hvXE5sqpvLhFnJdo", "ew857MaMURY893GG0hi3zO6RFtTWvxkk", "kzrdBoT0QozH1fOZ2V6a3FXV0JrhAD1i", "6tn8KSSYbJPeTKsUVc3lRKjtLiYgy0EC"};

            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(C5Y c5y) {
                this.A00.A0U.AEd(this.A00.A0X.getDuration());
                C6C.A01(this.A00, 1.0f);
                if (!this.A00.getAdDataBundle().A3G() && this.A00.A00 <= ((AbstractC1546Do) this.A00).A08.A32().A0H()) {
                    this.A00.A0X.A0f(EnumC2349e4.A03, 28);
                    return;
                }
                if (this.A00.getAdDataBundle().A3G() && !this.A00.A0C) {
                    int iA30 = this.A00.getAdDataBundle().A30();
                    if (this.A00.A00 >= iA30) {
                        float f = this.A00.A00;
                        float f2 = iA30;
                        String[] strArr = A01;
                        String str = strArr[5];
                        String str2 = strArr[3];
                        int iCharAt = str.charAt(17);
                        int threshold = str2.charAt(17);
                        if (iCharAt != threshold) {
                            throw new RuntimeException();
                        }
                        String[] strArr2 = A01;
                        strArr2[0] = "Y6tJEDKh19k0rBQmCTxaUfC";
                        strArr2[4] = "6GhykS7c96Spqt9ACDuQK2F";
                        if (f != f2) {
                            this.A00.A0K();
                            return;
                        }
                        this.A00.A0E = false;
                        this.A00.A0U.AH3(true);
                        this.A00.A0H();
                        return;
                    }
                    this.A00.A0H();
                    return;
                }
                if (!this.A00.getAdDataBundle().A3G() || !this.A00.A0C) {
                    this.A00.A0E = false;
                    this.A00.A0K();
                }
            }
        };
        this.A0a = new C6D(this);
        this.A0P = c1643Hi;
        this.A0Q = c2917nO;
        this.A0R = abstractC3137r2;
        this.A0M = i6;
        int i8 = -1;
        if (!super.A08.A2M()) {
            this.A0O = new C1471Ar(this.A0P, c2917nO);
        } else {
            i8 = i6;
            this.A0O = new C1470Aq(this.A0P, c2917nO);
        }
        this.A0g = new C1466Am(this.A0P, i8);
        if (this.A00 < la.A32().A0H()) {
            this.A0g.setShouldClearAnimationWhenVideoCompleted(false);
        }
        this.A0K = i5;
        this.A0i = z2;
        this.A0J = i2;
        this.A0L = i3;
        this.A0U = interfaceC3196rz;
        this.A0I = i4;
        this.A0h = z;
        this.A0V = new C2555hR(this.A0P, interfaceC2909nG, super.A08);
        if (i3 == 1) {
            c2429fNA00 = super.A08.A31().A01();
        } else {
            c2429fNA00 = super.A08.A31().A00();
        }
        this.A01 = c2429fNA00;
        this.A0X = new C1484Be(this.A0P);
        this.A0X.getEventBus().A03(this.A0d, this.A0c, this.A0b, this.A0e, this.A0Z, this.A0a);
        this.A0Y = new C5Z(c1643Hi, interfaceC2909nG, this.A0X, la.A37(), 0, 0, la.A32().A0V(), null, null);
        A0J();
        this.A0X.setVideoURI(c2771kz.A0T(super.A08.A32().A0I().A09()));
        A0I();
        C3064pr c3064prA02 = super.A0B.A02(la);
        this.A0P.A0H().A00(c3064prA02.A01);
        this.A0S = A06();
        if (this.A0S instanceof C1565Eh) {
            new C1459Af(this.A0S, 400, 100, 0).A4b(true, false);
        } else {
            this.A0S.setVisibility(8);
        }
        this.A0f = new C1478Ay(true, la.A32().A0V());
        A0M();
        this.A0T = this.A0S.getCTAButton();
        if (c3064prA02.A00) {
            this.A0X.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.1D
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.A00.A1t(view);
                }
            });
        }
        AbstractC3111qc.A0H(1001, this.A0T);
        A0G();
        if (!getAdDataBundle().A2M()) {
            A0F();
        }
        this.A0S.bringToFront();
        if (C2888mv.A1z(this.A0P)) {
            this.A0P.A0B().AM7(this.A0X, super.A08.A37(), true);
        }
        if (C2888mv.A20(this.A0P)) {
            this.A0W = new C1489Bj(this.A0P, interfaceC2909nG, this.A0X, super.A08.A37(), la.A32().A0V(), this.A0Y, null);
        } else {
            this.A0W = null;
        }
    }

    public static /* synthetic */ float A01(C6C c6c, float f) {
        float f2 = c6c.A00 + f;
        c6c.A00 = f2;
        return f2;
    }

    private AbstractC3309to A06() {
        String strA0C;
        AbstractC3309to c1565Eh;
        RelativeLayout.LayoutParams adDetailsParams = new RelativeLayout.LayoutParams(-1, -2);
        adDetailsParams.addRule(12);
        if (super.A08.A1c().equals(A0C(47, 14, 65))) {
            strA0C = EnumC2343dy.A04.A03();
        } else {
            strA0C = A0C(0, 37, 58);
        }
        double dA1F = super.A08.A1F();
        boolean zA2M = getAdDataBundle().A2M();
        String clickEvent = A0k[2];
        if (clickEvent.charAt(19) == 'M') {
            throw new RuntimeException();
        }
        A0k[2] = "UjX50goOnLgU03JCSIrIh8CV2epyWLz0";
        if (zA2M) {
            c1565Eh = new C3354uX((float) dA1F, strA0C, this.A0P, getColors(), super.A08, super.A0D, this.A0T, AbstractC1546Do.A0I, false, super.A0A, super.A0F, super.A0C, this.A0g, this.A0Q, false).A03();
            ((AbstractC1576Es) c1565Eh).setChainedAdInfo(super.A00);
        } else {
            c1565Eh = new C1565Eh(this.A0P, null, A0p, super.A08.A32().A0J().A00() == EnumC2425fJ.A05, getColors(), super.A08.A32().A0K().A07(), strA0C, super.A0A, super.A0D, super.A0F, super.A0C, super.A08);
        }
        c1565Eh.getCTAButton().getCtaActionHelper().A0A(super.A08);
        AbstractC3111qc.A0H(1008, c1565Eh);
        c1565Eh.A0l(this.A0L);
        addView(c1565Eh, adDetailsParams);
        c1565Eh.setInfo(super.A08.A32().A0J(), super.A08.A32().A0K(), super.A08.A37(), super.A08.A35().A01(), null, new InterfaceC3328u7() { // from class: com.facebook.ads.redexgen.X.Db
            @Override // com.facebook.ads.redexgen.X.InterfaceC3328u7
            public final void AEZ() {
                this.A00.A1s();
            }
        });
        return c1565Eh;
    }

    private void A0D() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        if (this.A06 != null) {
            this.A06.A0f(false);
            addView(this.A06.A0W(), layoutParams);
        }
    }

    private void A0E() {
        EnumC2960o7 enumC2960o7A00 = EnumC2960o7.A00(getAdDataBundle().A1a());
        if (enumC2960o7A00 == EnumC2960o7.A08) {
            AbstractC3111qc.A0e(this.A0S, this.A0O, this.A0T);
            this.A05 = new C3413vU(this.A0P, getAdDataBundle(), this.A0Q, this.A0N, super.A0D, this.A0R);
            addView(this.A05.A0K(this.A0T), new RelativeLayout.LayoutParams(-1, -1));
            return;
        }
        if (enumC2960o7A00 == EnumC2960o7.A05) {
            AbstractC3111qc.A0e(this.A0S, this.A0O, this.A0T);
            this.A03 = new C3358ub(this.A0P, getAdDataBundle(), this.A0Q, this.A0N, super.A0D);
            addView(this.A03.A0D(this.A0T), new RelativeLayout.LayoutParams(-1, -1));
            return;
        }
        if (getAdDataBundle().A32().A0L().A04()) {
            C2420fE c2420fEA32 = getAdDataBundle().A32();
            if (A0k[4].charAt(4) != 'R') {
                throw new RuntimeException();
            }
            A0k[5] = "IG6C4D4FNzKOlmveDSOZA8Sm7vA0oiYo";
            if (!c2420fEA32.A0L().A03().isEmpty()) {
                AbstractC3111qc.A0e(this.A0S, this.A0O, this.A0T);
                this.A06 = new C2546hI(this.A0P, getAdDataBundle(), super.A0D, this.A0T, this.A0N, this.A0Q);
                A0D();
                return;
            }
        }
        if (getAdDataBundle().A32().A0L().A05() || getAdDataBundle().A32().A0L().A04()) {
            AbstractC3111qc.A0e(this.A0S, this.A0O, this.A0T);
            this.A04 = new C3386v3(this.A0P, super.A08, this.A0Q, this.A0N, super.A0D);
            this.A04.A0K(false);
            addView(this.A04.A0E(this.A0T));
            return;
        }
        C2555hR c2555hR = this.A0V;
        String[] strArr = A0k;
        if (strArr[7].charAt(6) == strArr[6].charAt(6)) {
            throw new RuntimeException();
        }
        A0k[2] = "b3YZz6eZKLVTjLGY7Qv3itRrcKhjm6bQ";
        Pair<EnumC2556hS, View> pairA03 = c2555hR.A03(this.A0T);
        View view = (View) pairA03.second;
        AbstractC3111qc.A0H(EventTypeExtended.EVENT_TYPE_CLICK_BY_SOURCE_VALUE, view);
        A0U((EnumC2556hS) pairA03.first, view);
    }

    private void A0F() {
        this.A0g.A0A(-1, A0n, false);
        this.A0g.setPadding(A0v, A0v, A0v, A0v);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, A0u);
        layoutParams.addRule(12);
        addView(this.A0g, layoutParams);
    }

    private void A0G() {
        RelativeLayout.LayoutParams layoutParams;
        if (!super.A08.A2M()) {
            this.A0O.setPadding(A0r, A0r, A0r, A0r);
            layoutParams = new RelativeLayout.LayoutParams(A0s, A0s);
            layoutParams.setMargins(0, AbstractC3137r2.A00, A0q, 0);
            layoutParams.addRule(11);
            layoutParams.addRule(10);
        } else {
            layoutParams = new RelativeLayout.LayoutParams(A0l, A0l);
            layoutParams.setMargins(AbstractC3068pv.A0e, AbstractC3068pv.A0u, AbstractC3068pv.A0e, AbstractC3068pv.A0c);
            layoutParams.addRule(9);
        }
        ViewGroup.LayoutParams videoViewParams = new RelativeLayout.LayoutParams(-1, -1);
        addView(this.A0X, videoViewParams);
        addView(this.A0O, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0H() {
        this.A0X.A0f(EnumC2349e4.A03, 28);
    }

    private void A0I() {
        postDelayed(new DX(this), C2888mv.A0N(this.A0P));
    }

    private void A0J() {
        this.A0X.A0g(this.A0g);
        if (this.A0O instanceof InterfaceC2348e3) {
            this.A0X.A0g((InterfaceC2348e3) this.A0O);
        }
        if (!TextUtils.isEmpty(super.A08.A32().A0I().A08())) {
            C5B c5b = new C5B(this.A0P);
            this.A0X.A0g(c5b);
            c5b.setImage(super.A08.A32().A0I().A08());
        }
        this.A0X.A0g(new AnonymousClass55(this.A0P));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0K() {
        if (A1o()) {
            A1g();
        } else {
            this.A0U.AE6();
        }
    }

    private final void A0M() {
        View expandableLayout = this.A0S.getExpandableLayout();
        if (expandableLayout != null) {
            if (this.A08 != null) {
                this.A0f.A0L(this.A08);
            }
            C2429fN c2429fNA01 = super.A08.A31().A01();
            this.A0f.A0L(new C1460Ag(this.A0S.getCTAButton(), 300, -1, c2429fNA01.A0A(true)));
            Drawable drawableA08 = AbstractC3111qc.A08(A0n, A0o, A0m);
            Drawable endDrawable = AbstractC3111qc.A05(c2429fNA01.A09(true), A0m);
            this.A0f.A0L(new C1463Aj(this.A0S.getCTAButton(), 300, drawableA08, endDrawable));
            this.A0f.A0L(new C1461Ah(expandableLayout, 150, false));
            this.A0f.ABd(this.A0X);
            this.A0f.A0K(M9.b.g);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0N(int i) {
        if (!getAdDataBundle().A2M()) {
            return;
        }
        this.A0P.A0F().AM3(i);
        this.A0X.A0a(i);
        A0O(i, this.A0X, (RelativeLayout) this.A0X.getVideoView());
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void A0O(int r6, android.view.ViewGroup r7, android.widget.RelativeLayout r8) {
        /*
            r5 = this;
            com.facebook.ads.redexgen.X.to r0 = r5.A0S
            boolean r0 = r0 instanceof com.facebook.ads.redexgen.X.AbstractC1576Es
            if (r0 == 0) goto L85
            com.facebook.ads.redexgen.X.to r0 = r5.A0S
            boolean r0 = r0 instanceof com.facebook.ads.redexgen.X.C13836q
            if (r0 != 0) goto L12
            com.facebook.ads.redexgen.X.to r0 = r5.A0S
            boolean r0 = r0 instanceof com.facebook.ads.redexgen.X.C13826p
            if (r0 == 0) goto L3c
        L12:
            com.facebook.ads.redexgen.X.to r0 = r5.A0S
            com.facebook.ads.redexgen.X.AbstractC3111qc.A0K(r0)
            r0 = -1
            android.widget.RelativeLayout$LayoutParams r4 = new android.widget.RelativeLayout$LayoutParams
            r4.<init>(r0, r0)
            android.content.res.Resources r0 = r5.getResources()
            android.content.res.Configuration r0 = r0.getConfiguration()
            int r1 = r0.orientation
            r0 = 2
            if (r1 != r0) goto L52
            r1 = 1
            int r0 = r8.getId()
            r4.addRule(r1, r0)
            com.facebook.ads.redexgen.X.to r0 = r5.A0S
            r0.setLayoutParams(r4)
            com.facebook.ads.redexgen.X.to r0 = r5.A0S
            r7.addView(r0)
        L3c:
            com.facebook.ads.redexgen.X.to r3 = r5.A0S
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C6C.A0k
            r0 = 4
            r1 = r1[r0]
            r0 = 4
            char r1 = r1.charAt(r0)
            r0 = 82
            if (r1 == r0) goto L6f
        L4c:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L52:
            com.facebook.ads.redexgen.X.to r3 = r5.A0S
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C6C.A0k
            r0 = 5
            r1 = r1[r0]
            r0 = 17
            char r1 = r1.charAt(r0)
            r0 = 83
            if (r1 == r0) goto L64
            goto L4c
        L64:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C6C.A0k
            java.lang.String r1 = "FRMsyzuLc3gZfdMKASlNmMY9tlCkF6nx"
            r0 = 1
            r2[r0] = r1
            r5.addView(r3, r4)
            goto L3c
        L6f:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C6C.A0k
            java.lang.String r1 = "PKo2vwQTJwyDgvIModIJuZ40o1531gqX"
            r0 = 7
            r2[r0] = r1
            java.lang.String r1 = "2NjiF537ycZcGbLh0nonhJtG51ansIa1"
            r0 = 6
            r2[r0] = r1
            r3.A0l(r6)
            com.facebook.ads.redexgen.X.to r0 = r5.A0S
            com.facebook.ads.redexgen.X.Es r0 = (com.facebook.ads.redexgen.X.AbstractC1576Es) r0
            r0.A0y(r7, r8, r6)
        L85:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C6C.A0O(int, android.view.ViewGroup, android.widget.RelativeLayout):void");
    }

    private void A0U(EnumC2556hS enumC2556hS, View view) {
        this.A0X.A0i(false);
        this.A0X.setVisibility(8);
        switch (C1B.A00[enumC2556hS.ordinal()]) {
            case 1:
                this.A0S.setVisibility(0);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.setMargins(0, AbstractC3137r2.A00, 0, 0);
                layoutParams.addRule(2, this.A0S.getId());
                addView(view, layoutParams);
                break;
            case 2:
                AbstractC3111qc.A0e(this.A0S);
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams2.setMargins(A0t, A0t, A0t, A0t);
                addView(view, layoutParams2);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0V(C5V c5v) {
        if (this.A0X.getState() == EnumC2234cC.A02 && C2888mv.A1e(this.A0P)) {
            postDelayed(new DW(this, c5v), 5000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0W(String str) {
        if (!this.A0F) {
            this.A0F = true;
            this.A0U.AHa(str);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1546Do
    public final EnumC2383ec A1a(String str) {
        if (getAdDataBundle().A3G() && getCurrentPlayCount() < getAdDataBundle().A30()) {
            boolean z = this.A0C;
            String[] strArr = A0k;
            if (strArr[0].length() == strArr[3].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0k;
            strArr2[0] = "rD";
            strArr2[3] = "0";
            if (!z) {
                this.A0C = true;
                this.A0E = false;
                EnumC2383ec outcome = this.A0T.A0E(A0C(37, 10, Sdk.SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE));
                if (!A1o()) {
                    this.A0U.AH3(true);
                } else {
                    A1g();
                }
                return outcome;
            }
        }
        return this.A0T.A0E(str);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1546Do
    public final void A1b() {
        super.A1b();
        this.A0S.A0j();
        if (this.A02 != null) {
            this.A02.A06();
        }
        this.A0N.removeCallbacksAndMessages(null);
        if (this.A05 != null) {
            this.A05.A0L();
        }
        if (this.A03 != null) {
            this.A03.A0E();
        }
        if (this.A06 != null) {
            this.A06.A0Y();
        }
        C3386v3 c3386v3 = this.A04;
        String[] strArr = A0k;
        if (strArr[0].length() != strArr[3].length()) {
            A0k[2] = "4e1dr9g4n9kT22ZIdoKy0n8REVoGbgbF";
            if (c3386v3 != null) {
                C3386v3 c3386v32 = this.A04;
                if (A0k[1].charAt(26) != '5') {
                    A0k[2] = "sDtqF7ractOdV57EDY7GyqTfjJ1PXsQF";
                    c3386v32.A0H();
                }
            }
            if (C2888mv.A1z(this.A0P)) {
                this.A0P.A0B().ALo(this.A0X);
            }
            if (this.A0W != null) {
                this.A0W.A07();
            }
            if (this.A0X != null) {
                this.A0X.getEventBus().A04(this.A0d, this.A0c, this.A0b, this.A0e, this.A0Z, this.A0a);
                AbstractC3111qc.A0I(this.A0X);
                this.A0X.A0X();
            }
            this.A0Y.A0p();
            AbstractC3111qc.A0e(this.A0X, this.A0g, this.A0O);
            super.A0F.A0V();
            return;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1546Do
    public final void A1g() {
        this.A0P.A0F().A5W();
        this.A09 = true;
        AbstractC3111qc.A0X(this);
        AbstractC3111qc.A0I(this.A0X);
        AbstractC3111qc.A0e(this.A0X, this.A0g, this.A0O);
        A0E();
        if (this.A0I != 0 || !this.A0h) {
            this.A0U.AH3(true);
            if (this.A0R != null && getAdDataBundle().A32().A0L().A00() > 0) {
                this.A0A = false;
                if (getAdDataBundle().A3N()) {
                    this.A0R.setToolbarActionMode(8);
                } else {
                    this.A0R.setToolbarActionMode(2);
                }
                new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.facebook.ads.redexgen.X.1C
                    @Override // java.lang.Runnable
                    public final void run() throws Throwable {
                        if (AbstractC2996oi.A02(this)) {
                            return;
                        }
                        try {
                            this.A00.A0A = true;
                            this.A00.A0U.AH3(true);
                        } catch (Throwable th) {
                            AbstractC2996oi.A00(th, this);
                        }
                    }
                }, getAdDataBundle().A32().A0L().A00());
                return;
            }
            this.A0A = true;
            return;
        }
        if (this.A0i) {
            this.A0U.ALw();
        }
        if (this.A0R != null) {
            this.A0R.setToolbarActionMode(getAdDataBundle().A3N() ? 8 : 2);
        }
        this.A02 = new C3055pi(this.A0K, 100.0f, 100L, new Handler(Looper.getMainLooper()), new C1532Da(this));
        this.A02.A07();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1546Do
    public final void A1h() {
        this.A0X.setVolume(super.A08.A32().A0I().A0A() ? UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT : 1.0f);
        this.A0X.A0f(EnumC2349e4.A03, 20);
        if (!getAdDataBundle().A3G() || this.A0C) {
            int iA02 = super.A08.A32().A0I().A02();
            if (iA02 >= 0) {
                this.A0R.setProgressSpinnerInvisible(true);
            }
            if (iA02 != 0) {
                int secondsForNextCta = this.A0M;
                if (iA02 < secondsForNextCta) {
                    if (iA02 <= 0) {
                        return;
                    }
                    new C3055pi(iA02, new DZ(this)).A07();
                    return;
                }
            }
            this.A0R.setToolbarActionMode(8);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1546Do
    public final void A1i(boolean z) {
        if (z) {
            this.A0D = true;
        }
        if (z && getAdDataBundle().A3G() && getCurrentPlayCount() < getAdDataBundle().A30()) {
            boolean z2 = this.A0C;
            if (A0k[5].charAt(17) != 'S') {
                throw new RuntimeException();
            }
            String[] strArr = A0k;
            strArr[7] = "HQMNmsEpSladYJ4PQutWG71JU8T5RrCM";
            strArr[6] = "fScVEufYqboG567jNGnQCk8yQ2DxEz8s";
            if (!z2) {
                this.A0R.setToolbarActionMode(8);
                return;
            }
        }
        if (z && getAdDataBundle().A3G() && this.A0C) {
            this.A0E = false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00aa  */
    @Override // com.facebook.ads.redexgen.X.AbstractC1546Do
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A1j(boolean r5) {
        /*
            Method dump skipped, instruction units count: 219
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C6C.A1j(boolean):void");
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1546Do
    public final void A1k(boolean z) {
        if (this.A02 != null && !this.A02.A05()) {
            C3055pi c3055pi = this.A02;
            if (A0k[5].charAt(17) != 'S') {
                throw new RuntimeException();
            }
            String[] strArr = A0k;
            strArr[7] = "pObqmm4LdTsqTcUgL7kozPbufRCkwYZC";
            strArr[6] = "5szeP9lNqMFVM0rzjOQcuK8NUDwg7u3G";
            c3055pi.A07();
        }
        if (this.A09 || this.A0X.getState() == EnumC2234cC.A06 || this.A07 == null) {
            return;
        }
        if (!this.A0G || z) {
            this.A0X.A0f(this.A07, 19);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1546Do
    public final boolean A1l() {
        return this.A0E && !this.A0C;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1546Do
    public final boolean A1o() {
        return (this.A0I == 2 || !super.A08.A32().A0W() || this.A09) ? false : true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1546Do
    public final boolean A1p() {
        return this.A09;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1546Do
    public final boolean A1q() {
        return this.A0A;
    }

    public final /* synthetic */ void A1s() {
        this.A0C = true;
        if (getAdDataBundle().A3G() && this.A0D) {
            this.A0E = false;
            this.A0U.AH3(true);
        }
    }

    public final /* synthetic */ void A1t(View view) {
        this.A0T.A0E(A0C(61, 5, 27));
    }

    public C2429fN getColors() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1546Do
    public int getCurrentPlayCount() {
        return (int) this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1546Do
    public C3282tN getFullScreenAdStyle() {
        return new C3282tN(true, C3282tN.A06, super.A08.A31().A01(), ViewOnClickListenerC1569El.A05(super.A08), super.A08.A31().A01().A08(true), super.A08.A32().A0I().A08());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1546Do
    public C3102qT getTouchDataRecorder() {
        return super.A0C;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1546Do, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        C2429fN c2429fNA00;
        super.onConfigurationChanged(configuration);
        if (!this.A09) {
            if (getAdDataBundle().A2M()) {
                A0N(configuration.orientation);
                return;
            }
            if (configuration.orientation == 1) {
                C2416fA c2416fAA31 = super.A08.A31();
                if (A0k[4].charAt(4) != 'R') {
                    throw new RuntimeException();
                }
                A0k[1] = "uYIsd2DhsQ91Wp0xmXJ9348eeMLtSRMf";
                c2429fNA00 = c2416fAA31.A01();
            } else {
                c2429fNA00 = super.A08.A31().A00();
            }
            this.A01 = c2429fNA00;
            this.A0T.setViewShowsOverMedia(true);
            this.A0T.setUpButtonColors(this.A01);
            this.A0S.A0l(configuration.orientation);
            return;
        }
        if (this.A05 != null) {
            this.A05.A0M(configuration.orientation);
        } else if (this.A03 != null) {
            this.A03.A0F(configuration.orientation);
        } else {
            if (this.A06 == null) {
                return;
            }
            this.A06.A0a(configuration.orientation);
        }
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View expandableLayout;
        super.onLayout(z, i, i2, i3, i4);
        if (!getAdDataBundle().A2M() && (expandableLayout = this.A0S.getExpandableLayout()) != null && z && this.A08 == null) {
            this.A08 = new C1462Ai(expandableLayout, 300, expandableLayout.getHeight(), 0);
            this.A0f.A0L(this.A08);
            this.A0f.A0J();
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            A1k(false);
        } else {
            this.A0B = true;
            A1j(false);
        }
    }
}
