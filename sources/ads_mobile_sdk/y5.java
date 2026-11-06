package ads_mobile_sdk;

import java.util.Iterator;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class y5 extends ContinuationImpl {
    public h6 a;
    public Iterator b;
    public long c;
    public /* synthetic */ Object d;
    public final /* synthetic */ h6 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y5(h6 h6Var, Continuation continuation) {
        super(continuation);
        this.e = h6Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.x(this);
    }
}
