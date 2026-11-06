package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class o20 extends ContinuationImpl {
    public g30 a;
    public k30 b;
    public Mutex c;
    public /* synthetic */ Object d;
    public final /* synthetic */ g30 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o20(g30 g30Var, Continuation continuation) {
        super(continuation);
        this.e = g30Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.M(this);
    }
}
