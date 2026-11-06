package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.view.FullScreenAdToolbar;
import com.unity3d.services.UnityAdsConstants;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC1590Fg extends RelativeLayout implements InterfaceC3145rA {
    public static byte[] A0I;
    public static String[] A0J = {"fqT9snXDZkE2N6bIU2twhbCcrvrF5wQR", "W8MK3buqarkLhDixdfnbfGeXuw3i87xB", "M5iWaw3OwwKxChS5bTa9KUrj63pwu1Od", "QKu8TlGQ3D7NsDDaY", "OUnrWL6BanKvWJF", "644mHU9zQQHAcSiNB", "MqQzuM0GD0HqxOL2854PPJvoiao7nama", "mSpdOD621tCilusEUOf234Jx9LR3KzyX"};
    public static final int A0K;
    public static final int A0L;
    public View A00;
    public C3055pi A01;
    public C3251ss A02;
    public C3255sw A03;
    public C3184rn A04;
    public boolean A05;
    public boolean A06;
    public C2416fA A07;
    public C2499gV A08;
    public boolean A09;
    public final Handler A0A;
    public final ViewOnSystemUiVisibilityChangeListenerC3097qO A0B;
    public final InterfaceC3144r9 A0C;
    public final LA A0D;
    public final C1643Hi A0E;
    public final InterfaceC2909nG A0F;
    public final C2917nO A0G;
    public final AbstractC3137r2 A0H;

    public static String A0V(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0I, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 81);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0c() {
        A0I = new byte[]{88, 84, 86, 21, 93, 90, 88, 94, 89, 84, 84, 80, 21, 90, 95, 72, 21, 82, 85, 79, 94, 73, 72, 79, 82, 79, 82, 90, 87, 21, 82, 86, 75, 73, 94, 72, 72, 82, 84, 85, 21, 87, 84, 92, 92, 94, 95};
    }

    public abstract FullScreenAdToolbar A0g();

    public abstract void A0i();

    public abstract boolean A0q();

    public abstract int getCloseButtonStyle();

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final /* synthetic */ void onStart() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final /* synthetic */ void onStop() {
    }

    static {
        A0c();
        A0K = (int) (AbstractC3070px.A02 * 16.0f);
        A0L = (int) (AbstractC3070px.A02 * 12.0f);
    }

    public AbstractC1590Fg(C1643Hi c1643Hi, InterfaceC2909nG interfaceC2909nG, InterfaceC3144r9 interfaceC3144r9, LA la) {
        super(c1643Hi);
        this.A09 = false;
        this.A06 = false;
        this.A05 = false;
        this.A0A = new Handler(Looper.getMainLooper());
        this.A0E = c1643Hi;
        this.A0F = interfaceC2909nG;
        this.A0C = interfaceC3144r9;
        this.A0B = new ViewOnSystemUiVisibilityChangeListenerC3097qO(this);
        this.A0D = la;
        this.A0G = new C2917nO(this.A0D.A37(), this.A0F);
        this.A0H = A0g();
        if (this.A0D.A3F()) {
            A0W();
        }
        if (this.A0D.A3U()) {
            A0X();
        }
    }

    private C2429fN A0T(int i) {
        if (this.A07 != null) {
            if (i == 1) {
                C2416fA c2416fA = this.A07;
                if (A0J[2].charAt(7) != 'O') {
                    throw new RuntimeException();
                }
                A0J[0] = "MYlveE6g4wScBr3MsnlZwbj0w3RA4Q0m";
                return c2416fA.A01();
            }
            return this.A07.A00();
        }
        return null;
    }

    private void A0W() {
        this.A02 = AbstractC3256sx.A01(this.A0E, true, this.A0D, this.A0G, this.A0C, EnumC3254sv.A03, AbstractC3253su.A00(this.A0D));
        AbstractC3111qc.A0L(this.A02);
    }

    private void A0X() {
        this.A03 = AbstractC3256sx.A02(this.A0E, EnumC3254sv.A03, this.A0D);
        this.A03.setBackgroundColor(-2145637581);
        AbstractC3111qc.A0L(this.A03);
    }

    private void A0Y() {
        removeAllViews();
        AbstractC3111qc.A0K(this);
    }

    private void A0Z() {
        if (this.A03 != null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(9);
            layoutParams.addRule(12);
            layoutParams.setMargins(A0K, A0L, 0, A0K);
            addView(this.A03, layoutParams);
        }
    }

    private void A0a() {
        if (this.A02 != null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(11);
            layoutParams.addRule(12);
            layoutParams.setMargins(0, A0L, A0K, A0K);
            addView(this.A02, layoutParams);
        }
    }

    private void A0b() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        if (A0n() && this.A04 == null) {
            this.A06 = true;
            this.A04 = new C3186rp(this.A0E, this.A0D.A32().A0J(), this.A0D.A35()).A0A(this.A0D.A31().A01()).A0F();
            AbstractC2919nQ.A04(this.A04, this.A0G, EnumC2916nN.A0U);
            this.A0C.A4U(this, 0, layoutParams);
            this.A0C.A4U(this.A04, 1, layoutParams);
            this.A04.A04(new C1592Fi(this));
            return;
        }
        this.A0C.A4U(this, 0, layoutParams);
    }

    private void A0d(C2429fN c2429fN, boolean z) {
        RelativeLayout.LayoutParams layoutParams;
        AbstractC3111qc.A0L(this.A0H);
        if (this.A0D.A2K()) {
            layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(0, AbstractC3068pv.A0P, 0, 0);
        } else {
            layoutParams = new RelativeLayout.LayoutParams(-1, this.A0H.getToolbarHeight());
            this.A0H.A0D(c2429fN, ViewOnClickListenerC1569El.A05(this.A0D));
        }
        layoutParams.addRule(10);
        View view = this.A0H;
        if (A0J[4].length() == 0) {
            throw new RuntimeException();
        }
        A0J[4] = com.ironsource.Nc.e;
        addView(view, layoutParams);
    }

    public final void A0h() {
        if (this.A00 == null || !(this.A00 instanceof AbstractC3370un)) {
            return;
        }
        if (A0o()) {
            ((AbstractC3370un) this.A00).A1U();
        } else {
            ((AbstractC3370un) this.A00).A1T();
        }
    }

    public final void A0j(int i) {
        this.A01 = new C3055pi(i, new C1591Fh(this, i));
        this.A05 = true;
        A0h();
        this.A01.A07();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00e4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A0k(android.view.View r9, boolean r10, int r11) {
        /*
            Method dump skipped, instruction units count: 292
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC1590Fg.A0k(android.view.View, boolean, int):void");
    }

    public final void A0l(C2683jY c2683jY) {
        if (c2683jY.A05() != null && c2683jY.A05().getWindow() != null) {
            this.A0B.A04(c2683jY.A05().getWindow());
        }
        this.A07 = this.A0D.A31();
        C2420fE c2420fEA32 = null;
        C2420fE adInfo = this.A0D.A32();
        if (adInfo != null) {
            C2420fE adInfo2 = this.A0D.A32();
            if (adInfo2 != null) {
                c2420fEA32 = this.A0D.A32();
            }
        }
        this.A0H.setPageDetails(this.A0D.A35(), this.A0D.A37(), c2420fEA32 != null ? c2420fEA32.A0I().A04() : 0, this.A0D.A36());
        this.A0H.setToolbarListener(new C1594Fk(this, c2683jY));
    }

    public final void A0m(C2683jY c2683jY) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        alphaAnimation.setDuration(200L);
        alphaAnimation.setAnimationListener(new AnimationAnimationListenerC3158rN(this, this, c2683jY));
        startAnimation(alphaAnimation);
    }

    public final boolean A0n() {
        if (!this.A0D.A39().isEmpty()) {
            boolean zA0X = this.A0D.A32().A0X();
            if (A0J[6].charAt(3) != 'z') {
                throw new RuntimeException();
            }
            A0J[2] = "rwsNokIOLx9Fj0KMvDMbhHWjcozH5rOe";
            if (zA0X) {
                return true;
            }
        }
        return false;
    }

    public final boolean A0o() {
        return this.A05;
    }

    public final boolean A0p() {
        return this.A06;
    }

    public void AGF(boolean z) {
        if (this.A01 != null && this.A01.A05()) {
            this.A01.A06();
        }
        if (!z && this.A02 != null) {
            this.A02.A0P();
        }
    }

    public void AGp(boolean z) {
        if (this.A01 != null && !this.A01.A04()) {
            this.A01.A07();
        }
    }

    public InterfaceC2909nG getAdEventManager() {
        return this.A0F;
    }

    public InterfaceC3144r9 getAudienceNetworkListener() {
        return this.A0C;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public String getCurrentClientToken() {
        return this.A0D.A37();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    public void onDestroy() {
        this.A0B.A03();
        this.A0H.setToolbarListener(null);
        this.A0A.removeCallbacksAndMessages(null);
        if (this.A02 != null) {
            this.A02.A0O();
        }
        A0Y();
    }

    public void setImpressionRecordingFlag(C3102qT c3102qT) {
        c3102qT.A05();
        if (getAudienceNetworkListener() != null) {
            if (this.A09) {
                getAudienceNetworkListener().A5C(new FG().A8s());
            } else {
                getAudienceNetworkListener().A5C(A0V(0, 47, 106));
            }
        }
    }

    public void setListener(InterfaceC3144r9 interfaceC3144r9) {
    }

    public void setServerSideRewardHandler(C2499gV c2499gV) {
        this.A08 = c2499gV;
    }
}
