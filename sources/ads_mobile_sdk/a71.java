package ads_mobile_sdk;

import java.util.Map;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class a71 extends ContinuationImpl {
    public Map a;
    public Map b;
    public e81 c;
    public String d;
    public /* synthetic */ Object e;
    public final /* synthetic */ o71 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a71(o71 o71Var, Continuation continuation) {
        super(continuation);
        this.f = o71Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.a((f81) null, (Map) null, this);
    }
}
