package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class ku3 extends ContinuationImpl {
    public nu3 a;
    public Object b;
    public String c;
    public String d;
    public h41 e;
    public boolean f;
    public boolean g;
    public boolean h;
    public boolean i;
    public int j;
    public /* synthetic */ Object k;
    public final /* synthetic */ nu3 l;
    public int m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ku3(nu3 nu3Var, Continuation continuation) {
        super(continuation);
        this.l = nu3Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.k = obj;
        this.m |= Integer.MIN_VALUE;
        return this.l.a(false, 0, false, null, null, null, null, false, false, this);
    }
}
