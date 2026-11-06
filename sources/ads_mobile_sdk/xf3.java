package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class xf3 extends ContinuationImpl {
    public yf3 a;
    public String b;
    public String c;
    public tf3 d;
    public Mutex e;
    public int f;
    public /* synthetic */ Object g;
    public final /* synthetic */ yf3 h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xf3(yf3 yf3Var, Continuation continuation) {
        super(continuation);
        this.h = yf3Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= Integer.MIN_VALUE;
        return this.h.a((String) null, (String) null, (tf3) null, 0, this);
    }
}
