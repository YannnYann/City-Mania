package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.ISAdQualityInitError;
import com.ironsource.adqualitysdk.sdk.ISAdQualityInitListener;
import java.util.Set;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ч, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0234 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ String f1535;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ ISAdQualityInitError f1536;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Set f1537;

    public C0234(Set set, ISAdQualityInitError iSAdQualityInitError, String str) {
        this.f1537 = set;
        this.f1536 = iSAdQualityInitError;
        this.f1535 = str;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        for (ISAdQualityInitListener iSAdQualityInitListener : this.f1537) {
            if (iSAdQualityInitListener != null) {
                iSAdQualityInitListener.adQualitySdkInitFailed(this.f1536, this.f1535);
            }
        }
        this.f1537.clear();
    }
}
