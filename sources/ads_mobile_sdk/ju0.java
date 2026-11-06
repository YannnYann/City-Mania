package ads_mobile_sdk;

import android.content.Context;
import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import com.ironsource.C3522b4;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class ju0 extends yx0 implements zx0 {
    public final rb P;
    public final v3 Q;
    public final g83 R;
    public final ks3 S;
    public final vn T;
    public final AtomicBoolean U;

    /* JADX WARN: Illegal instructions before constructor call */
    public ju0(Context applicationContext, CoroutineScope uiScope, CoroutineContext uiContext, CoroutineScope backgroundScope, CoroutineContext backgroundContext, ex0 flags, ur3 traceLogger, rb adSpamClient, String afmaVersion, v3 adEventEmitter, c1 adActivityLifecycleEventEmitter, h41 fullscreenWebViewContainer, g83 rootTraceCreator, ks3 traceMetaSet, j53 requestType, zy commonConfiguration, i2 adConfiguration, df2 omidMonitor, o21 gmaUtil, j1 backButtonStateDelegate, vn appStatsTracker) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(backgroundContext, "backgroundContext");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(adSpamClient, "adSpamClient");
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
        Intrinsics.checkNotNullParameter(appStatsTracker, "appStatsTracker");
        Optional optionalOf = Optional.of(adActivityLifecycleEventEmitter);
        Intrinsics.checkNotNullExpressionValue(optionalOf, "of(...)");
        super(applicationContext, uiScope, uiContext, backgroundScope, backgroundContext, flags, traceLogger, afmaVersion, requestType, commonConfiguration, adConfiguration, omidMonitor, gmaUtil, backButtonStateDelegate, optionalOf);
        this.P = adSpamClient;
        this.Q = adEventEmitter;
        this.R = rootTraceCreator;
        this.S = traceMetaSet;
        this.T = appStatsTracker;
        a((View) fullscreenWebViewContainer);
        a(fullscreenWebViewContainer);
        this.U = new AtomicBoolean(false);
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
            boolean r0 = r10 instanceof ads_mobile_sdk.hu0
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.hu0 r0 = (ads_mobile_sdk.hu0) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.hu0 r0 = new ads_mobile_sdk.hu0
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
            ads_mobile_sdk.ju0 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            goto L7e
        L3e:
            ads_mobile_sdk.ju0 r2 = r0.a
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
            ads_mobile_sdk.v3 r10 = r2.Q
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
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ju0.b(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.yy0
    public final Unit d(Continuation continuation) {
        if (!this.m.get()) {
            return Unit.INSTANCE;
        }
        Object objH = this.Q.h(continuation);
        return objH == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? (Unit) objH : Unit.INSTANCE;
    }

    public final boolean q() {
        int i;
        if (s.a(this.a)) {
            f01.a("Fullscreen ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://goo.gle/admob-interstitial-policies", (Throwable) null);
            xs3.a(this.d, new eu0(this, null));
            xs3.a("Application process is in background", null, 6);
            return false;
        }
        i2 i2Var = this.G;
        if (i2Var.H0) {
            int i2 = i2Var.I0;
            vn vnVar = this.T;
            synchronized (vnVar.c) {
                i = vnVar.e;
            }
            if (i2 != i) {
                f01.c("The consent form has already been shown.", null);
                xs3.a(this.d, new fu0(this, null));
                xs3.a("The consent form has already been shown.", null, 6);
                return false;
            }
        }
        if (!this.U.getAndSet(true)) {
            return true;
        }
        f01.a("This ad has already been shown.", (Throwable) null);
        xs3.a(this.d, new gu0(this, null));
        xs3.a("The ad has already been shown", null, 6);
        return false;
    }

    @Override // ads_mobile_sdk.yy0, ads_mobile_sdk.h0
    public final Object a(FullScreenContentError fullScreenContentError, Continuation continuation) {
        Object objA = this.Q.a(fullScreenContentError, continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0054, code lost:
    
        if (r6.p(r0) == r1) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.yx0, ads_mobile_sdk.yy0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(android.view.View r6, kotlin.coroutines.Continuation r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof ads_mobile_sdk.iu0
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.iu0 r0 = (ads_mobile_sdk.iu0) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.iu0 r0 = new ads_mobile_sdk.iu0
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r7)
            goto L57
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            ads_mobile_sdk.ju0 r6 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L49
        L3a:
            kotlin.ResultKt.throwOnFailure(r7)
            r0.a = r5
            r0.d = r4
            java.lang.Object r6 = super.a(r6, r0)
            if (r6 != r1) goto L48
            goto L56
        L48:
            r6 = r5
        L49:
            ads_mobile_sdk.v3 r6 = r6.Q
            r7 = 0
            r0.a = r7
            r0.d = r3
            java.lang.Object r6 = r6.p(r0)
            if (r6 != r1) goto L57
        L56:
            return r1
        L57:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ju0.a(android.view.View, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.yy0
    public final Object e(Continuation continuation) {
        Object objA = a(new FullScreenContentError(FullScreenContentError.ErrorCode.INTERNAL_ERROR, "There was an internal error when attempting to show fullscreen content.", null), continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.zx0
    public final void a(Context context, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(context, "context");
        g83 g83Var = this.R;
        s11 s11Var = s11.CUI_NAME_ADSHOW;
        List listListOf = CollectionsKt__CollectionsJVMKt.listOf(this.F.toString());
        ks3 ks3Var = this.S;
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listListOf, ks3Var);
            try {
                rb rbVar = this.P;
                StackTraceElement[] stackTrace = new Exception().getStackTrace();
                Intrinsics.checkNotNullExpressionValue(stackTrace, "getStackTrace(...)");
                rbVar.b(ArraysKt___ArraysKt.toList(stackTrace));
                if (!q()) {
                    CloseableKt.closeFinally(tu2VarA, null);
                    return;
                }
                ex0 ex0Var = this.e;
                ex0Var.getClass();
                Intrinsics.checkNotNullParameter("gads:default_to_immersive:enabled", C3522b4.i.W);
                Boolean bool = Boolean.TRUE;
                ir irVar = yr.b;
                if (((Boolean) ex0Var.a("gads:default_to_immersive:enabled", bool, irVar)).booleanValue()) {
                    ex0 ex0Var2 = this.e;
                    ex0Var2.getClass();
                    Intrinsics.checkNotNullParameter("gads:override_pub_immersive_setting:enabled", C3522b4.i.W);
                    if (!((Boolean) ex0Var2.a("gads:override_pub_immersive_setting:enabled", bool, irVar)).booleanValue() && z2) {
                        this.v = z;
                    } else {
                        this.v = true;
                    }
                } else {
                    this.v = z;
                }
                a(context);
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
                rb rbVar2 = this.P;
                StackTraceElement[] stackTrace2 = new Exception().getStackTrace();
                Intrinsics.checkNotNullExpressionValue(stackTrace2, "getStackTrace(...)");
                rbVar2.b(ArraysKt___ArraysKt.toList(stackTrace2));
                if (!q()) {
                    CloseableKt.closeFinally(rr3VarA, null);
                    return;
                }
                ex0 ex0Var3 = this.e;
                ex0Var3.getClass();
                Intrinsics.checkNotNullParameter("gads:default_to_immersive:enabled", C3522b4.i.W);
                Boolean bool2 = Boolean.TRUE;
                ir irVar2 = yr.b;
                if (((Boolean) ex0Var3.a("gads:default_to_immersive:enabled", bool2, irVar2)).booleanValue()) {
                    ex0 ex0Var4 = this.e;
                    ex0Var4.getClass();
                    Intrinsics.checkNotNullParameter("gads:override_pub_immersive_setting:enabled", C3522b4.i.W);
                    if (!((Boolean) ex0Var4.a("gads:override_pub_immersive_setting:enabled", bool2, irVar2)).booleanValue() && z2) {
                        this.v = z;
                    } else {
                        this.v = true;
                    }
                } else {
                    this.v = z;
                }
                a(context);
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
