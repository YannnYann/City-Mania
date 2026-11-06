package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.ISAdQualityCustomMediationRevenue;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Collections;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ʡ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0136 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0125 f1086;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ ISAdQualityCustomMediationRevenue f1087;

    public C0136(C0125 c0125, ISAdQualityCustomMediationRevenue iSAdQualityCustomMediationRevenue) {
        this.f1086 = c0125;
        this.f1087 = iSAdQualityCustomMediationRevenue;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        this.f1086.f1066.m1239(StringFog.decrypt("jc5+Wh6Gcx+OhXVdM5dsFYz7dlIGoH8G\n", "4KsaM3/yGnA=\n"), Collections.singletonList(C0125.m1102(this.f1086, this.f1087)));
    }
}
