package ads_mobile_sdk;

import java.io.Closeable;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class ds2 extends ContinuationImpl {
    public Object a;
    public Object b;
    public Closeable c;
    public uj2 d;
    public List e;
    public h6 f;
    public pt2 g;
    public /* synthetic */ Object h;
    public final /* synthetic */ pt2 i;
    public int j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ds2(pt2 pt2Var, Continuation continuation) {
        super(continuation);
        this.i = pt2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.h = obj;
        this.j |= Integer.MIN_VALUE;
        return this.i.b((List) null, this);
    }
}
