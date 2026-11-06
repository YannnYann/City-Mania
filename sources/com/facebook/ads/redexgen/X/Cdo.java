package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.do, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class Cdo implements View.OnClickListener {
    public final /* synthetic */ AnonymousClass51 A00;

    public Cdo(AnonymousClass51 anonymousClass51) {
        this.A00 = anonymousClass51;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
        }
        try {
            if (this.A00.getVideoView() != null) {
                if (this.A00.A02 != null) {
                    this.A00.A02.A04(EnumC2916nN.A1B, null);
                }
                this.A00.A01.A0F().A43();
                switch (this.A00.getVideoView().getState()) {
                    case A07:
                    case A04:
                    case A05:
                    case A06:
                        this.A00.getVideoView().A0f(EnumC2349e4.A05, 12);
                        break;
                    case A0A:
                        this.A00.getVideoView().A0j(true, 8);
                        break;
                }
            }
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
