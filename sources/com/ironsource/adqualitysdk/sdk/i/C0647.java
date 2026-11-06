package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴩ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0647 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0641 f2674;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Activity f2675;

    public C0647(C0641 c0641, Activity activity) {
        this.f2674 = c0641;
        this.f2675 = activity;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0448 c0448 = this.f2674.f2661.f2621;
        String strDecrypt = StringFog.decrypt("PLsWUJhLHoQpoA==\n", "WtR1JesUcus=\n");
        c0448.getClass();
        AbstractC0272.m1211(new C0450(c0448, strDecrypt));
        this.f2674.f2661.m1403(StringFog.decrypt("pxgYH7oeNImyAw==\n", "wXd7aslBWOY=\n"), C0641.m1410(this.f2674, this.f2675));
    }
}
