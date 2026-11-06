package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class gb0 extends ContinuationImpl {
    public mb0 a;
    public String b;
    public ir3 c;
    public ir3 d;
    public Mutex e;
    public /* synthetic */ Object f;
    public final /* synthetic */ mb0 g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gb0(mb0 mb0Var, Continuation continuation) {
        super(continuation);
        this.g = mb0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return mb0.a(this.g, (String) null, this);
    }
}
