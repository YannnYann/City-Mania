package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class cd2 extends ContinuationImpl {
    public /* synthetic */ Object a;
    public final /* synthetic */ kd2 b;
    public int c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cd2(kd2 kd2Var, Continuation continuation) {
        super(continuation);
        this.b = kd2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.a = obj;
        this.c |= Integer.MIN_VALUE;
        return kd2.a(this.b, this);
    }
}
