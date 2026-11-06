package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class mc1 extends ContinuationImpl {
    public nc1 a;
    public rr3 b;
    public rr3 c;
    public /* synthetic */ Object d;
    public final /* synthetic */ nc1 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mc1(nc1 nc1Var, Continuation continuation) {
        super(continuation);
        this.e = nc1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.t(this);
    }
}
