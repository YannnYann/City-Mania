package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class sf2 extends ContinuationImpl {
    public vf2 a;
    public /* synthetic */ Object b;
    public final /* synthetic */ vf2 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sf2(vf2 vf2Var, Continuation continuation) {
        super(continuation);
        this.c = vf2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return vf2.d(this.c, this);
    }
}
