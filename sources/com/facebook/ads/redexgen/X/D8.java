package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.view.FullScreenAdToolbar;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class D8 extends FrameLayout implements InterfaceC3145rA {
    public static byte[] A0F;
    public static String[] A0G = {"2Xyaln6pEv", "U0a3JqFqqkDVhXbmlhDLXicSxteMexx", "xzpI97Jg3aS17fwtqg1jZWsfReheMZxV", "0HUxaz9ggnFIA", "Uunhkc3", "kqN9", "fWeU9xYsODnan54TmlbSL1hNy6Lef7fu", "qbKhPFfRzVPGu"};
    public static final RelativeLayout.LayoutParams A0H;
    public boolean A00;
    public ViewGroup A01;
    public boolean A02;
    public final LA A03;
    public final C2771kz A04;
    public final C1643Hi A05;
    public final InterfaceC2909nG A06;
    public final C2917nO A07;
    public final C3102qT A08;
    public final AbstractC3137r2 A09;
    public final InterfaceC3144r9 A0A;
    public final InterfaceC3200s3 A0B;
    public final C2224c2 A0C;
    public final ViewOnSystemUiVisibilityChangeListenerC3097qO A0D;
    public final AbstractC2225c3 A0E;

    public static String A0g(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 80);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0i() {
        A0F = new byte[]{84, 91, 74, 87, 86};
    }

    public abstract void A0p();

    public abstract void A0q();

    public abstract void A0s(C2683jY c2683jY);

    public abstract boolean A0t();

    public abstract boolean A0u();

    public /* synthetic */ void onStart() {
    }

    public /* synthetic */ void onStop() {
    }

    static {
        A0i();
        A0H = new RelativeLayout.LayoutParams(-1, -1);
    }

    public D8(C1643Hi c1643Hi, InterfaceC3200s3 interfaceC3200s3, InterfaceC2909nG interfaceC2909nG, LA la, C2771kz c2771kz, InterfaceC3144r9 interfaceC3144r9) {
        super(c1643Hi);
        this.A02 = false;
        this.A0E = new DE(this);
        this.A08 = new C3102qT();
        this.A00 = false;
        this.A05 = c1643Hi;
        this.A0B = interfaceC3200s3;
        this.A06 = interfaceC2909nG;
        this.A03 = la;
        this.A04 = c2771kz;
        this.A0A = interfaceC3144r9;
        this.A07 = new C2917nO(this.A03.A37(), this.A06);
        this.A0C = new C2224c2(this, 1, new WeakReference(this.A0E), this.A05);
        this.A0C.A0W(this.A03.A1J());
        this.A0C.A0X(this.A03.A1K());
        this.A09 = A0f();
        this.A0D = new ViewOnSystemUiVisibilityChangeListenerC3097qO(this);
        this.A0D.A05(EnumC3096qN.A03);
        if (!A0u() && Build.VERSION.SDK_INT >= 35) {
            setFitsSystemWindows(true);
        }
    }

    private AbstractC3137r2 A0f() {
        AbstractC3137r2 abstractC3137r2A0l = A0l();
        abstractC3137r2A0l.setFullscreen(true);
        int unskippableSeconds = this.A03.A32().A0I().A04();
        abstractC3137r2A0l.setPageDetails(this.A03.A35(), this.A03.A37(), unskippableSeconds, this.A03.A36());
        abstractC3137r2A0l.A0D(this.A03.A31().A01(), ViewOnClickListenerC1569El.A05(this.A03));
        if (this.A03.A32().A0I().A02() == 0) {
            this.A02 = true;
            abstractC3137r2A0l.setToolbarActionMode(8);
        } else if (unskippableSeconds < 0 && this.A03.A32().A0T()) {
            if (A0G[5].length() != 4) {
                throw new RuntimeException();
            }
            A0G[5] = "12R7";
            abstractC3137r2A0l.setToolbarActionMode(4);
        }
        if (this.A03.A32().A0I().A02() >= 0) {
            abstractC3137r2A0l.setProgressSpinnerInvisible(true);
        }
        abstractC3137r2A0l.setToolbarListener(new D9(this));
        return abstractC3137r2A0l;
    }

    private void A0h() {
        if (this.A03.A32().A0X()) {
            C3184rn c3184rnA0F = new C3186rp(this.A05, this.A03.A32().A0J(), this.A03.A35()).A0A(this.A03.A31().A01()).A0F();
            AbstractC2919nQ.A04(c3184rnA0F, this.A07, EnumC2916nN.A0U);
            addView(c3184rnA0F, A0H);
            c3184rnA0F.A04(new DB(this));
            return;
        }
        A0q();
    }

    public final C3055pi A0j(int i, AbstractRunnableC3004oq abstractRunnableC3004oq, C1466Am c1466Am) {
        C3055pi timer = new C3055pi(i, new DD(this, i, c1466Am, abstractRunnableC3004oq));
        timer.A07();
        return timer;
    }

    public final C3055pi A0k(int i, AbstractRunnableC3004oq abstractRunnableC3004oq, C1466Am c1466Am, InterfaceC3212sF interfaceC3212sF) {
        C3055pi timer = new C3055pi(i, new DC(this, i, c1466Am, interfaceC3212sF, abstractRunnableC3004oq));
        timer.A07();
        return timer;
    }

    public AbstractC3137r2 A0l() {
        if (A0u()) {
            if (this.A03.A2D()) {
                return new C1607Fy(this.A05, getAppOpenAdVariant(), this.A03, 8, new DA(this));
            }
            return new C1595Fl(this.A05, this.A03, 1);
        }
        return new FullScreenAdToolbar(this.A05, this.A0A, this.A07, 1, this.A03.A2u(), this.A03.A2e());
    }

    public void A0m() {
        if (!this.A03.A2D()) {
            return;
        }
        AbstractC3137r2 abstractC3137r2 = this.A09;
        if (A0G[4].length() == 31) {
            throw new RuntimeException();
        }
        A0G[4] = "c";
        Rect margins = abstractC3137r2.getRequestedMargins();
        if (margins == null) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.A09.getLayoutParams();
        layoutParams.setMargins(margins.left, margins.top, margins.right, margins.bottom);
        this.A09.setLayoutParams(layoutParams);
    }

    public final void A0n() {
        if (!this.A00) {
            this.A0C.A0U();
            this.A00 = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A0o() {
        /*
            r5 = this;
            com.facebook.ads.redexgen.X.r2 r0 = r5.A09
            int r1 = r0.getToolbarActionMode()
            r0 = 8
            if (r1 != r0) goto L36
            com.facebook.ads.redexgen.X.r2 r3 = r5.A09
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.D8.A0G
            r0 = 6
            r1 = r2[r0]
            r0 = 2
            r2 = r2[r0]
            r0 = 27
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L26
        L20:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L26:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.D8.A0G
            java.lang.String r1 = "eZr61MFsF2rwL"
            r0 = 3
            r2[r0] = r1
            java.lang.String r1 = "T1wa3uRffD5Dg"
            r0 = 7
            r2[r0] = r1
            r0 = 2
            r3.setToolbarActionMode(r0)
        L36:
            com.facebook.ads.redexgen.X.LA r0 = r5.A03
            com.facebook.ads.redexgen.X.fE r0 = r0.A32()
            com.facebook.ads.redexgen.X.fH r0 = r0.A0I()
            com.facebook.ads.redexgen.X.fb r0 = r0.A07()
            r4 = 0
            if (r0 == 0) goto L71
            com.facebook.ads.redexgen.X.LA r0 = r5.A03
            com.facebook.ads.redexgen.X.fE r0 = r0.A32()
            com.facebook.ads.redexgen.X.fH r3 = r0.A0I()
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.D8.A0G
            r0 = 4
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 31
            if (r1 == r0) goto L20
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.D8.A0G
            java.lang.String r1 = "COHiJK7VoTgBq0De7peYJOsfOEOe3XIQ"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "lGG8rOrP44fRkZ7H96nSjg4VgGaefoVT"
            r0 = 2
            r2[r0] = r1
            com.facebook.ads.redexgen.X.fb r0 = r3.A07()
            r0.A0T(r4)
        L71:
            com.facebook.ads.redexgen.X.LA r0 = r5.A03
            r0.A3D(r4)
            com.facebook.ads.redexgen.X.LA r0 = r5.A03
            com.facebook.ads.redexgen.X.fE r3 = r0.A32()
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.D8.A0G
            r0 = 1
            r1 = r2[r0]
            r0 = 0
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L9f
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.D8.A0G
            java.lang.String r1 = "wiu2MLgd3UkZmOSHZtDxRr0HkSCWnOg"
            r0 = 1
            r2[r0] = r1
            java.lang.String r1 = "Ed0NbamE8O"
            r0 = 0
            r2[r0] = r1
            r0 = -1
            r3.A0N(r0)
            return
        L9f:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.D8.A0G
            java.lang.String r1 = "aRfbrWr89hb3J"
            r0 = 3
            r2[r0] = r1
            java.lang.String r1 = "GJWDx2ihyHFEK"
            r0 = 7
            r2[r0] = r1
            r0 = -1
            r3.A0N(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.D8.A0o():void");
    }

    public final void A0r(ViewGroup viewGroup) {
        if (this.A03.A2D() && getAppOpenAdVariant() == EnumC3142r7.A07) {
            C3347uQ c3347uQ = new C3347uQ(this.A05);
            c3347uQ.setRadius(AbstractC3068pv.A0y);
            c3347uQ.addView(viewGroup, new ViewGroup.LayoutParams(-1, -1));
            this.A01 = c3347uQ;
            return;
        }
        this.A01 = viewGroup;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void ABc(Intent intent, Bundle bundle, C2683jY c2683jY) {
        this.A0A.A4V(this, A0H);
        A0s(c2683jY);
        A0h();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void AKD(Bundle bundle) {
    }

    private EnumC3142r7 getAppOpenAdVariant() {
        if (this.A03.A1U().equals(A0g(0, 5, 98))) {
            return EnumC3142r7.A07;
        }
        return EnumC3142r7.A08;
    }

    public Integer getBackgroundColorForToolbar() {
        if (this.A03.A2D()) {
            Integer num = getAppOpenAdVariant().A03;
            if (A0G[4].length() == 31) {
                throw new RuntimeException();
            }
            String[] strArr = A0G;
            strArr[1] = "PAMmmot6Tf7Ql1BWqbyc3bNBHIv9DUl";
            strArr[0] = "h1W7xn1Xng";
            return num;
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public String getCurrentClientToken() {
        return this.A03.A37();
    }

    public boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (!A0u() && Build.VERSION.SDK_INT >= 35) {
            setFitsSystemWindows(true);
        }
        A0m();
        if (A0G[4].length() == 31) {
            throw new RuntimeException();
        }
        String[] strArr = A0G;
        strArr[3] = "ppFHHBjYkV1v1";
        strArr[7] = "EE8p4ctuHDbMc";
    }

    public void onDestroy() {
        this.A0D.A03();
        if (!TextUtils.isEmpty(this.A03.A37())) {
            this.A06.ABt(this.A03.A37(), new C3303ti().A05(this.A0C).A04(this.A08).A07());
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.A08.A06(this.A05, motionEvent, this, this);
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void setListener(InterfaceC3144r9 interfaceC3144r9) {
    }

    public void setUpFullscreenMode(boolean z) {
        EnumC3096qN enumC3096qN;
        if (z) {
            enumC3096qN = EnumC3096qN.A04;
        } else {
            enumC3096qN = EnumC3096qN.A03;
        }
        ViewOnSystemUiVisibilityChangeListenerC3097qO viewOnSystemUiVisibilityChangeListenerC3097qO = this.A0D;
        String[] strArr = A0G;
        if (strArr[3].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0G;
        strArr2[6] = "qfOTxDoWDRCl3cD5KSGOieDqypiePN9l";
        strArr2[2] = "QItBARXNxGEv5WetvuW2OzigLPzeTM1z";
        viewOnSystemUiVisibilityChangeListenerC3097qO.A05(enumC3096qN);
    }
}
