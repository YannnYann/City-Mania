package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class kq1 extends ContinuationImpl {
    public rr3 a;
    public rr3 b;
    public /* synthetic */ Object c;
    public final /* synthetic */ yq1 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kq1(yq1 yq1Var, Continuation continuation) {
        super(continuation);
        this.d = yq1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.a((String) null, this);
    }
}
