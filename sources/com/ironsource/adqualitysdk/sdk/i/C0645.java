package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴦ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0645 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0641 f2666;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Activity f2667;

    public C0645(C0641 c0641, Activity activity) {
        this.f2666 = c0641;
        this.f2667 = activity;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0448 c0448 = this.f2666.f2661.f2621;
        String strDecrypt = StringFog.decrypt("EMHAGY3GNekF2swem/0=\n", "dq6jbP6ZR4w=\n");
        c0448.getClass();
        AbstractC0272.m1211(new C0450(c0448, strDecrypt));
        this.f2666.f2661.m1403(StringFog.decrypt("Ahyo4eK5xgUXB6Tm9II=\n", "ZHPLlJHmtGA=\n"), C0641.m1410(this.f2666, this.f2667));
    }
}
