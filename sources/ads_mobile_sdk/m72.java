package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class m72 extends ContinuationImpl {
    public n72 a;
    public /* synthetic */ Object b;
    public final /* synthetic */ n72 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m72(n72 n72Var, Continuation continuation) {
        super(continuation);
        this.c = n72Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return n72.b(this.c, this);
    }
}
