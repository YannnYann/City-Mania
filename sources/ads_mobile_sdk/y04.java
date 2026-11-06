package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class y04 extends ContinuationImpl {
    public r14 a;
    public rr3 b;
    public rr3 c;
    public /* synthetic */ Object d;
    public final /* synthetic */ r14 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y04(r14 r14Var, Continuation continuation) {
        super(continuation);
        this.e = r14Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return r14.b(this.e, this);
    }
}
