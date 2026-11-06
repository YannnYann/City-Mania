package com.unity3d.services.store.gpbl.bridges.billingclient;

import android.content.Context;
import com.unity3d.services.store.gpbl.bridges.billingclient.v6.BillingClientBuilderBridge;
import com.unity3d.services.store.gpbl.bridges.billingclient.v8.BillingClientBridge;
import com.unity3d.services.store.gpbl.bridges.billingclient.v8.QueryProductDetailsResultsBridge;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BillingClientAdapterFactory.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class BillingClientAdapterFactory {
    public final BillingClientAdapter createBillingClientAdapter(Context context) {
        BillingClientAdapter billingClientAdapterCreateV6Adapter$default;
        Intrinsics.checkNotNullParameter(context, "context");
        Object objM2023createV8AdapterIoAF18A = m2023createV8AdapterIoAF18A(context);
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2023createV8AdapterIoAF18A);
        if (thM2763exceptionOrNullimpl != null) {
            if (thM2763exceptionOrNullimpl instanceof FallbackException) {
                billingClientAdapterCreateV6Adapter$default = createV6Adapter(context, ((FallbackException) thM2763exceptionOrNullimpl).getDetectedVersion());
            } else {
                billingClientAdapterCreateV6Adapter$default = createV6Adapter$default(this, context, 0, 2, null);
            }
            objM2023createV8AdapterIoAF18A = billingClientAdapterCreateV6Adapter$default;
        }
        return (BillingClientAdapter) objM2023createV8AdapterIoAF18A;
    }

    /* JADX INFO: renamed from: createV8Adapter-IoAF18A, reason: not valid java name */
    private final Object m2023createV8AdapterIoAF18A(Context context) {
        try {
            Result.Companion companion = Result.Companion;
            com.unity3d.services.store.gpbl.bridges.billingclient.v8.BillingClientAdapter billingClientAdapter = new com.unity3d.services.store.gpbl.bridges.billingclient.v8.BillingClientAdapter(BillingClientBridge.Companion.newBuilder(context));
            if (new QueryProductDetailsResultsBridge(new Object()).exists()) {
                return Result.m2760constructorimpl(billingClientAdapter);
            }
            throw new FallbackException(7);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public static /* synthetic */ BillingClientAdapter createV6Adapter$default(BillingClientAdapterFactory billingClientAdapterFactory, Context context, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 6;
        }
        return billingClientAdapterFactory.createV6Adapter(context, i);
    }

    private final BillingClientAdapter createV6Adapter(Context context, int i) {
        Object objM2760constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            BillingClientBuilderBridge billingClientBuilderBridgeNewBuilder = com.unity3d.services.store.gpbl.bridges.billingclient.v6.BillingClientBridge.newBuilder(context);
            Intrinsics.checkNotNull(billingClientBuilderBridgeNewBuilder);
            objM2760constructorimpl = Result.m2760constructorimpl(new com.unity3d.services.store.gpbl.bridges.billingclient.v6.BillingClientAdapter(billingClientBuilderBridgeNewBuilder, i));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m2765isFailureimpl(objM2760constructorimpl)) {
            objM2760constructorimpl = null;
        }
        return (BillingClientAdapter) objM2760constructorimpl;
    }
}
