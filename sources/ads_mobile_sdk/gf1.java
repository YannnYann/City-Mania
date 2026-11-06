package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class gf1 extends ContinuationImpl {
    public Object a;
    public Boolean b;
    public Boolean c;
    public vd1 d;
    public String e;
    public Long f;
    public String g;
    public String h;
    public String i;
    public Boolean j;
    public Mutex k;
    public /* synthetic */ Object l;
    public final /* synthetic */ if1 m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gf1(if1 if1Var, Continuation continuation) {
        super(continuation);
        this.m = if1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return if1.a(this.m, null, null, null, null, null, null, null, null, null, this);
    }
}
