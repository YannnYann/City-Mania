package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class bi1 extends ContinuationImpl {
    public ci1 a;
    public /* synthetic */ Object b;
    public final /* synthetic */ ci1 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bi1(ci1 ci1Var, Continuation continuation) {
        super(continuation);
        this.c = ci1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return ci1.a(this.c, this);
    }
}
