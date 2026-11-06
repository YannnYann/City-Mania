package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.ISAdQualityAdListener;
import com.ironsource.adqualitysdk.sdk.ISAdQualityAdType;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ণ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0385 implements ISAdQualityAdListener {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0361 f2012;

    public C0385(C0361 c0361) {
        this.f2012 = c0361;
    }

    @Override // com.ironsource.adqualitysdk.sdk.ISAdQualityAdListener
    public final void adClosed(String str, ISAdQualityAdType iSAdQualityAdType) {
        ISAdQualityAdListener iSAdQualityAdListener = this.f2012.f1971.f1355;
        if (iSAdQualityAdListener != null) {
            iSAdQualityAdListener.adClosed(str, iSAdQualityAdType);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.ISAdQualityAdListener
    public final void adDisplayed(String str, ISAdQualityAdType iSAdQualityAdType) {
        ISAdQualityAdListener iSAdQualityAdListener = this.f2012.f1971.f1355;
        if (iSAdQualityAdListener != null) {
            iSAdQualityAdListener.adDisplayed(str, iSAdQualityAdType);
        }
    }
}
