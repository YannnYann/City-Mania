package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class id1 extends ContinuationImpl {
    public md1 a;
    public ec3 b;
    public Mutex c;
    public /* synthetic */ Object d;
    public final /* synthetic */ md1 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public id1(md1 md1Var, Continuation continuation) {
        super(continuation);
        this.e = md1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return md1.a(this.e, (ec3) null, this);
    }
}
