package ads_mobile_sdk;

import java.io.Closeable;
import java.io.Serializable;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
public final class vl2 extends ContinuationImpl {
    public Object a;
    public Object b;
    public Serializable c;
    public rr3 d;
    public Closeable e;
    public Object f;
    public om2 g;
    public Ref$ObjectRef h;
    public int i;
    public int j;
    public long k;
    public /* synthetic */ Object l;
    public final /* synthetic */ im2 m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vl2(im2 im2Var, Continuation continuation) {
        super(continuation);
        this.m = im2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return this.m.b((j53) null, (String) null, this);
    }
}
