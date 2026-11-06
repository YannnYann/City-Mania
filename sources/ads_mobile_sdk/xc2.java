package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class xc2 extends ContinuationImpl {
    public kd2 a;
    public r31 b;
    public String c;
    public String d;
    public l40 e;
    public x91 f;
    public xh2 g;
    public xh2 h;
    public /* synthetic */ Object i;
    public final /* synthetic */ kd2 j;
    public int k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xc2(kd2 kd2Var, Continuation continuation) {
        super(continuation);
        this.j = kd2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.i = obj;
        this.k |= Integer.MIN_VALUE;
        return kd2.a(this.j, null, null, null, null, null, null, null, this);
    }
}
