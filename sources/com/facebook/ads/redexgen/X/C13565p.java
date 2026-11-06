package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.unity3d.ads.core.domain.WebViewScreenCapture;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.5p, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C13565p extends D8 {
    public static byte[] A0Y;
    public static String[] A0Z = {"Mriq29lS8vjEPztqvg4mnlhqPa1pf4jw", "J0ebGdEZD5oKohgNzUxMA3JiHaSF4bRJ", "IT9tvlYp44pYwsfxgtsksFS", "El43mrOkb3qqMjbYlNbneDDC3riKbt8u", "SsyQgLhJr8BA6K4Jeu0226NIXlotTSUK", "5pKSfcHcmxRzGJ6MCKbxSHPk9j0pnkgf", "vZ9Xs81YGHnjRjGsoTeSsIOHxP", "Y9Sammkz"};
    public int A00;
    public EnumC2916nN A01;
    public AbstractC3370un A02;
    public InterfaceC3078q5 A03;
    public C2499gV A04;
    public EnumC2349e4 A05;
    public boolean A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;
    public boolean A0D;
    public boolean A0E;
    public boolean A0F;
    public boolean A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean A0J;
    public final Handler A0K;
    public final View A0L;
    public final InterfaceC2689je A0M;
    public final InterfaceC3094qL A0N;
    public final C1489Bj A0O;
    public final C1484Be A0P;
    public final C5Z A0Q;
    public final BM A0R;
    public final BK A0S;
    public final BG A0T;
    public final BE A0U;
    public final BC A0V;
    public final BB A0W;
    public final C1466Am A0X;

    public static String A0A(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0Y, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 88);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0H() {
        A0Y = new byte[]{-3, 21, 7, 5, 21, -1, -54, -45, -42, -57, -55, -56, -61, -46, -40, -56, -46, -41, -35, -50, -37, -36, -35, -46, -35, -46, -54, -43, 65, 52, 70, 48, 65, 51, 52, 51, 46, 69, 56, 51, 52, 62, 46, 38, 36, 43};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private synchronized void A0U(boolean z, boolean z2) {
        if (this.A03 != null) {
            this.A0B = false;
            return;
        }
        if (this.A0B) {
            boolean zA2C = C2888mv.A2C(super.A05);
            if (!z && (!zA2C || !z2)) {
                if (z2) {
                    super.A05.A0F().AD2();
                }
                super.A05.A0F().ACm();
                super.A05.A0F().ABs();
                super.A0A.A5C(super.A0B.A7L());
                this.A04.A06();
                this.A0B = false;
                if (this.A02 != null) {
                    this.A02.A1R();
                }
                return;
            }
            this.A0B = false;
        }
    }

    static {
        A0H();
    }

    public C13565p(C1643Hi c1643Hi, InterfaceC3200s3 interfaceC3200s3, InterfaceC2909nG interfaceC2909nG, LA la, C2771kz c2771kz, InterfaceC3144r9 interfaceC3144r9) {
        super(c1643Hi, interfaceC3200s3, interfaceC2909nG, la, c2771kz, interfaceC3144r9);
        this.A0M = new C1515Cj(this);
        this.A0V = new BC() { // from class: com.facebook.ads.redexgen.X.5v
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(BD bd) {
                this.A00.A0I = true;
                if (this.A00.A02 != null) {
                    this.A00.A02.A1Z(bd);
                }
            }
        };
        this.A0U = new BE() { // from class: com.facebook.ads.redexgen.X.5u
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(BF bf) {
                this.A00.A0J = true;
                this.A00.A0n();
                AbstractC3370un unused = this.A00.A02;
            }
        };
        this.A0T = new BG() { // from class: com.facebook.ads.redexgen.X.5t
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(C5W c5w) {
                AbstractC3370un unused = this.A00.A02;
            }
        };
        this.A0W = new BB() { // from class: com.facebook.ads.redexgen.X.5s
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(C5V c5v) {
                this.A00.A0R(c5v);
                this.A00.A0Q(c5v);
                if (this.A00.A02 != null) {
                    this.A00.A02.A1a(c5v, this.A00.A00);
                }
            }
        };
        this.A0R = new BM() { // from class: com.facebook.ads.redexgen.X.5r
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(C5Y c5y) {
                this.A00.A0P(c5y, this.A00.A0P.getState() != EnumC2234cC.A06, false);
            }
        };
        this.A0S = new C13575q(this);
        boolean z = false;
        this.A0I = false;
        this.A0J = false;
        this.A0H = false;
        this.A0G = false;
        this.A0D = false;
        this.A00 = 0;
        this.A08 = false;
        this.A06 = false;
        this.A07 = false;
        this.A0E = false;
        this.A0C = false;
        this.A0A = false;
        this.A01 = EnumC2916nN.A0c;
        this.A0K = new Handler(Looper.getMainLooper());
        this.A09 = false;
        this.A0N = new C1514Ci(this);
        this.A0P = new C1484Be(super.A05);
        this.A0P.setFunnelLoggingHandler(super.A07);
        if (A0V() && super.A03.A32().A0U()) {
            this.A0P.setBackgroundPlaybackEnabled(true);
        }
        this.A0P.getEventBus().A03(this.A0V, this.A0U, this.A0T, this.A0W, this.A0R, this.A0S);
        this.A0F = la.A2g();
        this.A0Q = new C5Z(super.A05, super.A06, this.A0P, super.A03.A37(), 0, 0, super.A03.A32().A0V(), null, null);
        if (C2888mv.A20(super.A05)) {
            this.A0O = new C1489Bj(super.A05, super.A06, this.A0P, super.A03.A37(), super.A03.A32().A0V(), this.A0Q, null);
        } else {
            this.A0O = null;
        }
        this.A04 = new C2499gV(super.A05, super.A0B, super.A03.A1u(), interfaceC3144r9);
        if (!A0u()) {
            this.A0L = new C1471Ar(super.A05, super.A07);
        } else {
            this.A0L = new C1470Aq(super.A05, super.A07);
        }
        this.A0X = new C1466Am(super.A05, (super.A03.A2T() || A0u()) ? A02(super.A03) * 1000 : -1);
        if ((this.A0F && !super.A03.A2d()) || super.A03.A2U()) {
            this.A0X.setVisibility(8);
        }
        if (super.A03.A32().A0V() || super.A03.A2D()) {
            this.A0X.setShouldClearAnimationWhenVideoCompleted(false);
        }
        A0G();
        String strA09 = super.A03.A32().A0I().A09();
        if (strA09 != null) {
            this.A0P.setVideoURI(super.A04.A0T(strA09));
        }
        A0E();
        int iA04 = super.A03.A32().A0I().A04();
        if (C2888mv.A2R(super.A05)) {
            this.A0G = iA04 == 0;
        } else {
            this.A0G = iA04 <= 0;
        }
        if (super.A03.A32().A0T() && super.A03.A32().A0I().A03() > 0) {
            z = true;
        }
        this.A0B = z;
        Integer toolbarBackgroundColor = getBackgroundColorForToolbar();
        if (toolbarBackgroundColor == null) {
            AbstractC3111qc.A0O(this, super.A03.A31().A01().A08(true));
        } else {
            AbstractC3111qc.A0O(this, toolbarBackgroundColor.intValue());
        }
        if (C2888mv.A2L(super.A05) || super.A03.A2T()) {
            super.A09.setProgressSpinnerInvisible(true);
        }
        if (super.A03.A2m()) {
            super.A05.A0F().AFa();
        }
    }

    private float A00() {
        float fA04 = super.A03.A32().A0I().A04();
        boolean isRV = super.A0B.A9O().equals(AdPlacementType.REWARDED_VIDEO.toString());
        if (fA04 == -1.0f && isRV && super.A03.A2Y()) {
            float videoDuration = this.A0P.getDuration();
            if (videoDuration <= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            }
            return videoDuration;
        }
        if (!this.A0F) {
            float serverUnskippableSeconds = this.A0P.getDuration();
            return Math.min(1000.0f * fA04, serverUnskippableSeconds);
        }
        float f = 1000.0f * fA04;
        if (A0Z[5].charAt(24) == 'W') {
            throw new RuntimeException();
        }
        String[] strArr = A0Z;
        strArr[0] = "0w7AakyEKCRQWNpHHPyyKzaZngxXUtrj";
        strArr[4] = "tySz9bX0dfmx3tXDjNXS5Q8B5RIoK4xE";
        return f;
    }

    private int A01(int i, int i2, int i3) {
        int i4 = 0;
        if (this.A0F) {
            int completedVideoCycleDuration = this.A00;
            i4 = i3 * completedVideoCycleDuration;
        }
        int completedVideoCycleDuration2 = i / 1000;
        return (i2 - i4) - completedVideoCycleDuration2;
    }

    public static int A02(LA la) {
        if (la.A1c().equals(A0A(28, 14, Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE))) {
            return la.A32().A0I().A03();
        }
        if (la.A1c().equals(A0A(16, 12, 17))) {
            return la.A32().A0I().A04();
        }
        return 0;
    }

    private AbstractC3370un A06(int i) {
        C3373uq c3373uqA0M = new C3373uq(super.A05, super.A06, super.A0A, super.A03, this.A0P, super.A0C, super.A08).A0J(super.A09.getToolbarHeight()).A0P(super.A09).A0I(i).A0K(this.A0L).A0R(this.A0X).A0M(super.A07);
        if (super.A03.A32().A0T() && C2888mv.A1d(super.A05) && super.A03.A32().A0M() != null) {
            c3373uqA0M.A0O(getPackageInstallListener());
        }
        c3373uqA0M.A0L(C2387eg.A00(super.A05, super.A06, A0A(0, 0, 25), AbstractC3036pP.A00(super.A03.A32().A0K().A06()), new HashMap(), super.A03.A33()));
        C3374ur params = c3373uqA0M.A0U();
        return AbstractC3371uo.A00(params, null, true);
    }

    private void A0B() {
        if (this.A02 == null || this.A09 || !A0Y()) {
            return;
        }
        this.A09 = true;
        this.A02.A02(new InterfaceC3328u7() { // from class: com.facebook.ads.redexgen.X.Co
            @Override // com.facebook.ads.redexgen.X.InterfaceC3328u7
            public final void AEZ() {
                this.A00.A0x();
            }
        });
    }

    private void A0C() {
        if (!A0Y()) {
            return;
        }
        if (this.A00 >= super.A03.A30() || (this.A0G && this.A08)) {
            if (A0X()) {
                super.A09.setToolbarActionMode(1);
                return;
            } else if (super.A03.A32().A0W()) {
                super.A09.setToolbarActionMode(1);
                return;
            } else {
                super.A09.setToolbarActionMode(0);
                return;
            }
        }
        if (this.A0H || this.A08 || this.A02 == null || !this.A02.A1e()) {
            return;
        }
        super.A02 = true;
        super.A09.setToolbarActionMode(8);
    }

    private void A0D() {
        this.A0P.postDelayed(new C1519Cn(this), C2888mv.A0M(super.A05));
    }

    private void A0E() {
        this.A0P.postDelayed(new C1518Cm(this), C2888mv.A0N(super.A05));
    }

    private void A0F() {
        this.A0G = true;
        super.A09.A0A();
        if (this.A02 != null) {
            this.A02.A1T();
        }
        if (A0Y() && !super.A03.A32().A0U() && !this.A08) {
            super.A02 = true;
            super.A09.setToolbarActionMode(8);
        }
    }

    private void A0G() {
        this.A0P.A0g(this.A0X);
        if (this.A0L instanceof InterfaceC2348e3) {
            this.A0P.A0g((InterfaceC2348e3) this.A0L);
        }
        if (!TextUtils.isEmpty(super.A03.A32().A0I().A08())) {
            C5B c5b = new C5B(super.A05, A0u());
            this.A0P.A0g(c5b);
            c5b.setImage(super.A03.A32().A0I().A08());
        }
        if (!A0u()) {
            AnonymousClass51 anonymousClass51 = new AnonymousClass51(super.A05, true, super.A07);
            this.A0P.A0g(anonymousClass51);
            this.A0P.A0g(new C1473At(anonymousClass51, EnumC2339du.A03, true));
        }
        this.A0P.A0g(new AnonymousClass55(super.A05));
    }

    private void A0I(EnumC2916nN enumC2916nN) {
        new C2917nO(super.A03.A37(), super.A05.A0A()).A04(enumC2916nN, null);
        super.A0A.A5C(super.A0B.A7L());
        this.A04.A06();
        if (this.A02 instanceof C13726f) {
            ((C13726f) this.A02).A1s();
        }
        if (!super.A03.A2d()) {
            this.A0K.postDelayed(new RunnableC3143r8(this), WebViewScreenCapture.CACHE_TTL_MS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0J(EnumC2916nN enumC2916nN) {
        if (!this.A06) {
            this.A0C = true;
            this.A01 = enumC2916nN;
        } else {
            A0I(enumC2916nN);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00cc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void A0P(com.facebook.ads.redexgen.X.C5Y r9, boolean r10, boolean r11) {
        /*
            Method dump skipped, instruction units count: 222
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C13565p.A0P(com.facebook.ads.redexgen.X.5Y, boolean, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0Q(C5V c5v) {
        if (this.A0P.getState() == EnumC2234cC.A02 && C2888mv.A1e(super.A05)) {
            this.A0P.postDelayed(new C1517Cl(this, c5v), 5000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0R(C5V c5v) {
        float unskippableSeconds;
        int iA00 = c5v.A00();
        int totalSecondsForNextCta = super.A03.A32().A0I().A02();
        int currentPosMs = super.A03.A32().A0I().A05();
        int currentPosMs2 = A01(iA00, totalSecondsForNextCta, currentPosMs);
        if (totalSecondsForNextCta >= 0 && currentPosMs2 <= 0 && !super.A02) {
            if (super.A03.A32().A0U()) {
                A0C();
            }
            boolean zA0Y = A0Y();
            String[] strArr = A0Z;
            String str = strArr[2];
            String str2 = strArr[7];
            int totalSecondsForNextCta2 = str.length();
            int currentPosMs3 = str2.length();
            if (totalSecondsForNextCta2 == currentPosMs3) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0Z;
            strArr2[0] = "PXM0w4DTcyhv6xVVxlaJPbpxowOdlGPl";
            strArr2[4] = "ZagmJHoPVKqTZKI94Zh80WtjAbW4VeCE";
            if (!zA0Y && this.A02 != null && this.A02.A1e()) {
                super.A02 = true;
                super.A09.setToolbarActionMode(8);
            }
        }
        if (this.A0B) {
            int totalSecondsForNextCta3 = super.A03.A32().A0I().A03();
            int currentPosMs4 = super.A03.A32().A0I().A05();
            int iA01 = A01(iA00, totalSecondsForNextCta3, currentPosMs4);
            if (!ViewOnClickListenerC1569El.A05(super.A03)) {
                boolean zA2m = super.A03.A2m();
                String strA0A = A0A(0, 0, 25);
                if (!zA2m && !super.A03.A2e() && !super.A03.A2T() && iA01 > 0) {
                    super.A09.setToolbarActionMessage(super.A03.A36().A07().replace(A0A(0, 6, 74), String.valueOf(iA01)));
                } else {
                    super.A09.setToolbarActionMessage(strA0A);
                }
            }
            if (iA01 <= 0) {
                A0U(false, false);
            }
        }
        float fA00 = A00();
        float seenPercentage = iA00;
        if (this.A0F) {
            int totalSecondsForNextCta4 = this.A0P.getDuration();
            int currentPosMs5 = this.A00;
            seenPercentage += totalSecondsForNextCta4 * currentPosMs5;
        }
        if (!super.A03.A2Y() || fA00 > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            unskippableSeconds = seenPercentage / fA00;
        } else {
            unskippableSeconds = 1.0f;
        }
        if (!super.A03.A2e()) {
            super.A09.setProgress(100.0f * unskippableSeconds);
        } else {
            int totalSecondsForNextCta5 = 0;
            if (fA00 - seenPercentage > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                int currentPosMs6 = (int) (fA00 - seenPercentage);
                totalSecondsForNextCta5 = currentPosMs6 / 1000;
            }
            super.A09.A0C(100.0f * unskippableSeconds, totalSecondsForNextCta5);
        }
        if (unskippableSeconds >= 1.0f) {
            boolean z = this.A0G;
            if (A0Z[1].charAt(24) != 72) {
                A0Z[6] = "mHNt1GssQPcO8cYF0nuhoYQeR4";
                if (z) {
                    return;
                }
            } else {
                A0Z[1] = "vYmMw1YN2p0SfEqcsof74RO3H51cScf2";
                if (z) {
                    return;
                }
            }
            A0F();
            if (A0Y() && !super.A03.A32().A0U() && !this.A08) {
                int totalSecondsForNextCta6 = this.A00;
                int currentPosMs7 = super.A03.A30();
                if (totalSecondsForNextCta6 < currentPosMs7) {
                    return;
                }
            }
            AbstractC3137r2 abstractC3137r2 = super.A09;
            int currentPosMs8 = getCloseButtonStyle();
            abstractC3137r2.setToolbarActionMode(currentPosMs8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0S(String str) {
        if (this.A0A) {
            return;
        }
        this.A0A = true;
        int currentPositionInMillis = 0;
        int duration = 0;
        if (this.A0P != null) {
            currentPositionInMillis = this.A0P.getCurrentPositionInMillis();
            duration = this.A0P.getDuration();
            this.A0P.A0c(3);
        }
        super.A05.A0F().A3x(str, super.A03.A32().A0I().A09());
        if (C2888mv.A1f(super.A05)) {
            A0P(new C5Y(currentPositionInMillis, duration), false, true);
        } else {
            super.A0A.A5C(super.A0B.A8c());
            super.A0A.A5C(super.A0B.A8X());
        }
    }

    private void A0T(boolean z, boolean z2) {
        super.A09.setToolbarActionMessage(A0A(0, 0, 25));
        A0U(z, z2);
        if (z2) {
            LA la = super.A03;
            if (A0Z[1].charAt(24) != 'H') {
                throw new RuntimeException();
            }
            A0Z[3] = "XTN7FCDfoUdb64gs1zMYgI4kZpqZ7S6q";
            if (la.A32().A0U()) {
                C1643Hi c1643Hi = super.A05;
                if (A0Z[1].charAt(24) != 'H') {
                    c1643Hi.A0F().AD4();
                } else {
                    A0Z[3] = "47QzYZMXBFaMNKQWAAXNDRZZJ8BjsjJR";
                    c1643Hi.A0F().AD4();
                }
            } else {
                super.A05.A0F().AD3();
            }
            super.A09.setToolbarActionMode(0);
            return;
        }
        if (!A0Y() || super.A03.A32().A0U() || this.A08 || this.A00 >= super.A03.A30()) {
            if (this.A02 == null || !this.A02.A1f()) {
                AbstractC3137r2 abstractC3137r2 = super.A09;
                int closeButtonStyle = getCloseButtonStyle();
                if (A0Z[3].charAt(0) == 'z') {
                    throw new RuntimeException();
                }
                A0Z[1] = "xwJYO5pEYXQlWGzn44n7lg2ZHLg1iQnB";
                abstractC3137r2.setToolbarActionMode(closeButtonStyle);
            }
        }
    }

    private boolean A0V() {
        return C2986oY.A00(EnumC2988oa.A00(super.A03.A1V()), super.A05) == EnumC2984oW.A03;
    }

    private boolean A0W() {
        return AbstractC3062pp.A02(this.A03 != null, super.A03);
    }

    private boolean A0X() {
        return AbstractC3062pp.A03(this.A03 != null, super.A03);
    }

    private boolean A0Y() {
        return super.A03.A3G() || A0W();
    }

    @Override // com.facebook.ads.redexgen.X.D8
    public final AbstractC3137r2 A0l() {
        AbstractC3137r2 abstractC3137r2A0l = super.A0l();
        if (A0u() && super.A03.A3R()) {
            abstractC3137r2A0l.setOnTouchListener(new ViewOnTouchListenerC3108qZ(this));
        }
        if (super.A03.A3R()) {
            abstractC3137r2A0l.setOnClickListener(new ViewOnClickListenerC3183rm(this));
        }
        return abstractC3137r2A0l;
    }

    @Override // com.facebook.ads.redexgen.X.D8
    public final void A0m() {
        Rect requestedMargins;
        super.A0m();
        if (!super.A03.A2D() || (requestedMargins = super.A09.getRequestedMargins()) == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.A0L.getLayoutParams();
        layoutParams.setMargins(layoutParams.leftMargin, requestedMargins.top, layoutParams.rightMargin, layoutParams.bottomMargin);
        this.A0L.setLayoutParams(layoutParams);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a4, code lost:
    
        if (r4 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a6, code lost:
    
        r6.A03.AJp();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b8, code lost:
    
        if (r4 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00bb, code lost:
    
        r6.A09.setToolbarActionMode(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:?, code lost:
    
        return;
     */
    @Override // com.facebook.ads.redexgen.X.D8
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A0p() {
        /*
            Method dump skipped, instruction units count: 319
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C13565p.A0p():void");
    }

    @Override // com.facebook.ads.redexgen.X.D8
    public final void A0q() {
        AbstractC3111qc.A0M(this.A02);
        this.A0P.setVisibility(4);
        if (!super.A03.A2a()) {
            A0v();
        }
    }

    @Override // com.facebook.ads.redexgen.X.D8
    public final void A0s(C2683jY c2683jY) {
        FrameLayout.LayoutParams layoutParams;
        c2683jY.A0A(this.A0M);
        int orientation = c2683jY.A05().getResources().getConfiguration().orientation;
        this.A02 = A06(orientation);
        this.A02.setAccidentalClickCappingListener(new InterfaceC2384ed() { // from class: com.facebook.ads.redexgen.X.Cq
            @Override // com.facebook.ads.redexgen.X.InterfaceC2384ed
            public final void ADg() {
                this.A00.A0w();
            }
        });
        this.A02.setNtdHideCallback(new InterfaceC3369um() { // from class: com.facebook.ads.redexgen.X.Cp
            @Override // com.facebook.ads.redexgen.X.InterfaceC3369um
            public final void AEO(View view) {
                this.A00.A0y(view);
            }
        });
        A0B();
        A0r(this.A02);
        if (super.A01 != null) {
            addView(super.A01, D8.A0H);
        }
        boolean z = false;
        if (A0u()) {
            layoutParams = new FrameLayout.LayoutParams(-1, -2);
            Rect requestedMargins = super.A09.getRequestedMargins();
            if (requestedMargins == null) {
                int i = AbstractC3068pv.A0x;
                int orientation2 = AbstractC3068pv.A0u;
                layoutParams.setMargins(i, orientation2, 0, 0);
            } else {
                int i2 = requestedMargins.left;
                int i3 = requestedMargins.top;
                int i4 = requestedMargins.right;
                int orientation3 = requestedMargins.bottom;
                layoutParams.setMargins(i2, i3, i4, orientation3);
            }
        } else {
            int orientation4 = super.A09.getToolbarHeight();
            layoutParams = new FrameLayout.LayoutParams(-1, orientation4);
        }
        addView(super.A09, layoutParams);
        AbstractC3111qc.A0I(this.A02);
        AbstractC3111qc.A0I(super.A09);
        if (super.A03.A2a() && (this.A02 instanceof C13726f)) {
            ((C13726f) this.A02).setVideoAdViewListener(this.A0N);
        }
        if (this.A02 != null && this.A02.A1g()) {
            z = true;
        }
        setUpFullscreenMode(z);
    }

    @Override // com.facebook.ads.redexgen.X.D8
    public final boolean A0t() {
        if (A0X() && this.A03 != null) {
            this.A03.AJp();
            return true;
        }
        if (this.A02 != null) {
            boolean zA1i = this.A02.A1i(this.A0B);
            if (A0Z[1].charAt(24) != 'H') {
                throw new RuntimeException();
            }
            A0Z[5] = "PjX677y3xFaSF5oXF3qbgmTzrt0PFCCH";
            if (zA1i) {
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.D8
    public final boolean A0u() {
        if (super.A03.A32().A0I().A07() == null) {
            return super.A03.A2o() || super.A03.A2q() || super.A03.A2K();
        }
        return super.A03.A2Z();
    }

    public final void A0v() {
        this.A0P.setVisibility(0);
        AbstractC3111qc.A0M(super.A09);
        this.A0P.setVolume(super.A03.A32().A0I().A0A() ? UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT : 1.0f);
        if (A0u() && (this.A02 instanceof C13726f)) {
            ((C13726f) this.A02).A1t(getResources().getConfiguration().orientation);
            ((C13726f) this.A02).A1r();
        }
        C1484Be c1484Be = this.A0P;
        EnumC2349e4 enumC2349e4 = EnumC2349e4.A03;
        if (A0Z[3].charAt(0) == 'z') {
            throw new RuntimeException();
        }
        String[] strArr = A0Z;
        strArr[2] = "yzu62sc2dSvrPluyJul898U";
        strArr[7] = "BptueeIM";
        c1484Be.A0f(enumC2349e4, 20);
        if (this.A02 != null && this.A0B) {
            this.A02.A1S();
        }
        if (this.A02 != null && !this.A0G) {
            this.A02.A1U();
        }
        A0D();
    }

    public final /* synthetic */ void A0w() {
        A0o();
    }

    public final /* synthetic */ void A0x() {
        this.A08 = true;
        if (!super.A03.A32().A0U()) {
            A0C();
        }
    }

    public final /* synthetic */ void A0y(View view) {
        if (super.A03.A3L()) {
            A0o();
        }
        if (super.A03.A3M() && view != null) {
            view.setOnClickListener(null);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void AGF(boolean z) {
        this.A06 = false;
        if (this.A02 != null) {
            AbstractC3370un abstractC3370un = this.A02;
            String[] strArr = A0Z;
            if (strArr[2].length() == strArr[7].length()) {
                throw new RuntimeException();
            }
            A0Z[3] = "DxLukbpSoMpyRTcBEXGLoW65RDWaIRjT";
            abstractC3370un.A1b(z);
        }
        if (((this.A07 || A0V()) && super.A03.A32().A0U()) || this.A0P.getVisibility() != 0 || this.A0P.A0o()) {
            return;
        }
        this.A05 = this.A0P.getVideoStartReason();
        this.A0D = z;
        this.A0P.A0j(false, 13);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void AGp(boolean z) {
        this.A06 = true;
        if (this.A02 != null) {
            this.A02.A1c(z);
        }
        if (this.A0C) {
            this.A0C = false;
            A0I(this.A01);
        }
        if (this.A0P.getVisibility() == 0 && !this.A0P.A0p()) {
            boolean z2 = this.A0H;
            String[] strArr = A0Z;
            if (strArr[0].charAt(8) != strArr[4].charAt(8)) {
                A0Z[1] = "5vrQw9TAnlgebYwA7tbvLzoGHglPMjBr";
                if (z2 || this.A0P.getState() == EnumC2234cC.A06 || this.A05 == null) {
                    return;
                }
                if (!this.A0D || z) {
                    C1484Be c1484Be = this.A0P;
                    EnumC2349e4 enumC2349e4 = this.A05;
                    if (A0Z[5].charAt(24) != 'W') {
                        String[] strArr2 = A0Z;
                        strArr2[2] = "V4H5krvJNTMOac6aZZgfGmx";
                        strArr2[7] = "t2XfRzhW";
                        c1484Be.A0f(enumC2349e4, 19);
                        return;
                    }
                } else {
                    return;
                }
            }
            throw new RuntimeException();
        }
    }

    private int getCloseButtonStyle() {
        if (A0X()) {
            return 1;
        }
        if (this.A02 != null) {
            return this.A02.getCloseButtonStyle();
        }
        return 0;
    }

    private InterfaceC3081q8 getPackageInstallListener() {
        return new C1516Ck(this);
    }

    public int getVideoPlayCount() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.D8, com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        if (this.A02 != null) {
            return this.A02.A1h(i, i2, intent);
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.D8, com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void onDestroy() {
        super.onDestroy();
        if (C2888mv.A1z(super.A05)) {
            super.A05.A0B().ALo(this.A0P);
        }
        if (this.A02 != null) {
            this.A02.A1Q();
        }
        if (this.A0P != null) {
            if (!this.A0H) {
                this.A0P.A0e(EnumC2403ex.A06);
            }
            this.A0P.getEventBus().A04(this.A0V, this.A0U, this.A0T, this.A0W, this.A0R, this.A0S);
            this.A0P.A0X();
        }
        if (this.A0O != null) {
            this.A0O.A07();
        }
        this.A0Q.A0p();
        this.A0K.removeCallbacksAndMessages(null);
    }

    @Override // com.facebook.ads.redexgen.X.D8, com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void onStart() {
        if (!this.A0E) {
            return;
        }
        this.A0E = false;
        if (this.A0P.getVisibility() == 0 && !this.A0P.A0p() && !this.A0H && this.A0P.getState() != EnumC2234cC.A06 && this.A05 != null) {
            this.A0P.A0f(this.A05, 19);
        }
    }

    @Override // com.facebook.ads.redexgen.X.D8, com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void onStop() {
        if ((!this.A07 && !A0V()) || !super.A03.A32().A0U() || this.A0P.getVisibility() != 0 || this.A0P.A0o()) {
            return;
        }
        this.A05 = this.A0P.getVideoStartReason();
        this.A0E = true;
        this.A0P.A0j(false, 3);
    }

    public void setCctActive(boolean z) {
        this.A07 = z;
    }

    public void setServerSideRewardHandler(C2499gV c2499gV) {
        this.A04 = c2499gV;
    }

    public void setVideoLeadingPlayableAdListener(InterfaceC3078q5 interfaceC3078q5) {
        this.A03 = interfaceC3078q5;
        A0B();
    }
}
