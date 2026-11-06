package com.ironsource.adqualitysdk.sdk.i;

import android.os.Handler;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ӌ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0257 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0235 f1576;

    public C0257(C0235 c0235) {
        this.f1576 = c0235;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0967 c0967 = this.f1576.f1539;
        if (c0967 != null) {
            Handler handler = c0967.f3662;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            c0967.f3662 = null;
            this.f1576.f1539 = null;
        }
        this.f1576.getClass();
        HashMap map = this.f1576.f1540;
        if (map != null) {
            map.clear();
        }
    }
}
