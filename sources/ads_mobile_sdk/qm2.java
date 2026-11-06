package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class qm2 extends ContinuationImpl {
    public rm2 a;
    public ct1 b;
    public ac3 c;
    public ec3 d;
    public /* synthetic */ Object e;
    public final /* synthetic */ rm2 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qm2(rm2 rm2Var, Continuation continuation) {
        super(continuation);
        this.f = rm2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.b(this);
    }
}
