package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class m8 extends ContinuationImpl {
    public n8 a;
    public /* synthetic */ Object b;
    public final /* synthetic */ n8 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m8(n8 n8Var, Continuation continuation) {
        super(continuation);
        this.c = n8Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return n8.a(this.c, this);
    }
}
