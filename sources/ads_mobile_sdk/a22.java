package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.webview.PerAdNativeJavscriptEngineJsContext;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class a22 extends ContinuationImpl {
    public c22 a;
    public q52 b;
    public PerAdNativeJavscriptEngineJsContext c;
    public /* synthetic */ Object d;
    public final /* synthetic */ c22 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a22(c22 c22Var, Continuation continuation) {
        super(continuation);
        this.e = c22Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return c22.a(this.e, this);
    }
}
