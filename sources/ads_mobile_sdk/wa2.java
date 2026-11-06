package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class wa2 extends ContinuationImpl {
    public bb2 a;
    public /* synthetic */ Object b;
    public final /* synthetic */ bb2 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wa2(bb2 bb2Var, Continuation continuation) {
        super(continuation);
        this.c = bb2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return bb2.a(this.c, this);
    }
}
