package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class x92 extends ContinuationImpl {
    public ca2 a;
    public Object b;
    public Object c;
    public Mutex d;
    public long e;
    public boolean f;
    public /* synthetic */ Object g;
    public final /* synthetic */ ca2 h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x92(ca2 ca2Var, Continuation continuation) {
        super(continuation);
        this.h = ca2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= Integer.MIN_VALUE;
        return this.h.a(0L, null, null, false, this);
    }
}
