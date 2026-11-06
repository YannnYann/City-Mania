package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class pv extends ContinuationImpl {
    public uv a;
    public Mutex b;
    public /* synthetic */ Object c;
    public final /* synthetic */ uv d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pv(uv uvVar, Continuation continuation) {
        super(continuation);
        this.d = uvVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return uv.a(this.d, this);
    }
}
