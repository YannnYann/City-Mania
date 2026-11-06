package ads_mobile_sdk;

import java.util.Iterator;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class cr2 extends ContinuationImpl {
    public pt2 a;
    public List b;
    public h6 c;
    public Iterator d;
    public int e;
    public /* synthetic */ Object f;
    public final /* synthetic */ pt2 g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cr2(pt2 pt2Var, Continuation continuation) {
        super(continuation);
        this.g = pt2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return this.g.b((List) null, (h6) null, this);
    }
}
