package ads_mobile_sdk;

import com.google.gson.Gson;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class u10 extends ContinuationImpl {
    public g30 a;
    public Mutex b;
    public Gson c;
    public Gson d;
    public /* synthetic */ Object e;
    public final /* synthetic */ g30 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u10(g30 g30Var, Continuation continuation) {
        super(continuation);
        this.f = g30Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return g30.e(this.f, this);
    }
}
