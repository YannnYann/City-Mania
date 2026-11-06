package ads_mobile_sdk;

import java.io.Closeable;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class sl1 extends ContinuationImpl {
    public cm1 a;
    public rr3 b;
    public Closeable c;
    public /* synthetic */ Object d;
    public final /* synthetic */ cm1 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sl1(cm1 cm1Var, Continuation continuation) {
        super(continuation);
        this.e = cm1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.b(this);
    }
}
