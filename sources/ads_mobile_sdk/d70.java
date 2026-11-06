package ads_mobile_sdk;

import java.util.Map;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class d70 extends ContinuationImpl {
    public k70 a;
    public e81 b;
    public e81 c;
    public String d;
    public /* synthetic */ Object e;
    public final /* synthetic */ k70 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d70(k70 k70Var, Continuation continuation) {
        super(continuation);
        this.f = k70Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.a((String) null, (Map) null, this);
    }
}
