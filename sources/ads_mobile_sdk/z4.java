package ads_mobile_sdk;

import java.util.Iterator;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class z4 extends ContinuationImpl {
    public h6 a;
    public Mutex b;
    public Iterator c;
    public /* synthetic */ Object d;
    public final /* synthetic */ h6 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z4(h6 h6Var, Continuation continuation) {
        super(continuation);
        this.e = h6Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return h6.a(this.e, this);
    }
}
