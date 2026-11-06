package ads_mobile_sdk;

import java.util.Iterator;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class s41 extends ContinuationImpl {
    public nr1 a;
    public Iterator b;
    public /* synthetic */ Object c;
    public final /* synthetic */ t41 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s41(t41 t41Var, Continuation continuation) {
        super(continuation);
        this.d = t41Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.a((nr1) null, this);
    }
}
