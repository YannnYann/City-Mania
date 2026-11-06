package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class hj extends ContinuationImpl {
    public Object a;
    public Object b;
    public Object c;
    public long d;
    public /* synthetic */ Object e;
    public final /* synthetic */ sj f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hj(sj sjVar, Continuation continuation) {
        super(continuation);
        this.f = sjVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.x(this);
    }
}
