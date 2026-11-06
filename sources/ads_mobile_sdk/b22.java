package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.webview.PerAdNativeJavscriptEngineJsContext;
import com.google.gson.JsonObject;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class b22 extends ContinuationImpl {
    public Object a;
    public Object b;
    public q52 c;
    public PerAdNativeJavscriptEngineJsContext d;
    public eo2 e;
    public /* synthetic */ Object f;
    public final /* synthetic */ c22 g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b22(c22 c22Var, Continuation continuation) {
        super(continuation);
        this.g = c22Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return this.g.a((JsonObject) null, (q52) null, (PerAdNativeJavscriptEngineJsContext) null, this);
    }
}
