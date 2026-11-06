package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class dx2 extends ContinuationImpl {
    public px2 a;
    public ei1 b;
    public CoroutineContext c;
    public /* synthetic */ Object d;
    public final /* synthetic */ px2 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dx2(px2 px2Var, Continuation continuation) {
        super(continuation);
        this.e = px2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return px2.a(this.e, null, this);
    }
}
