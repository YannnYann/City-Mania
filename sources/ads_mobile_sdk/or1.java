package ads_mobile_sdk;

import java.util.Iterator;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class or1 extends ContinuationImpl {
    public Object a;
    public Iterator b;
    public /* synthetic */ Object c;
    public final /* synthetic */ pr1 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public or1(pr1 pr1Var, Continuation continuation) {
        super(continuation);
        this.d = pr1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.a(null, this);
    }
}
