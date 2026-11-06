package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.ads.NativeAd;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class II implements InterfaceC3446w1 {
    public final /* synthetic */ NativeAd A00;
    public final /* synthetic */ IC A01;
    public final /* synthetic */ GT A02;

    public II(IC ic, GT gt, NativeAd nativeAd) {
        this.A01 = ic;
        this.A02 = gt;
        this.A00 = nativeAd;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3446w1
    public final void ABV() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3446w1
    public final void AEo(C6T c6t) {
        new Handler(Looper.getMainLooper()).postDelayed(new IJ(this, c6t), 1L);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3446w1
    public final void AF5() {
        if (this.A01.A0H != null) {
            this.A01.A0H.A08();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3446w1
    public final void AHL(View view, MotionEvent motionEvent) {
        this.A02.A1E().A06(this.A01.A0C, motionEvent, view, view);
        if (motionEvent.getAction() == 1 && !this.A01.A0U(this.A00) && this.A02.A17() != null) {
            this.A02.A17().onClick(view);
        }
    }
}
