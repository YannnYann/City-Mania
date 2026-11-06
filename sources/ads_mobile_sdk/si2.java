package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class si2 extends ContinuationImpl {
    public vi2 a;
    public i2 b;
    public v01 c;
    public Mutex d;
    public /* synthetic */ Object e;
    public final /* synthetic */ vi2 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public si2(vi2 vi2Var, Continuation continuation) {
        super(continuation);
        this.f = vi2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return vi2.a(this.f, this);
    }
}
