package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class ux2 extends ContinuationImpl {
    public yx2 a;
    public i01 b;
    public /* synthetic */ Object c;
    public final /* synthetic */ yx2 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ux2(yx2 yx2Var, Continuation continuation) {
        super(continuation);
        this.d = yx2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.a((i01) null, this);
    }
}
