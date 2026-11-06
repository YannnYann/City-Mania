package com.unity3d.ads.core.domain;

import com.unity3d.ads.UnityAdsInitModuleListener;
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
@DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidDeliverModuleConfigs$notifyFailure$1$1", f = "AndroidDeliverModuleConfigs.kt", l = {196}, m = "invokeSuspend")
public final class AndroidDeliverModuleConfigs$notifyFailure$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ UnityAdsInitModuleListener $listener;
    final /* synthetic */ String $reason;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ AndroidDeliverModuleConfigs this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidDeliverModuleConfigs$notifyFailure$1$1(AndroidDeliverModuleConfigs androidDeliverModuleConfigs, UnityAdsInitModuleListener unityAdsInitModuleListener, String str, Continuation<? super AndroidDeliverModuleConfigs$notifyFailure$1$1> continuation) {
        super(2, continuation);
        this.this$0 = androidDeliverModuleConfigs;
        this.$listener = unityAdsInitModuleListener;
        this.$reason = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AndroidDeliverModuleConfigs$notifyFailure$1$1(this.this$0, this.$listener, this.$reason, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((AndroidDeliverModuleConfigs$notifyFailure$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Mutex mutexLockFor;
        UnityAdsInitModuleListener unityAdsInitModuleListener;
        AndroidDeliverModuleConfigs androidDeliverModuleConfigs;
        String str;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            mutexLockFor = this.this$0.lockFor(this.$listener);
            AndroidDeliverModuleConfigs androidDeliverModuleConfigs2 = this.this$0;
            unityAdsInitModuleListener = this.$listener;
            String str2 = this.$reason;
            this.L$0 = mutexLockFor;
            this.L$1 = androidDeliverModuleConfigs2;
            this.L$2 = unityAdsInitModuleListener;
            this.L$3 = str2;
            this.label = 1;
            if (mutexLockFor.lock(null, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            androidDeliverModuleConfigs = androidDeliverModuleConfigs2;
            str = str2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = (String) this.L$3;
            unityAdsInitModuleListener = (UnityAdsInitModuleListener) this.L$2;
            androidDeliverModuleConfigs = (AndroidDeliverModuleConfigs) this.L$1;
            mutexLockFor = (Mutex) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        try {
            androidDeliverModuleConfigs.fail(unityAdsInitModuleListener, str);
            Unit unit = Unit.INSTANCE;
            mutexLockFor.unlock(null);
            return Unit.INSTANCE;
        } catch (Throwable th) {
            mutexLockFor.unlock(null);
            throw th;
        }
    }
}
