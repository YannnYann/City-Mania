package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class dr2 extends ContinuationImpl {
    public Object a;
    public Object b;
    public Object c;
    public Object d;
    public iv e;
    public iv f;
    public iv g;
    public int h;
    public /* synthetic */ Object i;
    public final /* synthetic */ pt2 j;
    public int k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dr2(pt2 pt2Var, Continuation continuation) {
        super(continuation);
        this.j = pt2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.i = obj;
        this.k |= Integer.MIN_VALUE;
        return this.j.a(null, null, 0, null, null, this);
    }
}
