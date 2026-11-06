package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class o33 extends ContinuationImpl {
    public v33 a;
    public Mutex b;
    public /* synthetic */ Object c;
    public final /* synthetic */ v33 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o33(v33 v33Var, Continuation continuation) {
        super(continuation);
        this.d = v33Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return v33.a(this.d, this);
    }
}
