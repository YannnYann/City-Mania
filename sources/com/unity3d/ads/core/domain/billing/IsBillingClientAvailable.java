package com.unity3d.ads.core.domain.billing;

import com.android.billingclient.api.BillingClient;
import kotlin.Result;
import kotlin.ResultKt;

/* JADX INFO: compiled from: IsBillingClientAvailable.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class IsBillingClientAvailable {
    public final boolean invoke() {
        Object objM2760constructorimpl;
        try {
            objM2760constructorimpl = Result.m2760constructorimpl(BillingClient.class);
        } catch (Throwable th) {
            Result.Companion companion = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        return Result.m2766isSuccessimpl(objM2760constructorimpl);
    }
}
