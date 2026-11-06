package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.ISAdQualityCustomMediationRevenue;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Collections;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ʢ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0137 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0125 f1088;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ ISAdQualityCustomMediationRevenue f1089;

    public C0137(C0125 c0125, ISAdQualityCustomMediationRevenue iSAdQualityCustomMediationRevenue) {
        this.f1088 = c0125;
        this.f1089 = iSAdQualityCustomMediationRevenue;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        this.f1088.f1066.m1239(StringFog.decrypt("uRJwjErGERi6WXuLaMcLA7saRoBd\n", "1HcU5SuyeHc=\n"), Collections.singletonList(C0125.m1102(this.f1088, this.f1089)));
        this.f1088.f1067 = true;
    }
}
