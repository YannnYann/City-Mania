package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class qd3 extends ContinuationImpl {
    public /* synthetic */ Object a;
    public final /* synthetic */ zd3 b;
    public int c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qd3(zd3 zd3Var, Continuation continuation) {
        super(continuation);
        this.b = zd3Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.a = obj;
        this.c |= Integer.MIN_VALUE;
        return zd3.a(this.b, this);
    }
}
