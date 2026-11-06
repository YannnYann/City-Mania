package ads_mobile_sdk;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class bu1 extends ContinuationImpl {
    public du1 a;
    public ec3 b;
    public i2 c;
    public Integer d;
    public String e;
    public Duration f;
    public String g;
    public eo2 h;
    public w91 i;
    public t91 j;
    public String k;
    public String l;
    public Collection m;
    public Iterator n;
    public Collection o;
    public /* synthetic */ Object p;
    public final /* synthetic */ du1 q;
    public int r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bu1(du1 du1Var, Continuation continuation) {
        super(continuation);
        this.q = du1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.p = obj;
        this.r |= Integer.MIN_VALUE;
        return this.q.a((List) null, (ec3) null, (i2) null, (Integer) null, (String) null, (Duration) null, (String) null, (eo2) null, (w91) null, (t91) null, (String) null, (String) null, this);
    }
}
