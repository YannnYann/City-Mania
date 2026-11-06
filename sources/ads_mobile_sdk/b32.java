package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class b32 extends ContinuationImpl {
    public d32 a;
    public String b;
    public long c;
    public long d;
    public /* synthetic */ Object e;
    public final /* synthetic */ d32 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b32(d32 d32Var, Continuation continuation) {
        super(continuation);
        this.f = d32Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.a(this);
    }
}
