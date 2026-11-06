package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class ey0 extends ContinuationImpl {
    public Object a;
    public Mutex b;
    public /* synthetic */ Object c;
    public final /* synthetic */ yy0 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ey0(yy0 yy0Var, Continuation continuation) {
        super(continuation);
        this.d = yy0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return yy0.a(this.d, this);
    }
}
