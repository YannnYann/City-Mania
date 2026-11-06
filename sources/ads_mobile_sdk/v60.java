package ads_mobile_sdk;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.CompletableJob;

/* JADX INFO: loaded from: classes.dex */
public final class v60 extends ContinuationImpl {
    public rr3 a;
    public rr3 b;
    public /* synthetic */ Object c;
    public final /* synthetic */ k70 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v60(k70 k70Var, Continuation continuation) {
        super(continuation);
        this.d = k70Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.a((AtomicReference) null, (CompletableJob) null, (Long) null, this);
    }
}
