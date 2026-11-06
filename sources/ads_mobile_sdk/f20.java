package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class f20 extends ContinuationImpl {
    public g30 a;
    public Object b;
    public /* synthetic */ Object c;
    public final /* synthetic */ g30 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f20(g30 g30Var, Continuation continuation) {
        super(continuation);
        this.d = g30Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return g30.k(this.d, this);
    }
}
