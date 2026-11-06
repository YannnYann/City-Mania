package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class bx0 extends ContinuationImpl {
    public ex0 a;
    public /* synthetic */ Object b;
    public final /* synthetic */ ex0 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bx0(ex0 ex0Var, Continuation continuation) {
        super(continuation);
        this.c = ex0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return ex0.a(this.c, null, null, this);
    }
}
