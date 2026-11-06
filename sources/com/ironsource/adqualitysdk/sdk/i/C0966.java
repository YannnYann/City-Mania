package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﻨ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0966 extends AbstractC0721 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0048 f3650;

    public C0966(C0048 c0048) {
        this.f3650 = c0048;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0721, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        C0048 c0048 = this.f3650;
        c0048.m1067(AbstractC0047.f592, C0048.m1056(c0048, activity));
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0721, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        C0048 c0048 = this.f3650;
        c0048.m1067(AbstractC0047.f591, C0048.m1056(c0048, activity));
    }
}
