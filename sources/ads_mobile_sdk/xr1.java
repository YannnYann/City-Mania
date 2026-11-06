package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.CompletableDeferred;

/* JADX INFO: loaded from: classes.dex */
public final class xr1 extends ContinuationImpl {
    public String a;
    public CompletableDeferred b;
    public /* synthetic */ Object c;
    public final /* synthetic */ yr1 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xr1(yr1 yr1Var, Continuation continuation) {
        super(continuation);
        this.d = yr1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return yr1.a(this.d, (String) null, (CompletableDeferred) null, this);
    }
}
