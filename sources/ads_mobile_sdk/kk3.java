package ads_mobile_sdk;

import java.io.Closeable;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class kk3 extends ContinuationImpl {
    public mk3 a;
    public rr3 b;
    public Closeable c;
    public r31 d;
    public /* synthetic */ Object e;
    public final /* synthetic */ mk3 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kk3(mk3 mk3Var, Continuation continuation) {
        super(continuation);
        this.f = mk3Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return mk3.a(this.f, this);
    }
}
