package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.View;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class HS implements InterfaceC2994og {
    @Override // com.facebook.ads.redexgen.X.InterfaceC2994og
    public final void AJr(Throwable th, Object obj) {
        if (obj instanceof InterfaceC2776l6) {
            C1643Hi adContext = ((InterfaceC2776l6) obj).A7M();
            if (adContext != null) {
                adContext.A0Q(th);
                return;
            }
            return;
        }
        if (!(obj instanceof View)) {
            return;
        }
        Context context = ((View) obj).getContext();
        if (!(context instanceof C1643Hi)) {
            return;
        }
        ((C1643Hi) context).A0Q(th);
    }
}
