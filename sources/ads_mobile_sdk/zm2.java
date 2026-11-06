package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class zm2 extends ContinuationImpl {
    public bn2 a;
    public Object b;
    public vm2 c;
    public Mutex d;
    public /* synthetic */ Object e;
    public final /* synthetic */ bn2 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zm2(bn2 bn2Var, Continuation continuation) {
        super(continuation);
        this.f = bn2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return bn2.a(this.f, null, null, this);
    }
}
