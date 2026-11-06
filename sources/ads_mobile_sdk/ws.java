package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class ws extends ContinuationImpl {
    public xs a;
    public double b;
    public boolean c;
    public /* synthetic */ Object d;
    public final /* synthetic */ xs e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ws(xs xsVar, Continuation continuation) {
        super(continuation);
        this.e = xsVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return xs.a(this.e, null, 0.0d, false, this);
    }
}
