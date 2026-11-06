package ads_mobile_sdk;

import android.content.Context;
import android.view.View;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class ht0 extends yx0 implements zx0 {
    public final v3 P;
    public final g83 Q;
    public final ks3 R;

    /* JADX WARN: Illegal instructions before constructor call */
    public ht0(Context applicationContext, CoroutineScope uiScope, CoroutineContext uiContext, CoroutineScope backgroundScope, CoroutineContext backgroundContext, ex0 flags, ur3 traceLogger, String afmaVersion, v3 adEventEmitter, c1 adActivityLifecycleEventEmitter, h41 fullscreenWebViewContainer, g83 rootTraceCreator, ks3 traceMetaSet, j53 requestType, zy commonConfiguration, i2 adConfiguration, df2 omidMonitor, o21 gmaUtil, j1 backButtonStateDelegate) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(backgroundContext, "backgroundContext");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        Intrinsics.checkNotNullParameter(adActivityLifecycleEventEmitter, "adActivityLifecycleEventEmitter");
        Intrinsics.checkNotNullParameter(fullscreenWebViewContainer, "fullscreenWebViewContainer");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(omidMonitor, "omidMonitor");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(backButtonStateDelegate, "backButtonStateDelegate");
        Optional optionalOf = Optional.of(adActivityLifecycleEventEmitter);
        Intrinsics.checkNotNullExpressionValue(optionalOf, "of(...)");
        super(applicationContext, uiScope, uiContext, backgroundScope, backgroundContext, flags, traceLogger, afmaVersion, requestType, commonConfiguration, adConfiguration, omidMonitor, gmaUtil, backButtonStateDelegate, optionalOf);
        this.P = adEventEmitter;
        this.Q = rootTraceCreator;
        this.R = traceMetaSet;
        a((View) fullscreenWebViewContainer);
        a(fullscreenWebViewContainer);
    }

    @Override // ads_mobile_sdk.yy0, ads_mobile_sdk.ay0
    public final void a(ky closeReason) {
        Intrinsics.checkNotNullParameter(closeReason, "closeReason");
        CoroutineScope coroutineScope = this.d;
        ct0 block = new ct0(this, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0088, code lost:
    
        if (r10.a(r0) != r1) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.yy0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(kotlin.coroutines.Continuation r10) {
        /*
            r9 = this;
            boolean r0 = r10 instanceof ads_mobile_sdk.bt0
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.bt0 r0 = (ads_mobile_sdk.bt0) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.bt0 r0 = new ads_mobile_sdk.bt0
            r0.<init>(r9, r10)
        L18:
            java.lang.Object r10 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 0
            r4 = 3
            r5 = 2
            r6 = 1
            if (r2 == 0) goto L44
            if (r2 == r6) goto L3e
            if (r2 == r5) goto L38
            if (r2 != r4) goto L30
            kotlin.ResultKt.throwOnFailure(r10)
            goto L8b
        L30:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L38:
            ads_mobile_sdk.ht0 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            goto L7e
        L3e:
            ads_mobile_sdk.ht0 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            goto L57
        L44:
            kotlin.ResultKt.throwOnFailure(r10)
            r0.a = r9
            r0.d = r6
            ads_mobile_sdk.r31 r10 = r9.j()
            r10.p = r3
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            if (r10 != r1) goto L56
            goto L8a
        L56:
            r2 = r9
        L57:
            ads_mobile_sdk.ex0 r10 = r2.e
            r10.getClass()
            java.lang.String r6 = "key"
            java.lang.String r7 = "gad:interstitial_notify_publisher_without_delay"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r6)
            java.lang.Boolean r6 = java.lang.Boolean.FALSE
            ads_mobile_sdk.ir r8 = ads_mobile_sdk.yr.b
            java.lang.Object r10 = r10.a(r7, r6, r8)
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 != 0) goto L7e
            r0.a = r2
            r0.d = r5
            kotlin.Unit r10 = r2.d(r0)
            if (r10 != r1) goto L7e
            goto L8a
        L7e:
            ads_mobile_sdk.v3 r10 = r2.P
            r0.a = r3
            r0.d = r4
            java.lang.Object r10 = r10.a(r0)
            if (r10 != r1) goto L8b
        L8a:
            return r1
        L8b:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ht0.b(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.yy0
    public final Unit d(Continuation continuation) {
        if (!this.m.get()) {
            return Unit.INSTANCE;
        }
        Object objH = this.P.h(continuation);
        return objH == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? (Unit) objH : Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.zx0
    public final void d() {
        g83 g83Var = this.Q;
        s11 s11Var = s11.CUI_NAME_ADSHOW_WITH_VIEW;
        List listListOf = CollectionsKt__CollectionsJVMKt.listOf(this.F.toString());
        ks3 ks3Var = this.R;
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listListOf, ks3Var);
            try {
                this.m.set(true);
                ((r31) this.J.getValue()).p = this;
                BuildersKt__BuildersKt.runBlocking$default(null, new dt0(this, null), 1, null);
                a();
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(tu2VarA, null);
            } catch (Throwable th) {
                try {
                    tu2VarA.b(th);
                    if (!(th instanceof v24)) {
                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                            tu2VarA.a(th);
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            if (!(th instanceof CancellationException)) {
                                if (!(th instanceof w01)) {
                                    throw new b01(th);
                                }
                                throw th;
                            }
                            throw new wz0(th);
                        }
                        throw new i21(th);
                    }
                    throw th;
                } finally {
                }
            }
        } else {
            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt__CollectionsKt.emptyList(), true);
            try {
                this.m.set(true);
                ((r31) this.J.getValue()).p = this;
                BuildersKt__BuildersKt.runBlocking$default(null, new dt0(this, null), 1, null);
                a();
                Unit unit2 = Unit.INSTANCE;
                CloseableKt.closeFinally(rr3VarA, null);
            } catch (Throwable th2) {
                try {
                    rr3VarA.b(th2);
                    if (!(th2 instanceof v24)) {
                        if (!(th2 instanceof TimeoutCancellationException) && !(th2 instanceof CancellationException)) {
                            rr3VarA.a(th2);
                        }
                        if (!(th2 instanceof TimeoutCancellationException)) {
                            if (!(th2 instanceof CancellationException)) {
                                if (!(th2 instanceof w01)) {
                                    throw new b01(th2);
                                }
                                throw th2;
                            }
                            throw new wz0(th2);
                        }
                        throw new i21(th2);
                    }
                    throw th2;
                } finally {
                }
            }
        }
    }

    @Override // ads_mobile_sdk.ay0
    public final Unit a(Continuation continuation) {
        Unit unitD = d(continuation);
        return unitD == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? unitD : Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.zx0
    public final void a(Context context, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(context, "context");
        g83 g83Var = this.Q;
        s11 s11Var = s11.CUI_NAME_ADSHOW;
        List listListOf = CollectionsKt__CollectionsJVMKt.listOf(this.F.toString());
        ks3 ks3Var = this.R;
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listListOf, ks3Var);
            try {
                f01.a("show() is not supported for cross-process ad. Use getView() instead.", (Throwable) null);
                xs3.a(this.d, new gt0(this, null));
                xs3.a("show() is not supported for cross-process ad.", null, 6);
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(tu2VarA, null);
            } catch (Throwable th) {
                try {
                    tu2VarA.b(th);
                    if (!(th instanceof v24)) {
                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                            tu2VarA.a(th);
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            if (!(th instanceof CancellationException)) {
                                if (!(th instanceof w01)) {
                                    throw new b01(th);
                                }
                                throw th;
                            }
                            throw new wz0(th);
                        }
                        throw new i21(th);
                    }
                    throw th;
                } finally {
                }
            }
        } else {
            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt__CollectionsKt.emptyList(), true);
            try {
                f01.a("show() is not supported for cross-process ad. Use getView() instead.", (Throwable) null);
                xs3.a(this.d, new gt0(this, null));
                xs3.a("show() is not supported for cross-process ad.", null, 6);
                Unit unit2 = Unit.INSTANCE;
                CloseableKt.closeFinally(rr3VarA, null);
            } catch (Throwable th2) {
                try {
                    rr3VarA.b(th2);
                    if (!(th2 instanceof v24)) {
                        if (!(th2 instanceof TimeoutCancellationException) && !(th2 instanceof CancellationException)) {
                            rr3VarA.a(th2);
                        }
                        if (!(th2 instanceof TimeoutCancellationException)) {
                            if (!(th2 instanceof CancellationException)) {
                                if (!(th2 instanceof w01)) {
                                    throw new b01(th2);
                                }
                                throw th2;
                            }
                            throw new wz0(th2);
                        }
                        throw new i21(th2);
                    }
                    throw th2;
                } finally {
                }
            }
        }
    }
}
