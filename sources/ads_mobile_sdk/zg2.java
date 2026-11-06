package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class zg2 extends ContinuationImpl {
    public boolean a;
    public boolean b;
    public boolean c;
    public r31 d;
    public String e;
    public String f;
    public String g;
    public nu3 h;
    public int i;
    public int j;
    public /* synthetic */ Object k;
    public final /* synthetic */ ah2 l;
    public int m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zg2(ah2 ah2Var, Continuation continuation) {
        super(continuation);
        this.l = ah2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.k = obj;
        this.m |= Integer.MIN_VALUE;
        return this.l.b(null, false, false, null, this);
    }
}
