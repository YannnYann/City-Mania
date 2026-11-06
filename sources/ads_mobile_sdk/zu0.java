package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class zu0 extends ContinuationImpl {
    public bv0 a;
    public o32 b;
    public /* synthetic */ Object c;
    public final /* synthetic */ bv0 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zu0(bv0 bv0Var, Continuation continuation) {
        super(continuation);
        this.d = bv0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return bv0.b(this.d, (o32) null, this);
    }
}
