package ads_mobile_sdk;

import java.io.Closeable;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class l20 extends ContinuationImpl {
    public Object a;
    public Object b;
    public Closeable c;
    public Object d;
    public String e;
    public Mutex f;
    public /* synthetic */ Object g;
    public final /* synthetic */ g30 h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l20(g30 g30Var, Continuation continuation) {
        super(continuation);
        this.h = g30Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= Integer.MIN_VALUE;
        return this.h.K(this);
    }
}
