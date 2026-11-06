package ads_mobile_sdk;

import java.io.Closeable;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class l72 extends ContinuationImpl {
    public n72 a;
    public rr3 b;
    public Closeable c;
    public r31 d;
    public /* synthetic */ Object e;
    public final /* synthetic */ n72 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l72(n72 n72Var, Continuation continuation) {
        super(continuation);
        this.f = n72Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return n72.a(this.f, this);
    }
}
