package com.unity3d.services;

import com.unity3d.ads.core.domain.InitializeBoldSDK;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.Lazy;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: compiled from: UnityAdsSDK.kt */
/* JADX INFO: loaded from: classes4.dex */
@DebugMetadata(c = "com.unity3d.services.UnityAdsSDK$initialize$1$newInitializationJob$1", f = "UnityAdsSDK.kt", l = {Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE}, m = "invokeSuspend")
public final class UnityAdsSDK$initialize$1$newInitializationJob$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ CoroutineScope $initScope;
    final /* synthetic */ Lazy<InitializeBoldSDK> $initializeBoldSDK$delegate;
    final /* synthetic */ String $source;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public UnityAdsSDK$initialize$1$newInitializationJob$1(String str, CoroutineScope coroutineScope, Lazy<? extends InitializeBoldSDK> lazy, Continuation<? super UnityAdsSDK$initialize$1$newInitializationJob$1> continuation) {
        super(2, continuation);
        this.$source = str;
        this.$initScope = coroutineScope;
        this.$initializeBoldSDK$delegate = lazy;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UnityAdsSDK$initialize$1$newInitializationJob$1(this.$source, this.$initScope, this.$initializeBoldSDK$delegate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((UnityAdsSDK$initialize$1$newInitializationJob$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            InitializeBoldSDK initializeBoldSDKInitialize$lambda$6$lambda$5 = UnityAdsSDK.initialize$lambda$6$lambda$5(this.$initializeBoldSDK$delegate);
            String str = this.$source;
            this.label = 1;
            if (initializeBoldSDKInitialize$lambda$6$lambda$5.invoke(str, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        CoroutineScopeKt.cancel$default(this.$initScope, null, 1, null);
        return Unit.INSTANCE;
    }
}
