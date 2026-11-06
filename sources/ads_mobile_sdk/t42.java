package ads_mobile_sdk;

import com.google.gson.JsonObject;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class t42 extends ContinuationImpl {
    public /* synthetic */ Object a;
    public final /* synthetic */ v42 b;
    public int c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t42(v42 v42Var, Continuation continuation) {
        super(continuation);
        this.b = v42Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.a = obj;
        this.c |= Integer.MIN_VALUE;
        return this.b.a((JsonObject) null, (eo2) null, this);
    }
}
