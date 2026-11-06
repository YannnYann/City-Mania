package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class hm2 extends ContinuationImpl {
    public im2 a;
    public up0 b;
    public String c;
    public String d;
    public String e;
    public int f;
    public int g;
    public long h;
    public /* synthetic */ Object i;
    public final /* synthetic */ im2 j;
    public int k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hm2(im2 im2Var, Continuation continuation) {
        super(continuation);
        this.j = im2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.i = obj;
        this.k |= Integer.MIN_VALUE;
        return im2.b(this.j, this);
    }
}
