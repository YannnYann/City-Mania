package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class aw0 extends ContinuationImpl {
    public jw0 a;
    public Mutex b;
    public /* synthetic */ Object c;
    public final /* synthetic */ jw0 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aw0(jw0 jw0Var, Continuation continuation) {
        super(continuation);
        this.d = jw0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return jw0.c(this.d, this);
    }
}
