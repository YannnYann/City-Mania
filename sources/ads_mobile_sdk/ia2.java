package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class ia2 extends ContinuationImpl {
    public ka2 a;
    public Object b;
    public Object c;
    public rr3 d;
    public rr3 e;
    public long f;
    public /* synthetic */ Object g;
    public final /* synthetic */ ka2 h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ia2(ka2 ka2Var, Continuation continuation) {
        super(continuation);
        this.h = ka2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= Integer.MIN_VALUE;
        return ka2.a(this.h, null, null, this);
    }
}
