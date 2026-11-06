package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class wr1 extends ContinuationImpl {
    public yr1 a;
    public String b;
    public r41 c;
    public Object d;
    public Mutex e;
    public /* synthetic */ Object f;
    public final /* synthetic */ yr1 g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wr1(yr1 yr1Var, Continuation continuation) {
        super(continuation);
        this.g = yr1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return yr1.a(this.g, (String) null, (r41) null, this);
    }
}
