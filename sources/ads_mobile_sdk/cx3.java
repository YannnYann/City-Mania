package ads_mobile_sdk;

import android.webkit.WebSettings;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class cx3 extends SuspendLambda implements Function1 {
    public final /* synthetic */ dx3 a;
    public final /* synthetic */ CoroutineScope b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cx3(dx3 dx3Var, CoroutineScope coroutineScope, Continuation continuation) {
        super(1, continuation);
        this.a = dx3Var;
        this.b = coroutineScope;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new cx3(this.a, this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new cx3(this.a, this.b, (Continuation) obj).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String defaultUserAgent;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        try {
            g83 g83Var = this.a.f;
            if (g83Var == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rootTraceCreator");
                g83Var = null;
            }
            s11 s11Var = s11.CUI_NAME_WEBVIEW_USER_AGENT;
            dx3 dx3Var = this.a;
            List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
            ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
            if (hs3.b().a == null) {
                tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                try {
                    defaultUserAgent = WebSettings.getDefaultUserAgent(dx3Var.a);
                    CloseableKt.closeFinally(tu2VarA, null);
                } catch (Throwable th) {
                    try {
                        tu2VarA.b(th);
                        if (th instanceof v24) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                            tu2VarA.a(th);
                        }
                        if (th instanceof TimeoutCancellationException) {
                            throw new i21(th);
                        }
                        if (th instanceof CancellationException) {
                            throw new wz0(th);
                        }
                        if (th instanceof w01) {
                            throw th;
                        }
                        throw new b01(th);
                    } finally {
                    }
                }
            } else {
                rr3 rr3VarA = hs3.a(s11Var, CollectionsKt__CollectionsKt.emptyList(), true);
                try {
                    defaultUserAgent = WebSettings.getDefaultUserAgent(dx3Var.a);
                    CloseableKt.closeFinally(rr3VarA, null);
                } catch (Throwable th2) {
                    try {
                        rr3VarA.b(th2);
                        if (th2 instanceof v24) {
                            throw th2;
                        }
                        if (!(th2 instanceof TimeoutCancellationException) && !(th2 instanceof CancellationException)) {
                            rr3VarA.a(th2);
                        }
                        if (th2 instanceof TimeoutCancellationException) {
                            throw new i21(th2);
                        }
                        if (th2 instanceof CancellationException) {
                            throw new wz0(th2);
                        }
                        if (th2 instanceof w01) {
                            throw th2;
                        }
                        throw new b01(th2);
                    } finally {
                    }
                }
            }
            this.a.i.complete();
            CoroutineScope coroutineScope = this.b;
            bx3 block = new bx3(this.a, defaultUserAgent, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            return defaultUserAgent;
        } catch (Throwable th3) {
            this.a.i.complete();
            throw th3;
        }
    }
}
