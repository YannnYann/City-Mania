package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class o5 extends ContinuationImpl {
    public h6 a;
    public Mutex b;
    public /* synthetic */ Object c;
    public final /* synthetic */ h6 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o5(h6 h6Var, Continuation continuation) {
        super(continuation);
        this.d = h6Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return h6.f(this.d, this);
    }
}
