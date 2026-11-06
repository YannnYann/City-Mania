package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class ho3 extends ContinuationImpl {
    public io3 a;
    public /* synthetic */ Object b;
    public final /* synthetic */ io3 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ho3(io3 io3Var, Continuation continuation) {
        super(continuation);
        this.c = io3Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.c.a(false, (Continuation) this);
    }
}
