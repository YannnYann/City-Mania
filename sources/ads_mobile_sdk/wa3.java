package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class wa3 extends ContinuationImpl {
    public cb3 a;
    public Mutex b;
    public /* synthetic */ Object c;
    public final /* synthetic */ cb3 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wa3(cb3 cb3Var, Continuation continuation) {
        super(continuation);
        this.d = cb3Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return cb3.a(this.d, this);
    }
}
