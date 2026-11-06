package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class hw0 extends ContinuationImpl {
    public jw0 a;
    public vv0 b;
    public Mutex c;
    public /* synthetic */ Object d;
    public final /* synthetic */ jw0 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hw0(jw0 jw0Var, Continuation continuation) {
        super(continuation);
        this.e = jw0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return jw0.a(this.e, null, null, false, this);
    }
}
