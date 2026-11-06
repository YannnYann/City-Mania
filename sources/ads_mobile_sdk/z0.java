package ads_mobile_sdk;

import com.google.common.base.Splitter;
import com.ironsource.C3522b4;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class z0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ String a;
    public final /* synthetic */ String b;
    public final /* synthetic */ mq0 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z0(String str, String str2, mq0 mq0Var, Continuation continuation) {
        super(2, continuation);
        this.a = str;
        this.b = str2;
        this.c = mq0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new z0(this.a, this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((z0) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        Splitter splitter = f01.a;
        f01.b("Invoking function [" + this.a + "] asynchronously on listener [" + this.b + C3522b4.j.e, null);
        ((e1) this.c).onStop();
        return Unit.INSTANCE;
    }
}
