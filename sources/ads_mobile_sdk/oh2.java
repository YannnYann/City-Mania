package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class oh2 extends ContinuationImpl {
    public sh2 a;
    public g03 b;
    public uh2 c;
    public sx2 d;
    public Mutex e;
    public /* synthetic */ Object f;
    public final /* synthetic */ sh2 g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oh2(sh2 sh2Var, Continuation continuation) {
        super(continuation);
        this.g = sh2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return this.g.a((g03) null, (uh2) null, this);
    }
}
