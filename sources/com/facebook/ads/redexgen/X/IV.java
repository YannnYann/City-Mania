package com.facebook.ads.redexgen.X;

import android.view.View;
import android.widget.RelativeLayout;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class IV implements InterfaceC3144r9 {
    public final WeakReference<C2683jY> A00;

    public IV(C2683jY c2683jY) {
        this.A00 = new WeakReference<>(c2683jY);
    }

    private void A00(C2683jY c2683jY) {
        C2593i4 c2593i4A07 = c2683jY.A07();
        if (c2593i4A07 != null && c2683jY.A04() != null) {
            c2683jY.A04().bringChildToFront(c2593i4A07);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3144r9
    public void A4U(View view, int i, RelativeLayout.LayoutParams layoutParams) {
        C2683jY c2683jY = this.A00.get();
        if (c2683jY != null && c2683jY.A04() != null) {
            c2683jY.A04().addView(view, i, layoutParams);
            A00(c2683jY);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3144r9
    public void A4V(View view, RelativeLayout.LayoutParams layoutParams) {
        C2683jY c2683jY = this.A00.get();
        if (c2683jY != null && c2683jY.A04() != null) {
            c2683jY.A04().addView(view, layoutParams);
            A00(c2683jY);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3144r9
    public void A5C(String str) {
        if (this.A00.get() != null) {
            this.A00.get().A0C(str);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3144r9
    public void A5D(String str, C2855mO c2855mO) {
        if (this.A00.get() != null) {
            this.A00.get().A0E(str, c2855mO);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3144r9
    public void ABW(String str, C2441fZ c2441fZ) {
        if (this.A00.get() != null) {
            this.A00.get().A0D(str, c2441fZ);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3144r9
    public void AEH(int i) {
        C2683jY activityApi = this.A00.get();
        if (activityApi != null) {
            activityApi.finish(i);
        }
    }
}
