package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class uc2 extends ContinuationImpl {
    public kd2 a;
    public r31 b;
    public xh2 c;
    public x91 d;
    public l40 e;
    public xh2 f;
    public String g;
    public /* synthetic */ Object h;
    public final /* synthetic */ kd2 i;
    public int j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public uc2(kd2 kd2Var, Continuation continuation) {
        super(continuation);
        this.i = kd2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.h = obj;
        this.j |= Integer.MIN_VALUE;
        return kd2.a(this.i, null, null, null, null, null, null, this);
    }
}
