package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class yv0 extends ContinuationImpl {
    public /* synthetic */ Object a;
    public final /* synthetic */ jw0 b;
    public int c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yv0(jw0 jw0Var, Continuation continuation) {
        super(continuation);
        this.b = jw0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.a = obj;
        this.c |= Integer.MIN_VALUE;
        return jw0.a(this.b, this);
    }
}
