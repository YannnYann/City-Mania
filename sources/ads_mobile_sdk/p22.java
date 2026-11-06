package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class p22 extends ContinuationImpl {
    public t22 a;
    public k22 b;
    public Mutex c;
    public /* synthetic */ Object d;
    public final /* synthetic */ t22 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p22(t22 t22Var, Continuation continuation) {
        super(continuation);
        this.e = t22Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.e(0L, this);
    }
}
