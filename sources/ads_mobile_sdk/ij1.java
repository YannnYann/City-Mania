package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class ij1 extends ContinuationImpl {
    public kj1 a;
    public /* synthetic */ Object b;
    public final /* synthetic */ kj1 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ij1(kj1 kj1Var, Continuation continuation) {
        super(continuation);
        this.c = kj1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return kj1.a(this.c, this);
    }
}
