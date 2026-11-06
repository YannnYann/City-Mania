package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ϋ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0187 extends AbstractC0721 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0125 f1201;

    public C0187(C0125 c0125) {
        this.f1201 = c0125;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0721, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        AbstractC0272.m1214(new C0189(this));
    }
}
