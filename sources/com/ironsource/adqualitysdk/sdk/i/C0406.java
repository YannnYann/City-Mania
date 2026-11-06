package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.ISAdQualityInitError;
import com.ironsource.adqualitysdk.sdk.ISAdQualityInitListener;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.จ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0406 implements ISAdQualityInitListener {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0361 f2140;

    public C0406(C0361 c0361) {
        this.f2140 = c0361;
    }

    @Override // com.ironsource.adqualitysdk.sdk.ISAdQualityInitListener
    public final void adQualitySdkInitFailed(ISAdQualityInitError iSAdQualityInitError, String str) {
        C0204.m1171(this.f2140.f1971.f1350, iSAdQualityInitError, str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.ISAdQualityInitListener
    public final void adQualitySdkInitSuccess() {
        C0204 c0204 = this.f2140.f1971;
        String str = C0204.f1347;
        c0204.getClass();
        AbstractC0272.m1210(new C0237(c0204));
    }
}
