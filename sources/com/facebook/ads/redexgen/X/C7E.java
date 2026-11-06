package com.facebook.ads.redexgen.X;

import android.view.View;
import android.widget.RelativeLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7E, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C7E extends IV {
    public C7E(C2683jY c2683jY) {
        super(c2683jY);
    }

    @Override // com.facebook.ads.redexgen.X.IV, com.facebook.ads.redexgen.X.InterfaceC3144r9
    public final /* bridge */ /* synthetic */ void A4U(View view, int i, RelativeLayout.LayoutParams layoutParams) {
        super.A4U(view, i, layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.IV, com.facebook.ads.redexgen.X.InterfaceC3144r9
    public final /* bridge */ /* synthetic */ void A4V(View view, RelativeLayout.LayoutParams layoutParams) {
        super.A4V(view, layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.IV, com.facebook.ads.redexgen.X.InterfaceC3144r9
    public final void A5C(String str) {
        super.A5C(str);
        if (this.A00.get() == null) {
            return;
        }
        String strA03 = EnumC2343dy.A08.A03();
        String rewardedVideoError = EnumC2343dy.A09.A03();
        if (str.equals(strA03)) {
            this.A00.get().finish(11);
        } else if (str.equals(rewardedVideoError)) {
            this.A00.get().finish(12);
        }
    }

    @Override // com.facebook.ads.redexgen.X.IV, com.facebook.ads.redexgen.X.InterfaceC3144r9
    public final /* bridge */ /* synthetic */ void A5D(String str, C2855mO c2855mO) {
        super.A5D(str, c2855mO);
    }

    @Override // com.facebook.ads.redexgen.X.IV, com.facebook.ads.redexgen.X.InterfaceC3144r9
    public final /* bridge */ /* synthetic */ void ABW(String str, C2441fZ c2441fZ) {
        super.ABW(str, c2441fZ);
    }

    @Override // com.facebook.ads.redexgen.X.IV, com.facebook.ads.redexgen.X.InterfaceC3144r9
    public final /* bridge */ /* synthetic */ void AEH(int i) {
        super.AEH(i);
    }
}
