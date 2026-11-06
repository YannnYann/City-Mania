package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class jo2 extends ContinuationImpl {
    public mo2 a;
    public t61 b;
    public /* synthetic */ Object c;
    public final /* synthetic */ mo2 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jo2(mo2 mo2Var, Continuation continuation) {
        super(continuation);
        this.d = mo2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return mo2.a(this.d, false, (Continuation) this);
    }
}
