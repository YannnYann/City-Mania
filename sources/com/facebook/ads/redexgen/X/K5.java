package com.facebook.ads.redexgen.X;

import android.content.Context;
import com.facebook.ads.AdSettings;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class K5 implements InterfaceC2836m5 {
    @Override // com.facebook.ads.redexgen.X.InterfaceC2836m5
    public final String A7j() {
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2836m5
    public final String A7y() {
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2836m5
    public final C2794lO A8N(C2780lA c2780lA) {
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2836m5
    public final String A99() {
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2836m5
    public final String A9t() {
        if (AdSettings.getTestAdType() != AdSettings.TestAdType.DEFAULT) {
            return AdSettings.getTestAdType().getAdTypeString();
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2836m5
    public final boolean ABI() {
        return AdSettings.isMixedAudience();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2836m5
    public final boolean ABO() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2836m5
    public final Boolean ABS() {
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2836m5
    public final boolean isTestMode(Context context) {
        return AdSettings.isTestMode(context);
    }
}
