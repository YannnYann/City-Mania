package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes.dex */
public final class ax3 extends ContinuationImpl {
    public Object a;
    public Object b;
    public Deferred c;
    public /* synthetic */ Object d;
    public final /* synthetic */ dx3 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ax3(dx3 dx3Var, Continuation continuation) {
        super(continuation);
        this.e = dx3Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return dx3.a(this.e, (Continuation) this);
    }
}
