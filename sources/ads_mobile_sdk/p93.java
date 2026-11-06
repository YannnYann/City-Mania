package ads_mobile_sdk;

import java.util.Map;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class p93 extends ContinuationImpl {
    public s93 a;
    public String b;
    public w90 c;
    public Map d;
    public Mutex e;
    public /* synthetic */ Object f;
    public final /* synthetic */ s93 g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p93(s93 s93Var, Continuation continuation) {
        super(continuation);
        this.g = s93Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return s93.a(this.g, null, null, null, this);
    }
}
