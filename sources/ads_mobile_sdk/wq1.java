package ads_mobile_sdk;

import java.util.List;
import java.util.concurrent.Executor;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class wq1 extends ContinuationImpl {
    public List a;
    public Executor b;
    public /* synthetic */ Object c;
    public final /* synthetic */ yq1 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wq1(yq1 yq1Var, Continuation continuation) {
        super(continuation);
        this.d = yq1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.a((List) null, (Executor) null, this);
    }
}
