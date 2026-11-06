package ads_mobile_sdk;

import java.util.Map;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class i71 extends ContinuationImpl {
    public Object a;
    public Object b;
    public Ref$ObjectRef c;
    public boolean d;
    public boolean e;
    public /* synthetic */ Object f;
    public final /* synthetic */ o71 g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i71(o71 o71Var, Continuation continuation) {
        super(continuation);
        this.g = o71Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return this.g.a((f81) null, (Duration) null, (Map) null, false, false, (Continuation) this);
    }
}
