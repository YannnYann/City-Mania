package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class y53 extends ContinuationImpl {
    public q01 a;
    public rr3 b;
    public rr3 c;
    public /* synthetic */ Object d;
    public final /* synthetic */ c63 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y53(c63 c63Var, Continuation continuation) {
        super(continuation);
        this.e = c63Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.a(null, null, null, null, this);
    }
}
