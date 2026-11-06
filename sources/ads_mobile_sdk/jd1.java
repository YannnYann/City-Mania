package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class jd1 extends ContinuationImpl {
    public md1 a;
    public String b;
    public /* synthetic */ Object c;
    public final /* synthetic */ md1 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jd1(md1 md1Var, Continuation continuation) {
        super(continuation);
        this.d = md1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return md1.b(this.d, this);
    }
}
