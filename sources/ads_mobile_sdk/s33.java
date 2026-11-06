package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class s33 extends ContinuationImpl {
    public v33 a;
    public v01 b;
    public i2 c;
    public bs0 d;
    public Integer e;
    public Mutex f;
    public long g;
    public /* synthetic */ Object h;
    public final /* synthetic */ v33 i;
    public int j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s33(v33 v33Var, Continuation continuation) {
        super(continuation);
        this.i = v33Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.h = obj;
        this.j |= Integer.MIN_VALUE;
        return this.i.a(null, null, 0L, this);
    }
}
