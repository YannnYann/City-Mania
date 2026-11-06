package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class d43 extends ContinuationImpl {
    public Object a;
    public Object b;
    public hj2 c;
    public rr3 d;
    public rr3 e;
    public /* synthetic */ Object f;
    public final /* synthetic */ j43 g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d43(j43 j43Var, Continuation continuation) {
        super(continuation);
        this.g = j43Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return j43.a(this.g, null, null, null, null, this);
    }
}
