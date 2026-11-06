package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class ph2 extends ContinuationImpl {
    public sh2 a;
    public uh2 b;
    public Object c;
    public /* synthetic */ Object d;
    public final /* synthetic */ sh2 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ph2(sh2 sh2Var, Continuation continuation) {
        super(continuation);
        this.e = sh2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return sh2.a(this.e, (uh2) null, this);
    }
}
