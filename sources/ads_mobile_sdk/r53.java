package ads_mobile_sdk;

import com.google.gson.JsonObject;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class r53 extends ContinuationImpl {
    public t53 a;
    public JsonObject b;
    public String c;
    public String d;
    public JsonObject e;
    public Mutex f;
    public /* synthetic */ Object g;
    public final /* synthetic */ t53 h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r53(t53 t53Var, Continuation continuation) {
        super(continuation);
        this.h = t53Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= Integer.MIN_VALUE;
        return this.h.a(null, this);
    }
}
