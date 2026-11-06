package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class au3 extends ContinuationImpl {
    public bu3 a;
    public /* synthetic */ Object b;
    public final /* synthetic */ bu3 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public au3(bu3 bu3Var, Continuation continuation) {
        super(continuation);
        this.c = bu3Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.c.v(this);
    }
}
