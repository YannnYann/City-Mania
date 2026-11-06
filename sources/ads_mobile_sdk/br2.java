package ads_mobile_sdk;

import java.util.Iterator;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class br2 extends ContinuationImpl {
    public Iterator a;
    public /* synthetic */ Object b;
    public final /* synthetic */ pt2 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public br2(pt2 pt2Var, Continuation continuation) {
        super(continuation);
        this.c = pt2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.c.a((List) null, (h6) null, this);
    }
}
