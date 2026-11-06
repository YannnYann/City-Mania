package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import java.io.Closeable;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class ta2 extends ContinuationImpl {
    public Object a;
    public Object b;
    public Closeable c;
    public rr3 d;
    public /* synthetic */ Object e;
    public final /* synthetic */ bb2 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ta2(bb2 bb2Var, Continuation continuation) {
        super(continuation);
        this.f = bb2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.a((Signals) null, this);
    }
}
