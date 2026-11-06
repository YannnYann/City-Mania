package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Cg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1512Cg extends FrameLayout implements InterfaceC3145rA {
    public static final RelativeLayout.LayoutParams A0F = new RelativeLayout.LayoutParams(-1, -1);
    public C2683jY A00;
    public InterfaceC3145rA A01;
    public Intent A02;
    public Bundle A03;
    public InterfaceC3145rA A04;
    public final LA A05;
    public final LA A06;
    public final C2443fb A07;
    public final C1643Hi A08;
    public final InterfaceC2909nG A09;
    public final EnumC2980oR A0A;
    public final ViewOnSystemUiVisibilityChangeListenerC3097qO A0B;
    public final InterfaceC3144r9 A0C;
    public final InterfaceC3200s3 A0D;
    public final boolean A0E;

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final /* synthetic */ void onStart() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final /* synthetic */ void onStop() {
    }

    public C1512Cg(C1643Hi c1643Hi, InterfaceC2909nG interfaceC2909nG, LA la, LA la2, InterfaceC3144r9 interfaceC3144r9, C2683jY c2683jY, EnumC2980oR enumC2980oR) {
        super(c1643Hi);
        this.A08 = c1643Hi;
        this.A09 = interfaceC2909nG;
        this.A06 = la;
        this.A05 = la2;
        this.A07 = this.A05.A32().A0I().A07();
        this.A0C = interfaceC3144r9;
        this.A0B = new ViewOnSystemUiVisibilityChangeListenerC3097qO(this);
        this.A0B.A05(EnumC3096qN.A03);
        this.A0A = enumC2980oR;
        if (this.A0A == EnumC2980oR.A0L) {
            this.A0D = new FG();
        } else {
            this.A0D = new FH();
        }
        boolean z = false;
        if (this.A07 != null) {
            if (this.A07.A0g() && this.A05.A2Z()) {
                z = true;
            }
            this.A0E = z;
            return;
        }
        this.A0E = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InterfaceC3145rA A05(InterfaceC3200s3 interfaceC3200s3, C2443fb c2443fb, Boolean bool, EnumC3176rf enumC3176rf) {
        if (bool.booleanValue()) {
            FM fm = new FM(this.A08, this.A09, this.A0C, this.A05, c2443fb, this.A05.A1u(), interfaceC3200s3);
            fm.setImpressionLogging(enumC3176rf);
            return fm;
        }
        return new FS(this.A08, this.A09, this.A0C, this.A05, this.A05.A1u(), interfaceC3200s3, enumC3176rf == EnumC3176rf.A03);
    }

    private C13565p A0A() {
        if (this.A07 != null) {
            this.A06.A28(this.A07.A0c());
            this.A06.A29(this.A07.A0h());
        }
        C13565p c13565p = new C13565p(this.A08, this.A0D, this.A09, this.A06, new C2771kz(this.A08), this.A0C);
        c13565p.setVideoLeadingPlayableAdListener(new C1513Ch(this));
        return c13565p;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0B() {
        if (this.A04 != null) {
            this.A04.onDestroy();
            if (this.A04 instanceof View) {
                ((View) this.A04).setVisibility(8);
                removeView((View) this.A04);
            }
        }
    }

    private void A0C(Intent intent, Bundle bundle, C2683jY c2683jY) {
        C2443fb c2443fb = this.A07;
        if (c2443fb == null) {
            return;
        }
        c2443fb.A0W(false);
        this.A04 = A05(this.A0D, c2443fb, Boolean.valueOf(this.A05.A2Z()), EnumC3176rf.A02);
        this.A04.ABc(intent, bundle, c2683jY);
    }

    private void A0D(Intent intent, Bundle bundle, C2683jY c2683jY) {
        this.A04 = A0A();
        this.A04.ABc(intent, bundle, c2683jY);
        if (this.A0E && this.A07 != null) {
            this.A01 = A05(this.A0D, this.A07, Boolean.valueOf(this.A05.A2Z()), EnumC3176rf.A03);
            this.A01.ABc(intent, bundle, c2683jY);
        }
    }

    private final void A0E(Intent intent, Bundle bundle, C2683jY c2683jY) {
        if (A0G()) {
            A0C(intent, bundle, c2683jY);
        } else {
            A0D(intent, bundle, c2683jY);
        }
    }

    private boolean A0G() {
        return this.A05.A2j() && this.A07 != null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void ABc(Intent intent, Bundle bundle, C2683jY c2683jY) {
        this.A02 = intent;
        this.A03 = bundle;
        this.A00 = c2683jY;
        this.A0C.A4V(this, A0F);
        A0E(intent, bundle, c2683jY);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void AGF(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void AGp(boolean z) {
        if (this.A04 instanceof FM) {
            this.A04.AGp(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void AKD(Bundle bundle) {
    }

    public InterfaceC3145rA getContentView() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public String getCurrentClientToken() {
        return this.A06.A37();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        if (this.A04 != null) {
            this.A04.onActivityResult(i, i2, intent);
            return false;
        }
        return false;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.A04 instanceof FM) {
            ((FM) this.A04).onConfigurationChanged(configuration);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void onDestroy() {
    }

    public void setListener(InterfaceC3144r9 interfaceC3144r9) {
    }
}
