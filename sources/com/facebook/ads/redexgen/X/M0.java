package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class M0 implements InterfaceC3446w1 {
    public final /* synthetic */ C14107r A00;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.InterfaceC3446w1
    public final void ABV() {
        if (this.A00.A03 == null || this.A00.A03.A35() == null) {
            return;
        }
        String strA00 = this.A00.A03.A35().A00();
        if (TextUtils.isEmpty(strA00)) {
            return;
        }
        C3032pK.A0P(new C3032pK(), this.A00.A04, AbstractC3036pP.A00(strA00), this.A00.A7z());
    }

    public M0(C14107r c14107r) {
        this.A00 = c14107r;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3446w1
    public final void AEo(C6T c6t) {
        new Handler(Looper.getMainLooper()).postDelayed(new M4(this, c6t), 1L);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3446w1
    public final void AF5() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3446w1
    public final void AHL(View view, MotionEvent motionEvent) {
    }
}
