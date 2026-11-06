package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class py1 extends ContinuationImpl {
    public ry1 a;
    public e81 b;
    public String c;
    public /* synthetic */ Object d;
    public final /* synthetic */ ry1 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public py1(ry1 ry1Var, Continuation continuation) {
        super(continuation);
        this.e = ry1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.a(null, null, this);
    }
}
