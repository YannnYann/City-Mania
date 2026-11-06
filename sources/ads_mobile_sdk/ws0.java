package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class ws0 extends ContinuationImpl {
    public xs0 a;
    public String b;
    public String c;
    public /* synthetic */ Object d;
    public final /* synthetic */ xs0 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ws0(xs0 xs0Var, Continuation continuation) {
        super(continuation);
        this.e = xs0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.s(this);
    }
}
