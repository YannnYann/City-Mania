package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import java.io.Closeable;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class xa2 extends ContinuationImpl {
    public Object a;
    public Object b;
    public Closeable c;
    public Signals d;
    public rr3 e;
    public rr3 f;
    public yt g;
    public long h;
    public boolean i;
    public /* synthetic */ Object j;
    public final /* synthetic */ bb2 k;
    public int l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xa2(bb2 bb2Var, Continuation continuation) {
        super(continuation);
        this.k = bb2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.j = obj;
        this.l |= Integer.MIN_VALUE;
        return bb2.b(this.k, this);
    }
}
