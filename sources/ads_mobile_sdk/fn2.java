package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class fn2 extends ContinuationImpl {
    public gn2 a;
    public /* synthetic */ Object b;
    public final /* synthetic */ gn2 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fn2(gn2 gn2Var, Continuation continuation) {
        super(continuation);
        this.c = gn2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.c.s(this);
    }
}
