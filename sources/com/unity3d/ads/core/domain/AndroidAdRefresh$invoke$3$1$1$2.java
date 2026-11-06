package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.model.AdObjectState;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: AndroidAdRefresh.kt */
/* JADX INFO: loaded from: classes4.dex */
@DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidAdRefresh$invoke$3$1$1$2", f = "AndroidAdRefresh.kt", l = {}, m = "invokeSuspend")
public final class AndroidAdRefresh$invoke$3$1$1$2 extends SuspendLambda implements Function2<Result<? extends Unit>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Deferred<AdObjectState> $showing;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AndroidAdRefresh$invoke$3$1$1$2(Deferred<? extends AdObjectState> deferred, Continuation<? super AndroidAdRefresh$invoke$3$1$1$2> continuation) {
        super(2, continuation);
        this.$showing = deferred;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AndroidAdRefresh$invoke$3$1$1$2(this.$showing, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Result<? extends Unit> result, Continuation<? super Unit> continuation) {
        return invoke(result.m2768unboximpl(), continuation);
    }

    public final Object invoke(Object obj, Continuation<? super Unit> continuation) {
        return ((AndroidAdRefresh$invoke$3$1$1$2) create(Result.m2759boximpl(obj), continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        Job.DefaultImpls.cancel$default(this.$showing, null, 1, null);
        return Unit.INSTANCE;
    }
}
