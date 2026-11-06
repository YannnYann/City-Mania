package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class xo extends ContinuationImpl {
    public Object a;
    public Object b;
    public Object c;
    public oo d;
    public Object e;
    public Object f;
    public /* synthetic */ Object g;
    public final /* synthetic */ zo h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xo(zo zoVar, Continuation continuation) {
        super(continuation);
        this.h = zoVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= Integer.MIN_VALUE;
        return this.h.a(false, (Continuation) this);
    }
}
