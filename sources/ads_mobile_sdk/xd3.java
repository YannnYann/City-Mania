package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class xd3 extends ContinuationImpl {
    public zd3 a;
    public od3 b;
    public Mutex c;
    public /* synthetic */ Object d;
    public final /* synthetic */ zd3 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xd3(zd3 zd3Var, Continuation continuation) {
        super(continuation);
        this.e = zd3Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return zd3.a(this.e, null, this);
    }
}
