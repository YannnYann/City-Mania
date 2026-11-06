package com.google.android.libraries.ads.mobile.sdk.nativead;

import ads_mobile_sdk.pm1;
import ads_mobile_sdk.tz2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
public final class d extends SuspendLambda implements Function1 {
    public final /* synthetic */ tz2 a;
    public final /* synthetic */ NativeAdLoaderCallback b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(tz2 tz2Var, NativeAdLoaderCallback nativeAdLoaderCallback, Continuation continuation) {
        super(1, continuation);
        this.a = tz2Var;
        this.b = nativeAdLoaderCallback;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new d(this.a, this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new d(this.a, this.b, (Continuation) obj).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        this.a.a(new pm1(this.b));
        return Unit.INSTANCE;
    }
}
