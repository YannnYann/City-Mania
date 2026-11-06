package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class i62 extends ContinuationImpl {
    public r31 a;
    public /* synthetic */ Object b;
    public final /* synthetic */ j62 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i62(j62 j62Var, Continuation continuation) {
        super(continuation);
        this.c = j62Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return j62.a(this.c, null, this);
    }
}
