package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class lu extends ContinuationImpl {
    public ou a;
    public Mutex b;
    public /* synthetic */ Object c;
    public final /* synthetic */ ou d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lu(ou ouVar, Continuation continuation) {
        super(continuation);
        this.d = ouVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return ou.b(this.d, this);
    }
}
