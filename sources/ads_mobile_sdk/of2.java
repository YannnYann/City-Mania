package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class of2 extends ContinuationImpl {
    public vf2 a;
    public Mutex b;
    public /* synthetic */ Object c;
    public final /* synthetic */ vf2 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public of2(vf2 vf2Var, Continuation continuation) {
        super(continuation);
        this.d = vf2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return vf2.c(this.d, this);
    }
}
