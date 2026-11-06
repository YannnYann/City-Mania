package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class iy0 extends ContinuationImpl {
    public yy0 a;
    public r31 b;
    public String c;
    public /* synthetic */ Object d;
    public final /* synthetic */ yy0 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public iy0(yy0 yy0Var, Continuation continuation) {
        super(continuation);
        this.e = yy0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.a((r31) null, (Continuation) this);
    }
}
