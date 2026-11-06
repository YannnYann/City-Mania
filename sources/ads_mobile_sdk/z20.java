package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class z20 extends ContinuationImpl {
    public g30 a;
    public String b;
    public s00 c;
    public /* synthetic */ Object d;
    public final /* synthetic */ g30 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z20(g30 g30Var, Continuation continuation) {
        super(continuation);
        this.e = g30Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.b((String) null, this);
    }
}
