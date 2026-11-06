package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class sk0 extends ContinuationImpl {
    public tk0 a;
    public /* synthetic */ Object b;
    public final /* synthetic */ tk0 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sk0(tk0 tk0Var, Continuation continuation) {
        super(continuation);
        this.c = tk0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return tk0.a(this.c, this);
    }
}
