package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class ff2 extends ContinuationImpl {
    public vf2 a;
    public String b;
    public x91 c;
    public Mutex d;
    public boolean e;
    public /* synthetic */ Object f;
    public final /* synthetic */ vf2 g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ff2(vf2 vf2Var, Continuation continuation) {
        super(continuation);
        this.g = vf2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return this.g.a((String) null, false, (x91) null, (Continuation) this);
    }
}
