package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.WindowInsets;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3N, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C3N extends C3P {
    @Override // com.facebook.ads.redexgen.X.C2564ha
    public final C2581hs A07(View view, C2581hs c2581hs) {
        WindowInsets result = (WindowInsets) C2581hs.A01(c2581hs);
        WindowInsets unwrapped = view.dispatchApplyWindowInsets(result);
        if (unwrapped != result) {
            result = new WindowInsets(unwrapped);
        }
        return C2581hs.A00(result);
    }

    @Override // com.facebook.ads.redexgen.X.C2564ha
    public final C2581hs A08(View view, C2581hs c2581hs) {
        WindowInsets result = (WindowInsets) C2581hs.A01(c2581hs);
        WindowInsets unwrapped = view.onApplyWindowInsets(result);
        if (unwrapped != result) {
            result = new WindowInsets(unwrapped);
        }
        return C2581hs.A00(result);
    }

    @Override // com.facebook.ads.redexgen.X.C2564ha
    public final void A0A(View view) {
        view.stopNestedScroll();
    }

    @Override // com.facebook.ads.redexgen.X.C2564ha
    public final void A0E(View view, InterfaceC2549hL interfaceC2549hL) {
        if (interfaceC2549hL == null) {
            view.setOnApplyWindowInsetsListener(null);
        } else {
            view.setOnApplyWindowInsetsListener(new ViewOnApplyWindowInsetsListenerC2563hZ(this, interfaceC2549hL));
        }
    }
}
