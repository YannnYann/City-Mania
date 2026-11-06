package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class tx2 extends ContinuationImpl {
    public yx2 a;
    public f81 b;
    public rr3 c;
    public rr3 d;
    public int e;
    public int f;
    public /* synthetic */ Object g;
    public final /* synthetic */ yx2 h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tx2(yx2 yx2Var, Continuation continuation) {
        super(continuation);
        this.h = yx2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= Integer.MIN_VALUE;
        return this.h.a((f81) null, this);
    }
}
