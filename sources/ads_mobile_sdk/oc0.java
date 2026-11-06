package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class oc0 extends ContinuationImpl {
    public uc0 a;
    public /* synthetic */ Object b;
    public final /* synthetic */ uc0 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oc0(uc0 uc0Var, Continuation continuation) {
        super(continuation);
        this.c = uc0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return uc0.a(this.c, this);
    }
}
