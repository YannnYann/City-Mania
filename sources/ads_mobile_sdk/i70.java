package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.chromium.net.CronetEngine;

/* JADX INFO: loaded from: classes.dex */
public final class i70 extends ContinuationImpl {
    public Object a;
    public Object b;
    public Object c;
    public Object d;
    public boolean e;
    public boolean f;
    public int g;
    public int h;
    public int i;
    public /* synthetic */ Object j;
    public final /* synthetic */ k70 k;
    public int l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i70(k70 k70Var, Continuation continuation) {
        super(continuation);
        this.k = k70Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.j = obj;
        this.l |= Integer.MIN_VALUE;
        return this.k.a((f81) null, (CronetEngine) null, false, false, (Continuation) this);
    }
}
