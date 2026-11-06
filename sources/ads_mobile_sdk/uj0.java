package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class uj0 extends ContinuationImpl {
    public ok0 a;
    public o21 b;
    public ok0 c;
    public /* synthetic */ Object d;
    public final /* synthetic */ ok0 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public uj0(ok0 ok0Var, Continuation continuation) {
        super(continuation);
        this.e = ok0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.c(this);
    }
}
