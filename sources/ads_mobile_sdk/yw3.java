package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class yw3 extends ContinuationImpl {
    public /* synthetic */ Object a;
    public final /* synthetic */ zw3 b;
    public int c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yw3(zw3 zw3Var, Continuation continuation) {
        super(continuation);
        this.b = zw3Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.a = obj;
        this.c |= Integer.MIN_VALUE;
        return zw3.a(this.b, this);
    }
}
