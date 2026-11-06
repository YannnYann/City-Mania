package ads_mobile_sdk;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.NonCancellable;

/* JADX INFO: loaded from: classes.dex */
public final class eg1 extends yy0 {
    public final if1 F;
    public final OnAdInspectorClosedListener G;
    public final f0 H;
    public final r31 I;
    public int J;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public eg1(if1 inspectorManager, r31 webView, OnAdInspectorClosedListener listener, f0 activityTracker, Context applicationContext, CoroutineScope uiScope, CoroutineContext uiContext, CoroutineScope backgroundScope, CoroutineContext backgroundContext, ex0 flags, ur3 traceLogger, String afmaVersion, o21 gmaUtil, lo backButtonStateDelegate) {
        super(applicationContext, uiScope, uiContext, backgroundScope, backgroundContext, flags, traceLogger, afmaVersion, gmaUtil, backButtonStateDelegate);
        Intrinsics.checkNotNullParameter(inspectorManager, "inspectorManager");
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(backgroundContext, "backgroundContext");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(backButtonStateDelegate, "backButtonStateDelegate");
        this.F = inspectorManager;
        this.G = listener;
        this.H = activityTracker;
        this.I = webView;
        this.J = -1;
        a(webView);
        n();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.yy0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(kotlin.coroutines.Continuation r11) {
        /*
            r10 = this;
            boolean r0 = r11 instanceof ads_mobile_sdk.zf1
            if (r0 == 0) goto L13
            r0 = r11
            ads_mobile_sdk.zf1 r0 = (ads_mobile_sdk.zf1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.zf1 r0 = new ads_mobile_sdk.zf1
            r0.<init>(r10, r11)
        L18:
            java.lang.Object r11 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L34
            if (r2 != r4) goto L2c
            ads_mobile_sdk.eg1 r1 = r0.a
            kotlin.ResultKt.throwOnFailure(r11)
            goto L47
        L2c:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L34:
            kotlin.ResultKt.throwOnFailure(r11)
            r0.a = r10
            r0.d = r4
            ads_mobile_sdk.r31 r11 = r10.j()
            r11.p = r3
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            if (r11 != r1) goto L46
            return r1
        L46:
            r1 = r10
        L47:
            java.util.concurrent.atomic.AtomicBoolean r11 = r1.m
            boolean r11 = r11.get()
            if (r11 == 0) goto L80
            ads_mobile_sdk.m21 r11 = ads_mobile_sdk.o21.f
            kotlinx.coroutines.NonCancellable r11 = kotlinx.coroutines.NonCancellable.INSTANCE
            kotlin.coroutines.CoroutineContext r0 = r0.getContext()
            kotlin.coroutines.CoroutineContext r11 = r11.plus(r0)
            ads_mobile_sdk.qs3 r0 = ads_mobile_sdk.rs3.b
            kotlin.coroutines.CoroutineContext r11 = r11.minusKey(r0)
            kotlinx.coroutines.CoroutineExceptionHandler$Key r0 = kotlinx.coroutines.CoroutineExceptionHandler.Key
            kotlin.coroutines.CoroutineContext r11 = r11.minusKey(r0)
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key
            kotlin.coroutines.CoroutineContext r11 = r11.minusKey(r0)
            kotlinx.coroutines.CoroutineScope r4 = kotlinx.coroutines.CoroutineScopeKt.CoroutineScope(r11)
            ads_mobile_sdk.yf1 r7 = new ads_mobile_sdk.yf1
            r7.<init>(r1, r3)
            r8 = 3
            r9 = 0
            r5 = 0
            r6 = 0
            kotlinx.coroutines.BuildersKt.launch$default(r4, r5, r6, r7, r8, r9)
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        L80:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.eg1.b(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.yy0
    public final Object e(Continuation continuation) {
        m21 m21Var = o21.f;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(continuation.getContext()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.Key).minusKey(Job.Key)), null, null, new bg1(this, null), 3, null);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0068, code lost:
    
        if (r2.a(r6, r0) == r1) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object f(kotlin.coroutines.Continuation r6) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r6 instanceof ads_mobile_sdk.cg1
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.cg1 r0 = (ads_mobile_sdk.cg1) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.cg1 r0 = new ads_mobile_sdk.cg1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r6)
            goto L6b
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L34:
            com.google.gson.Gson r2 = r0.b
            ads_mobile_sdk.eg1 r4 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L54
        L3c:
            kotlin.ResultKt.throwOnFailure(r6)
            com.google.gson.Gson r2 = new com.google.gson.Gson
            r2.<init>()
            ads_mobile_sdk.if1 r6 = r5.F
            r0.a = r5
            r0.b = r2
            r0.e = r4
            java.lang.Object r6 = r6.y(r0)
            if (r6 != r1) goto L53
            goto L6a
        L53:
            r4 = r5
        L54:
            java.lang.String r6 = r2.toJson(r6)
            ads_mobile_sdk.r31 r2 = r4.I
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6)
            r4 = 0
            r0.a = r4
            r0.b = r4
            r0.e = r3
            java.lang.Object r6 = r2.a(r6, r0)
            if (r6 != r1) goto L6b
        L6a:
            return r1
        L6b:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.eg1.f(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object g(kotlin.coroutines.Continuation r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof ads_mobile_sdk.dg1
            if (r0 == 0) goto L13
            r0 = r5
            ads_mobile_sdk.dg1 r0 = (ads_mobile_sdk.dg1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.dg1 r0 = new ads_mobile_sdk.dg1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            ads_mobile_sdk.eg1 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r5)
            goto L42
        L2b:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L33:
            kotlin.ResultKt.throwOnFailure(r5)
            r0.a = r4
            r0.d = r3
            java.lang.Object r5 = r4.f(r0)
            if (r5 != r1) goto L41
            return r1
        L41:
            r0 = r4
        L42:
            ads_mobile_sdk.f0 r5 = r0.H
            android.app.Activity r5 = r5.g()
            if (r5 == 0) goto L4b
            goto L4d
        L4b:
            android.content.Context r5 = r0.a
        L4d:
            boolean r5 = r0.a(r5)
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.eg1.g(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.yy0
    public final r31 j() {
        return this.I;
    }

    @Override // ads_mobile_sdk.yy0
    public final void a(int i) {
        this.J = i;
    }

    @Override // ads_mobile_sdk.yy0
    public final int l() {
        return this.J;
    }

    @Override // ads_mobile_sdk.yy0, ads_mobile_sdk.h0
    public final Object a(FullScreenContentError fullScreenContentError, Continuation continuation) {
        m21 m21Var = o21.f;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(continuation.getContext()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.Key).minusKey(Job.Key)), null, null, new ag1(this, null), 3, null);
        return Unit.INSTANCE;
    }
}
