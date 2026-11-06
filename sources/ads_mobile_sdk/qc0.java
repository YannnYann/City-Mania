package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class qc0 extends ContinuationImpl {
    public uc0 a;
    public String b;
    public /* synthetic */ Object c;
    public final /* synthetic */ uc0 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qc0(uc0 uc0Var, Continuation continuation) {
        super(continuation);
        this.d = uc0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return uc0.a(this.d, null, this);
    }
}
