package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class xv extends ContinuationImpl {
    public Object a;
    public String b;
    public Object c;
    public ds1 d;
    public /* synthetic */ Object e;
    public final /* synthetic */ yv f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xv(yv yvVar, Continuation continuation) {
        super(continuation);
        this.f = yvVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.s(this);
    }
}
