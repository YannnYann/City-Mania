package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class qr2 extends ContinuationImpl {
    public pt2 a;
    public Object b;
    public Mutex c;
    public long d;
    public /* synthetic */ Object e;
    public final /* synthetic */ pt2 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qr2(pt2 pt2Var, Continuation continuation) {
        super(continuation);
        this.f = pt2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return pt2.c(this.f, 0L, this);
    }
}
