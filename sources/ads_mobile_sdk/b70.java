package ads_mobile_sdk;

import com.google.gson.JsonObject;
import java.util.UUID;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class b70 extends ContinuationImpl {
    public JsonObject a;
    public Mutex b;
    public /* synthetic */ Object c;
    public final /* synthetic */ k70 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b70(k70 k70Var, Continuation continuation) {
        super(continuation);
        this.d = k70Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.a((String) null, (UUID) null, (JsonObject) null, this);
    }
}
