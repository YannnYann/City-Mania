package ads_mobile_sdk;

import com.google.gson.JsonObject;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class g43 extends ContinuationImpl {
    public JsonObject a;
    public JsonObject b;
    public JsonObject c;
    public String d;
    public /* synthetic */ Object e;
    public final /* synthetic */ j43 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g43(j43 j43Var, Continuation continuation) {
        super(continuation);
        this.f = j43Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.b(this);
    }
}
