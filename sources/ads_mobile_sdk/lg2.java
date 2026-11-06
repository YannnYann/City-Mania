package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class lg2 extends ContinuationImpl {
    public pg2 a;
    public /* synthetic */ Object b;
    public final /* synthetic */ pg2 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lg2(pg2 pg2Var, Continuation continuation) {
        super(continuation);
        this.c = pg2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return pg2.a(this.c, (Continuation) this);
    }
}
