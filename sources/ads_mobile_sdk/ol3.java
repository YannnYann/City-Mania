package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class ol3 extends ContinuationImpl {
    public pl3 a;
    public /* synthetic */ Object b;
    public final /* synthetic */ pl3 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ol3(pl3 pl3Var, Continuation continuation) {
        super(continuation);
        this.c = pl3Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return pl3.a(this.c, (Continuation) this);
    }
}
