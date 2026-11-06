package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class rz1 extends ContinuationImpl {
    public tz1 a;
    public ey3 b;
    public Mutex c;
    public /* synthetic */ Object d;
    public final /* synthetic */ tz1 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rz1(tz1 tz1Var, Continuation continuation) {
        super(continuation);
        this.e = tz1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return tz1.a(this.e, null, this);
    }
}
