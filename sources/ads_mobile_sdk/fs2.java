package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class fs2 extends ContinuationImpl {
    public pt2 a;
    public Mutex b;
    public /* synthetic */ Object c;
    public final /* synthetic */ pt2 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fs2(pt2 pt2Var, Continuation continuation) {
        super(continuation);
        this.d = pt2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return pt2.b(this.d, this);
    }
}
