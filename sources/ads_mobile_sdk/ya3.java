package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class ya3 extends ContinuationImpl {
    public cb3 a;
    public ua3 b;
    public Mutex c;
    public /* synthetic */ Object d;
    public final /* synthetic */ cb3 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ya3(cb3 cb3Var, Continuation continuation) {
        super(continuation);
        this.e = cb3Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return cb3.a(this.e, null, this);
    }
}
