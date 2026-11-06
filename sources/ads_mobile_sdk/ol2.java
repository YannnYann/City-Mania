package ads_mobile_sdk;

import java.io.Closeable;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class ol2 extends ContinuationImpl {
    public im2 a;
    public Object b;
    public Closeable c;
    public int d;
    public /* synthetic */ Object e;
    public final /* synthetic */ im2 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ol2(im2 im2Var, Continuation continuation) {
        super(continuation);
        this.f = im2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return im2.a(this.f, (jk2) null, false, (Continuation) this);
    }
}
