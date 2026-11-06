package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class j7 extends ContinuationImpl {
    public q7 a;
    public Mutex b;
    public /* synthetic */ Object c;
    public final /* synthetic */ q7 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j7(q7 q7Var, Continuation continuation) {
        super(continuation);
        this.d = q7Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return q7.d(this.d, this);
    }
}
