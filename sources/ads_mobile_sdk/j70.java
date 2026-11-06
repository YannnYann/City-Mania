package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.chromium.net.CronetEngine;

/* JADX INFO: loaded from: classes.dex */
public final class j70 extends ContinuationImpl {
    public k70 a;
    public CronetEngine.Builder b;
    public Long c;
    public CronetEngine.Builder d;
    public /* synthetic */ Object e;
    public final /* synthetic */ k70 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j70(k70 k70Var, Continuation continuation) {
        super(continuation);
        this.f = k70Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return k70.a(this.f, (CronetEngine.Builder) null, (Long) null, this);
    }
}
