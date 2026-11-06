package ads_mobile_sdk;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdRequest;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes.dex */
public final class zz2 extends wy2 {
    public final PictureInPictureAdRequest D;
    public final cw2 E;
    public final qn2 F;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zz2(Context applicationContext, CoroutineContext uiContext, CoroutineContext loadContext, CoroutineScope loadScope, CoroutineScope backgroundScope, dw2 componentProvider, e33 refreshHelper, ao0 displayUtil, BannerAdRequest bannerAdRequest, ks3 traceMetaSet, ex0 flags, g83 rootTraceCreator, String publisherRequestId, j53 requestType, ja1 initializationConfigWrapper, boolean z, md1 inspectorAdLifecycleMonitor, SharedFlow cancellationChannel, qn appState, f0 activityTracker, PictureInPictureAdRequest pipAdRequest, dw2 pipPresenterProvider, CoroutineScope uiScope, qn2 pipAdConfig) {
        super(applicationContext, uiContext, loadContext, loadScope, backgroundScope, componentProvider, refreshHelper, displayUtil, bannerAdRequest, traceMetaSet, flags, rootTraceCreator, publisherRequestId, requestType, initializationConfigWrapper, z, inspectorAdLifecycleMonitor, cancellationChannel, appState);
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(loadContext, "loadContext");
        Intrinsics.checkNotNullParameter(loadScope, "loadScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(componentProvider, "componentProvider");
        Intrinsics.checkNotNullParameter(refreshHelper, "refreshHelper");
        Intrinsics.checkNotNullParameter(displayUtil, "displayUtil");
        Intrinsics.checkNotNullParameter(bannerAdRequest, "bannerAdRequest");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(publisherRequestId, "publisherRequestId");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        Intrinsics.checkNotNullParameter(inspectorAdLifecycleMonitor, "inspectorAdLifecycleMonitor");
        Intrinsics.checkNotNullParameter(cancellationChannel, "cancellationChannel");
        Intrinsics.checkNotNullParameter(appState, "appState");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(pipAdRequest, "pipAdRequest");
        Intrinsics.checkNotNullParameter(pipPresenterProvider, "pipPresenterProvider");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(pipAdConfig, "pipAdConfig");
        this.D = pipAdRequest;
        this.E = pipPresenterProvider;
        this.F = pipAdConfig;
    }

    @Override // ads_mobile_sdk.wy2
    public final o53 a(Context context, AdSize adSize) {
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        Intrinsics.checkNotNullParameter(context, "context");
        return new do2(adSize, context, this.F, new xz2(this));
    }

    @Override // ads_mobile_sdk.wy2, ads_mobile_sdk.px2
    public final /* bridge */ /* synthetic */ Object a(zh1 zh1Var, yw2 yw2Var) {
        return a((ck1) zh1Var, (Continuation) yw2Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.wy2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.ck1 r8, kotlin.coroutines.Continuation r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof ads_mobile_sdk.yz2
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.yz2 r0 = (ads_mobile_sdk.yz2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.yz2 r0 = new ads_mobile_sdk.yz2
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            java.lang.String r3 = "listener"
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L4a
            if (r2 == r5) goto L3e
            if (r2 != r4) goto L36
            java.lang.Object r8 = r0.b
            ads_mobile_sdk.ao2 r8 = (ads_mobile_sdk.ao2) r8
            java.lang.Object r0 = r0.a
            ads_mobile_sdk.ck1 r0 = (ads_mobile_sdk.ck1) r0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L7c
        L36:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3e:
            java.lang.Object r8 = r0.b
            ads_mobile_sdk.ck1 r8 = (ads_mobile_sdk.ck1) r8
            java.lang.Object r2 = r0.a
            ads_mobile_sdk.zz2 r2 = (ads_mobile_sdk.zz2) r2
            kotlin.ResultKt.throwOnFailure(r9)
            goto L5b
        L4a:
            kotlin.ResultKt.throwOnFailure(r9)
            r0.a = r7
            r0.b = r8
            r0.e = r5
            java.lang.Object r9 = ads_mobile_sdk.wy2.a(r7, r8, r0)
            if (r9 != r1) goto L5a
            goto L77
        L5a:
            r2 = r7
        L5b:
            ads_mobile_sdk.ao2 r9 = r2.f()
            java.util.concurrent.atomic.AtomicBoolean r9 = r9.k
            boolean r9 = r9.get()
            if (r9 != 0) goto L9b
            ads_mobile_sdk.ao2 r9 = r2.f()
            r0.a = r8
            r0.b = r9
            r0.e = r4
            java.lang.Object r0 = r2.d(r0)
            if (r0 != r1) goto L78
        L77:
            return r1
        L78:
            r6 = r0
            r0 = r8
            r8 = r9
            r9 = r6
        L7c:
            ads_mobile_sdk.do2 r9 = (ads_mobile_sdk.do2) r9
            ads_mobile_sdk.fm0 r0 = r0.j()
            r8.getClass()
            java.lang.String r1 = "view"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r1)
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r3)
            r8.i = r9
            java.util.concurrent.atomic.AtomicReference r9 = r8.j
            r9.set(r0)
            java.util.concurrent.atomic.AtomicBoolean r8 = r8.k
            r9 = 0
            r8.compareAndSet(r9, r5)
            goto Lae
        L9b:
            ads_mobile_sdk.ao2 r9 = r2.f()
            ads_mobile_sdk.fm0 r8 = r8.j()
            r9.getClass()
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r3)
            java.util.concurrent.atomic.AtomicReference r9 = r9.j
            r9.set(r8)
        Lae:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.zz2.a(ads_mobile_sdk.ck1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final ao2 f() {
        Object obj = this.E.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        return (ao2) obj;
    }

    @Override // ads_mobile_sdk.wy2
    public final BaseRequest d() {
        return this.D;
    }

    @Override // ads_mobile_sdk.wy2
    public final void b() {
        ao2 ao2VarF = f();
        Job job = ao2VarF.m;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, null, 1, null);
        }
        ao2VarF.p.set(false);
        ao2VarF.q.set(false);
        if (ao2VarF.l.compareAndSet(true, false)) {
            ao2VarF.a.b(ao2VarF);
        }
        CoroutineScope coroutineScope = ao2VarF.c;
        vn2 block = new vn2(ao2VarF, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        ao2VarF.j.set(null);
        ao2VarF.k.set(false);
        super.b();
    }

    @Override // ads_mobile_sdk.wy2
    public final void a(ck1 oldAd) {
        Intrinsics.checkNotNullParameter(oldAd, "oldAd");
        synchronized (oldAd.j()) {
        }
        oldAd.j().a((PictureInPictureAdEventCallback) null);
        ((ck1) this.u.a("The backing field has not yet been initialized.")).j().a((PictureInPictureAdEventCallback) null);
        ao2 ao2VarF = f();
        fm0 listener = ((ck1) this.u.a("The backing field has not yet been initialized.")).j();
        ao2VarF.getClass();
        Intrinsics.checkNotNullParameter(listener, "listener");
        ao2VarF.j.set(listener);
    }
}
