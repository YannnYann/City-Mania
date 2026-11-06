package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class fj extends ContinuationImpl {
    public sj a;
    public /* synthetic */ Object b;
    public final /* synthetic */ sj c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fj(sj sjVar, Continuation continuation) {
        super(continuation);
        this.c = sjVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return sj.a(this.c, this);
    }
}
