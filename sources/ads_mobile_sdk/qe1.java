package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class qe1 extends ContinuationImpl {
    public if1 a;
    public Object b;
    public Object c;
    public Object d;
    public Object e;
    public Object f;
    public /* synthetic */ Object g;
    public final /* synthetic */ if1 h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qe1(if1 if1Var, Continuation continuation) {
        super(continuation);
        this.h = if1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= Integer.MIN_VALUE;
        return if1.a(this.h, (ae1) null, (OnAdInspectorClosedListener) null, this);
    }
}
