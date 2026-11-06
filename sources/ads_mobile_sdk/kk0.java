package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class kk0 extends ContinuationImpl {
    public ok0 a;
    public /* synthetic */ Object b;
    public final /* synthetic */ ok0 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kk0(ok0 ok0Var, Continuation continuation) {
        super(continuation);
        this.c = ok0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.c.a(false, null, null, false, this);
    }
}
