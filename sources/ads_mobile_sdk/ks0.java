package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class ks0 extends ContinuationImpl {
    public ls0 a;
    public Mutex b;
    public /* synthetic */ Object c;
    public final /* synthetic */ ls0 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ks0(ls0 ls0Var, Continuation continuation) {
        super(continuation);
        this.d = ls0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return ls0.a(this.d, this);
    }
}
