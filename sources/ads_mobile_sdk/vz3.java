package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class vz3 extends ContinuationImpl {
    public yz3 a;
    public /* synthetic */ Object b;
    public final /* synthetic */ yz3 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vz3(yz3 yz3Var, Continuation continuation) {
        super(continuation);
        this.c = yz3Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return yz3.a(this.c, this);
    }
}
