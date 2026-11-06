package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class ge2 extends ContinuationImpl {
    public je2 a;
    public /* synthetic */ Object b;
    public final /* synthetic */ je2 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ge2(je2 je2Var, Continuation continuation) {
        super(continuation);
        this.c = je2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return je2.e(this.c, this);
    }
}
