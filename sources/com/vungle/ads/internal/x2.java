package com.vungle.ads.internal;

import android.content.Context;
import com.vungle.ads.BidTokenCallback;
import com.vungle.ads.SdkVersionTooLow;
import com.vungle.ads.VungleAds;
import com.vungle.ads.internal.privacy.PrivacyManager;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class x2 {
    public static void a(Context context, final BidTokenCallback callback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (com.vungle.ads.internal.util.a0.a()) {
            new SdkVersionTooLow("RTB: SDK is supported only for API versions 25 and above.").logErrorNoReturnValue$vungle_ads_release();
            callback.onBidTokenError("RTB: SDK is supported only for API versions 25 and above.");
            return;
        }
        if (!VungleAds.Companion.isInitialized()) {
            PrivacyManager privacyManager = PrivacyManager.INSTANCE;
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
            privacyManager.a(applicationContext);
        }
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Lazy lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new v2(context));
        ((com.vungle.ads.internal.executor.d) LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new w2(context)).getValue()).a().execute(new Runnable() { // from class: com.vungle.ads.internal.x2$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                x2.a(callback, lazy);
            }
        });
    }

    public static final void a(BidTokenCallback callback, Lazy bidTokenEncoder$delegate) throws Throwable {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(bidTokenEncoder$delegate, "$bidTokenEncoder$delegate");
        k2 k2Var = new k2(Sdk.SDKMetric.SDKMetricType.BID_TOKEN_REQUEST_TO_RESPONSE_DURATION_MS);
        k2Var.e();
        com.vungle.ads.internal.bidding.b bVarB = ((com.vungle.ads.internal.bidding.e) bidTokenEncoder$delegate.getValue()).b();
        k2Var.d();
        if (bVarB.a().length() > 0) {
            callback.onBidTokenCollected(bVarB.a());
        } else {
            k2Var.a(Sdk.SDKMetric.SDKMetricType.BID_TOKEN_REQUEST_TO_FAIL_DURATION_MS);
            k2Var.a(bVarB.b());
            callback.onBidTokenError(bVarB.b());
        }
        AnalyticsClient.a(AnalyticsClient.INSTANCE, k2Var, (com.vungle.ads.internal.util.t) null, 6);
    }
}
