package ads_mobile_sdk;

import java.io.Closeable;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class zl2 extends ContinuationImpl {
    public im2 a;
    public j53 b;
    public String c;
    public Object d;
    public Closeable e;
    public String f;
    public Object g;
    public /* synthetic */ Object h;
    public final /* synthetic */ im2 i;
    public int j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zl2(im2 im2Var, Continuation continuation) {
        super(continuation);
        this.i = im2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.h = obj;
        this.j |= Integer.MIN_VALUE;
        return im2.a(this.i, null, null, null, this);
    }
}
