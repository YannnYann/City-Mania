package ads_mobile_sdk;

import com.google.gson.JsonObject;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class b71 extends ContinuationImpl {
    public JsonObject a;
    public Mutex b;
    public /* synthetic */ Object c;
    public final /* synthetic */ o71 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b71(o71 o71Var, Continuation continuation) {
        super(continuation);
        this.d = o71Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.a(null, null, null, this);
    }
}
