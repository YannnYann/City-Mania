package ads_mobile_sdk;

import java.io.Closeable;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class tr2 extends ContinuationImpl {
    public Object a;
    public Object b;
    public Closeable c;
    public uj2 d;
    public List e;
    public pt2 f;
    public /* synthetic */ Object g;
    public final /* synthetic */ pt2 h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tr2(pt2 pt2Var, Continuation continuation) {
        super(continuation);
        this.h = pt2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= Integer.MIN_VALUE;
        return this.h.w(this);
    }
}
