package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.WindowInsets;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.hZ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnApplyWindowInsetsListenerC2563hZ implements View.OnApplyWindowInsetsListener {
    public final /* synthetic */ InterfaceC2549hL A00;
    public final /* synthetic */ C3N A01;

    public ViewOnApplyWindowInsetsListenerC2563hZ(C3N c3n, InterfaceC2549hL interfaceC2549hL) {
        this.A01 = c3n;
        this.A00 = interfaceC2549hL;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        C2581hs compatInsets = this.A00.ADs(view, C2581hs.A00(windowInsets));
        return (WindowInsets) C2581hs.A01(compatInsets);
    }
}
