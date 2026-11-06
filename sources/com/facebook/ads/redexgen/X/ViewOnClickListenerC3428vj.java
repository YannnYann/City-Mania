package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.vj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3428vj implements View.OnClickListener {
    public final /* synthetic */ EE A00;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        Uri uriA0O;
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            if (this.A00.A0j == null || (uriA0O = ((C14147v) this.A00.A0j).A0O()) == null) {
                return;
            }
            if (!this.A00.A0L) {
                this.A00.A0M = true;
                this.A00.A0u(uriA0O.toString());
                if (this.A00.getNtdHideCallback() != null) {
                    this.A00.getNtdHideCallback().AEO(this.A00.A0g);
                }
                if (this.A00.A0o.A0D() != null) {
                    this.A00.A0o.A0D().ADH();
                }
                if (this.A00.A0k.A1N() >= 0) {
                    this.A00.A0e.postDelayed(this.A00.A0q, this.A00.A0k.A1N());
                }
            }
            if (this.A00.A0E != null) {
                this.A00.A0E.A0B();
                this.A00.A0E = null;
            }
            this.A00.A0y(this.A00.A0L ? false : true);
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }

    public ViewOnClickListenerC3428vj(EE ee) {
        this.A00 = ee;
    }
}
