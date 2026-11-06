package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class b62 extends ContinuationImpl {
    public Object a;
    public rr3 b;
    public rr3 c;
    public /* synthetic */ Object d;
    public final /* synthetic */ j62 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b62(j62 j62Var, Continuation continuation) {
        super(continuation);
        this.e = j62Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return j62.a(this.e, null, null, this);
    }
}
