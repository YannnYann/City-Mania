package ads_mobile_sdk;

import java.io.Closeable;
import java.util.Map;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class vg2 extends ContinuationImpl {
    public ah2 a;
    public Object b;
    public Closeable c;
    public Closeable d;
    public boolean e;
    public boolean f;
    public /* synthetic */ Object g;
    public final /* synthetic */ ah2 h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vg2(ah2 ah2Var, Continuation continuation) {
        super(continuation);
        this.h = ah2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= Integer.MIN_VALUE;
        return this.h.a((Map) null, false, false, (r31) null, (Continuation) this);
    }
}
