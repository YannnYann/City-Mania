package ads_mobile_sdk;

import java.util.Iterator;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class eo3 extends ContinuationImpl {
    public io3 a;
    public v01 b;
    public Iterator c;
    public String d;
    public boolean e;
    public /* synthetic */ Object f;
    public final /* synthetic */ io3 g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public eo3(io3 io3Var, Continuation continuation) {
        super(continuation);
        this.g = io3Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return this.g.a((List) null, false, (Continuation) this);
    }
}
