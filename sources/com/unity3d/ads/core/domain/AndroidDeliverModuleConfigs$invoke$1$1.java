package com.unity3d.ads.core.domain;

import com.unity3d.ads.UnityAdsInitModuleListener;
import gatewayprotocol.v1.InitializationResponseOuterClass;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: compiled from: AndroidDeliverModuleConfigs.kt */
/* JADX INFO: loaded from: classes4.dex */
@DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidDeliverModuleConfigs$invoke$1$1", f = "AndroidDeliverModuleConfigs.kt", l = {196}, m = "invokeSuspend")
public final class AndroidDeliverModuleConfigs$invoke$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Map<String, Object> $extraData;
    final /* synthetic */ InitializationResponseOuterClass.InitializationResponse $initResponse;
    final /* synthetic */ UnityAdsInitModuleListener $listener;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    final /* synthetic */ AndroidDeliverModuleConfigs this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidDeliverModuleConfigs$invoke$1$1(AndroidDeliverModuleConfigs androidDeliverModuleConfigs, UnityAdsInitModuleListener unityAdsInitModuleListener, InitializationResponseOuterClass.InitializationResponse initializationResponse, Map<String, ? extends Object> map, Continuation<? super AndroidDeliverModuleConfigs$invoke$1$1> continuation) {
        super(2, continuation);
        this.this$0 = androidDeliverModuleConfigs;
        this.$listener = unityAdsInitModuleListener;
        this.$initResponse = initializationResponse;
        this.$extraData = map;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AndroidDeliverModuleConfigs$invoke$1$1(this.this$0, this.$listener, this.$initResponse, this.$extraData, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((AndroidDeliverModuleConfigs$invoke$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Mutex mutexLockFor;
        AndroidDeliverModuleConfigs androidDeliverModuleConfigs;
        InitializationResponseOuterClass.InitializationResponse initializationResponse;
        UnityAdsInitModuleListener unityAdsInitModuleListener;
        Map<String, Object> map;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            mutexLockFor = this.this$0.lockFor(this.$listener);
            androidDeliverModuleConfigs = this.this$0;
            UnityAdsInitModuleListener unityAdsInitModuleListener2 = this.$listener;
            initializationResponse = this.$initResponse;
            Map<String, Object> map2 = this.$extraData;
            this.L$0 = mutexLockFor;
            this.L$1 = androidDeliverModuleConfigs;
            this.L$2 = unityAdsInitModuleListener2;
            this.L$3 = initializationResponse;
            this.L$4 = map2;
            this.label = 1;
            if (mutexLockFor.lock(null, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            unityAdsInitModuleListener = unityAdsInitModuleListener2;
            map = map2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            map = (Map) this.L$4;
            initializationResponse = (InitializationResponseOuterClass.InitializationResponse) this.L$3;
            unityAdsInitModuleListener = (UnityAdsInitModuleListener) this.L$2;
            androidDeliverModuleConfigs = (AndroidDeliverModuleConfigs) this.L$1;
            mutexLockFor = (Mutex) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        try {
            androidDeliverModuleConfigs.deliver(unityAdsInitModuleListener, initializationResponse, map);
            Unit unit = Unit.INSTANCE;
            mutexLockFor.unlock(null);
            return Unit.INSTANCE;
        } catch (Throwable th) {
            mutexLockFor.unlock(null);
            throw th;
        }
    }
}
