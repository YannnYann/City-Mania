package ads_mobile_sdk;

import java.io.Closeable;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class fl2 extends ContinuationImpl {
    public Object a;
    public Closeable b;
    public Closeable c;
    public /* synthetic */ Object d;
    public final /* synthetic */ gl2 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fl2(gl2 gl2Var, Continuation continuation) {
        super(continuation);
        this.e = gl2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return gl2.b(this.e, this);
    }
}
