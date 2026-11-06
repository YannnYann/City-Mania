package ads_mobile_sdk;

import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class gs2 extends ContinuationImpl {
    public Object a;
    public Object b;
    public Object c;
    public Object d;
    public int e;
    public /* synthetic */ Object f;
    public final /* synthetic */ pt2 g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gs2(pt2 pt2Var, Continuation continuation) {
        super(continuation);
        this.g = pt2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return this.g.c((List) null, this);
    }
}
