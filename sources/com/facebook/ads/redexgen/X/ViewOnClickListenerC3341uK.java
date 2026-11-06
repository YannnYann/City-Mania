package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Iterator;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.uK, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3341uK implements View.OnClickListener {
    public final /* synthetic */ C3344uN A00;

    public ViewOnClickListenerC3341uK(C3344uN c3344uN) {
        this.A00 = c3344uN;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A00.A05.AFq();
            if (this.A00.A00 != null) {
                AbstractC3111qc.A0M(this.A00.A00);
            }
            Iterator it = this.A00.A07.iterator();
            while (it.hasNext()) {
                AbstractC3111qc.A0P((View) it.next(), 0);
            }
            AbstractC3111qc.A0K(this.A00);
            if (this.A00.A06 == null) {
                return;
            }
            AbstractC3111qc.A0P(this.A00.A06, 0);
            this.A00.A06.A0f(EnumC2349e4.A03, 14);
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
