package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class wu1 extends ContinuationImpl {
    public xu1 a;
    public /* synthetic */ Object b;
    public final /* synthetic */ xu1 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wu1(xu1 xu1Var, Continuation continuation) {
        super(continuation);
        this.c = xu1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.c.a((ey3) null, this);
    }
}
