package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.ISAdQualityInitListener;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ѓ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0237 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0204 f1541;

    public C0237(C0204 c0204) {
        this.f1541 = c0204;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        for (ISAdQualityInitListener iSAdQualityInitListener : this.f1541.f1350) {
            if (iSAdQualityInitListener != null) {
                iSAdQualityInitListener.adQualitySdkInitSuccess();
            }
        }
        this.f1541.f1350.clear();
    }
}
