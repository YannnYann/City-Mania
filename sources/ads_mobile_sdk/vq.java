package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class vq extends ContinuationImpl {
    public hr a;
    public /* synthetic */ Object b;
    public final /* synthetic */ hr c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vq(hr hrVar, Continuation continuation) {
        super(continuation);
        this.c = hrVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return hr.a(this.c, this);
    }
}
