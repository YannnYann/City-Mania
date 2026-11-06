package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class c14 extends ContinuationImpl {
    public r14 a;
    public Mutex b;
    public /* synthetic */ Object c;
    public final /* synthetic */ r14 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c14(r14 r14Var, Continuation continuation) {
        super(continuation);
        this.d = r14Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return r14.d(this.d, this);
    }
}
