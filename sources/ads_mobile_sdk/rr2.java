package ads_mobile_sdk;

import java.util.ArrayList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class rr2 extends ContinuationImpl {
    public Object a;
    public ArrayList b;
    public Mutex c;
    public long d;
    public /* synthetic */ Object e;
    public final /* synthetic */ pt2 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rr2(pt2 pt2Var, Continuation continuation) {
        super(continuation);
        this.f = pt2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return pt2.d(this.f, 0L, this);
    }
}
