package ads_mobile_sdk;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.common.AdInspectorError;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.ironsource.C3522b4;
import com.vungle.ads.internal.protos.Sdk;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class if1 extends nc1 implements vk0, cd3, gx0 {
    public static final AdInspectorError N = new AdInspectorError(AdInspectorError.ErrorCode.ALREADY_OPEN, "Ad inspector cannot be opened because it is already open.");
    public static final AdInspectorError O = new AdInspectorError(AdInspectorError.ErrorCode.FAILED_TO_LOAD, "Ad inspector failed to load.");
    public static final AdInspectorError P = new AdInspectorError(AdInspectorError.ErrorCode.INTERNAL_ERROR, "Ad inspector had an internal error.");
    public static final AdInspectorError Q = new AdInspectorError(AdInspectorError.ErrorCode.NOT_IN_TEST_MODE, "Ad inspector cannot be opened because the device is not in test mode. See https://developers.google.com/admob/android/test-ads#enable_test_devices for more information.");
    public static final AdInspectorError R = new AdInspectorError(AdInspectorError.ErrorCode.DISABLED, "Ad inspector cannot be opened because it is disabled in the AndroidManifest.xml.");
    public JsonObject A;
    public JsonObject B;
    public ae1 C;
    public final Mutex D;
    public long E;
    public final LinkedHashMap F;
    public final LinkedHashMap G;
    public final Mutex H;
    public WeakReference I;
    public final AtomicBoolean J;
    public final AtomicBoolean K;
    public final AtomicBoolean L;
    public Boolean M;
    public final Context c;
    public final CoroutineScope d;
    public final String e;
    public final cw2 f;
    public final cw2 g;
    public final Gson h;
    public final ex0 i;
    public final tx j;
    public final e01 k;
    public final qg1 l;
    public final ek m;
    public final pn n;
    public final fg1 o;
    public final iz3 p;
    public final g83 q;
    public final l43 r;
    public final cw2 s;
    public final rd1 t;
    public final g30 u;
    public final km v;
    public final ja1 w;
    public final Mutex x;
    public og1 y;
    public boolean z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public if1(Context applicationContext, CoroutineScope backgroundScope, String afmaVersion, dw2 shakeDetector, dw2 flickDetector, Gson gson, ex0 flags, tx clock, e01 httpClient, qg1 inspectorSettingsDataStore, ek appInfo, pn appState, fg1 presenterFactory, iz3 webViewFactory, g83 rootTraceCreator, l43 requestConfigurationWrapper, dw2 webViewConfigurator, rd1 inspectorAdapterInfo, g30 consentManager, km appSettings, ja1 initializationConfigWrapper) {
        super(s11.CUI_NAME_SDKINIT_INIT_AD_INSPECTOR, false);
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(shakeDetector, "shakeDetector");
        Intrinsics.checkNotNullParameter(flickDetector, "flickDetector");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(inspectorSettingsDataStore, "inspectorSettingsDataStore");
        Intrinsics.checkNotNullParameter(appInfo, "appInfo");
        Intrinsics.checkNotNullParameter(appState, "appState");
        Intrinsics.checkNotNullParameter(presenterFactory, "presenterFactory");
        Intrinsics.checkNotNullParameter(webViewFactory, "webViewFactory");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(requestConfigurationWrapper, "requestConfigurationWrapper");
        Intrinsics.checkNotNullParameter(webViewConfigurator, "webViewConfigurator");
        Intrinsics.checkNotNullParameter(inspectorAdapterInfo, "inspectorAdapterInfo");
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        Intrinsics.checkNotNullParameter(appSettings, "appSettings");
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        this.c = applicationContext;
        this.d = backgroundScope;
        this.e = afmaVersion;
        this.f = shakeDetector;
        this.g = flickDetector;
        this.h = gson;
        this.i = flags;
        this.j = clock;
        this.k = httpClient;
        this.l = inspectorSettingsDataStore;
        this.m = appInfo;
        this.n = appState;
        this.o = presenterFactory;
        this.p = webViewFactory;
        this.q = rootTraceCreator;
        this.r = requestConfigurationWrapper;
        this.s = webViewConfigurator;
        this.t = inspectorAdapterInfo;
        this.u = consentManager;
        this.v = appSettings;
        this.w = initializationConfigWrapper;
        this.x = MutexKt.Mutex(false);
        this.A = new JsonObject();
        this.B = new JsonObject();
        this.C = ae1.a;
        this.D = MutexKt.Mutex(false);
        this.F = new LinkedHashMap();
        this.G = new LinkedHashMap();
        this.H = MutexKt.Mutex(false);
        this.I = new WeakReference(null);
        this.J = new AtomicBoolean(false);
        this.K = new AtomicBoolean(false);
        this.L = new AtomicBoolean(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object b(ads_mobile_sdk.if1 r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof ads_mobile_sdk.je1
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.je1 r0 = (ads_mobile_sdk.je1) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.je1 r0 = new ads_mobile_sdk.je1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            kotlinx.coroutines.sync.Mutex r5 = r0.b
            ads_mobile_sdk.if1 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            r6 = r5
            r5 = r0
            goto L4a
        L30:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L38:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.sync.Mutex r6 = r5.x
            r0.a = r5
            r0.b = r6
            r0.e = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L4a
            return r1
        L4a:
            ads_mobile_sdk.og1 r5 = r5.y     // Catch: java.lang.Throwable -> L55
            if (r5 != 0) goto L57
            java.lang.String r5 = "storedInspectorSettings"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r5)     // Catch: java.lang.Throwable -> L55
            r5 = r4
            goto L57
        L55:
            r5 = move-exception
            goto L5b
        L57:
            r6.unlock(r4)
            return r5
        L5b:
            r6.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.if1.b(ads_mobile_sdk.if1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object c(ads_mobile_sdk.if1 r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof ads_mobile_sdk.ke1
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.ke1 r0 = (ads_mobile_sdk.ke1) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.ke1 r0 = new ads_mobile_sdk.ke1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            kotlinx.coroutines.sync.Mutex r5 = r0.b
            ads_mobile_sdk.if1 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            r6 = r5
            r5 = r0
            goto L4a
        L30:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L38:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.sync.Mutex r6 = r5.x
            r0.a = r5
            r0.b = r6
            r0.e = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L4a
            return r1
        L4a:
            boolean r5 = r5.k()     // Catch: java.lang.Throwable -> L56
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)     // Catch: java.lang.Throwable -> L56
            r6.unlock(r4)
            return r5
        L56:
            r5 = move-exception
            r6.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.if1.c(ads_mobile_sdk.if1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x006d, code lost:
    
        if (r7.f(r0) == r1) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object d(ads_mobile_sdk.if1 r7, kotlin.coroutines.Continuation r8) throws java.lang.Throwable {
        /*
            boolean r0 = r8 instanceof ads_mobile_sdk.ne1
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.ne1 r0 = (ads_mobile_sdk.ne1) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.ne1 r0 = new ads_mobile_sdk.ne1
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L47
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r7 = r0.a
            kotlinx.coroutines.sync.Mutex r7 = (kotlinx.coroutines.sync.Mutex) r7
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L31
            goto L73
        L31:
            r8 = move-exception
            goto L79
        L33:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3b:
            kotlinx.coroutines.sync.Mutex r7 = r0.b
            java.lang.Object r2 = r0.a
            ads_mobile_sdk.if1 r2 = (ads_mobile_sdk.if1) r2
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r7
            r7 = r2
            goto L59
        L47:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r7.H
            r0.a = r7
            r0.b = r8
            r0.e = r4
            java.lang.Object r2 = r8.lock(r5, r0)
            if (r2 != r1) goto L59
            goto L6f
        L59:
            java.lang.ref.WeakReference r7 = r7.I     // Catch: java.lang.Throwable -> L70
            java.lang.Object r7 = r7.get()     // Catch: java.lang.Throwable -> L70
            ads_mobile_sdk.eg1 r7 = (ads_mobile_sdk.eg1) r7     // Catch: java.lang.Throwable -> L70
            if (r7 == 0) goto L72
            r0.a = r8     // Catch: java.lang.Throwable -> L70
            r0.b = r5     // Catch: java.lang.Throwable -> L70
            r0.e = r3     // Catch: java.lang.Throwable -> L70
            java.lang.Object r7 = r7.f(r0)     // Catch: java.lang.Throwable -> L70
            if (r7 != r1) goto L72
        L6f:
            return r1
        L70:
            r7 = move-exception
            goto L7c
        L72:
            r7 = r8
        L73:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L31
            r7.unlock(r5)
            return r8
        L79:
            r6 = r8
            r8 = r7
            r7 = r6
        L7c:
            r8.unlock(r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.if1.d(ads_mobile_sdk.if1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object e(ads_mobile_sdk.if1 r6, kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof ads_mobile_sdk.xe1
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.xe1 r0 = (ads_mobile_sdk.xe1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.xe1 r0 = new ads_mobile_sdk.xe1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            ads_mobile_sdk.if1 r6 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L41
        L2b:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L33:
            kotlin.ResultKt.throwOnFailure(r7)
            r0.a = r6
            r0.d = r3
            java.lang.Object r7 = r6.A(r0)
            if (r7 != r1) goto L41
            return r1
        L41:
            kotlinx.coroutines.CoroutineScope r0 = r6.d
            ads_mobile_sdk.ye1 r7 = new ads_mobile_sdk.ye1
            r1 = 0
            r7.<init>(r6, r1)
            r6 = r1
            kotlin.coroutines.EmptyCoroutineContext r1 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE
            java.lang.String r2 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r2)
            java.lang.String r2 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r2)
            java.lang.String r2 = "block"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r2)
            ads_mobile_sdk.ws3 r3 = new ads_mobile_sdk.ws3
            r3.<init>(r7, r6)
            r4 = 2
            r5 = 0
            r2 = 0
            kotlinx.coroutines.BuildersKt.launch$default(r0, r1, r2, r3, r4, r5)
            ads_mobile_sdk.q01 r6 = new ads_mobile_sdk.q01
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            r6.<init>(r7)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.if1.e(ads_mobile_sdk.if1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0077 A[Catch: all -> 0x0080, TRY_LEAVE, TryCatch #0 {all -> 0x0080, blocks: (B:27:0x0073, B:29:0x0077), top: B:56:0x0073 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x009f A[Catch: all -> 0x00a3, TryCatch #1 {all -> 0x00a3, blocks: (B:42:0x0099, B:44:0x009f, B:47:0x00a5), top: B:58:0x0099 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object A(kotlin.coroutines.Continuation r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof ads_mobile_sdk.me1
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.me1 r0 = (ads_mobile_sdk.me1) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.me1 r0 = new ads_mobile_sdk.me1
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L4d
            if (r2 == r5) goto L47
            if (r2 == r4) goto L3d
            if (r2 != r3) goto L35
            kotlinx.coroutines.sync.Mutex r1 = r0.b
            ads_mobile_sdk.if1 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L99
        L35:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L3d:
            kotlinx.coroutines.sync.Mutex r2 = r0.b
            ads_mobile_sdk.if1 r4 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r2
            r2 = r4
            goto L73
        L47:
            ads_mobile_sdk.if1 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L5c
        L4d:
            kotlin.ResultKt.throwOnFailure(r8)
            r0.a = r7
            r0.e = r5
            java.lang.Object r8 = r7.z(r0)
            if (r8 != r1) goto L5b
            goto L96
        L5b:
            r2 = r7
        L5c:
            ads_mobile_sdk.ex0 r8 = r2.i
            boolean r8 = r8.a0()
            if (r8 == 0) goto Lb3
            kotlinx.coroutines.sync.Mutex r8 = r2.x
            r0.a = r2
            r0.b = r8
            r0.e = r4
            java.lang.Object r4 = r8.lock(r6, r0)
            if (r4 != r1) goto L73
            goto L96
        L73:
            boolean r4 = r2.z     // Catch: java.lang.Throwable -> L80
            if (r4 != 0) goto L82
            boolean r4 = r2.k()     // Catch: java.lang.Throwable -> L80
            if (r4 == 0) goto L7e
            goto L82
        L7e:
            r5 = 0
            goto L82
        L80:
            r0 = move-exception
            goto Laf
        L82:
            r8.unlock(r6)
            if (r5 == 0) goto L88
            goto Lb3
        L88:
            kotlinx.coroutines.sync.Mutex r8 = r2.x
            r0.a = r2
            r0.b = r8
            r0.e = r3
            java.lang.Object r0 = r8.lock(r6, r0)
            if (r0 != r1) goto L97
        L96:
            return r1
        L97:
            r1 = r8
            r0 = r2
        L99:
            boolean r8 = r0.l()     // Catch: java.lang.Throwable -> La3
            if (r8 == 0) goto La5
            r0.i()     // Catch: java.lang.Throwable -> La3
            goto La5
        La3:
            r8 = move-exception
            goto Lab
        La5:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> La3
            r1.unlock(r6)
            return r8
        Lab:
            r1.unlock(r6)
            throw r8
        Laf:
            r8.unlock(r6)
            throw r0
        Lb3:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.if1.A(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r8, ads_mobile_sdk.md1 r9, kotlin.coroutines.Continuation r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof ads_mobile_sdk.be1
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.be1 r0 = (ads_mobile_sdk.be1) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            ads_mobile_sdk.be1 r0 = new ads_mobile_sdk.be1
            r0.<init>(r7, r10)
        L18:
            java.lang.Object r10 = r0.e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.g
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L34
            kotlinx.coroutines.sync.Mutex r8 = r0.d
            ads_mobile_sdk.md1 r9 = r0.c
            java.lang.String r1 = r0.b
            ads_mobile_sdk.if1 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            r10 = r8
            r8 = r1
            goto L53
        L34:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3c:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.sync.Mutex r10 = r7.D
            r0.a = r7
            r0.b = r8
            r0.c = r9
            r0.d = r10
            r0.g = r3
            java.lang.Object r0 = r10.lock(r4, r0)
            if (r0 != r1) goto L52
            return r1
        L52:
            r0 = r7
        L53:
            java.util.LinkedHashMap r1 = r0.F     // Catch: java.lang.Throwable -> L84
            int r1 = r1.size()     // Catch: java.lang.Throwable -> L84
            ads_mobile_sdk.ex0 r2 = r0.i     // Catch: java.lang.Throwable -> L84
            r2.getClass()     // Catch: java.lang.Throwable -> L84
            java.lang.String r3 = "gads:inspector:max_ad_life_cycles"
            java.lang.String r5 = "key"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r5)     // Catch: java.lang.Throwable -> L84
            r5 = 1000(0x3e8, float:1.401E-42)
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Throwable -> L84
            ads_mobile_sdk.nr r6 = ads_mobile_sdk.yr.f     // Catch: java.lang.Throwable -> L84
            java.lang.Object r2 = r2.a(r3, r5, r6)     // Catch: java.lang.Throwable -> L84
            java.lang.Number r2 = (java.lang.Number) r2     // Catch: java.lang.Throwable -> L84
            int r2 = r2.intValue()     // Catch: java.lang.Throwable -> L84
            if (r1 < r2) goto L86
            java.lang.String r8 = "Maximum number of stored ad requests reached. Dropping the current request."
            ads_mobile_sdk.f01.c(r8, r4)     // Catch: java.lang.Throwable -> L84
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L84
            r10.unlock(r4)
            return r8
        L84:
            r8 = move-exception
            goto Laa
        L86:
            java.util.LinkedHashMap r1 = r0.G     // Catch: java.lang.Throwable -> L84
            java.lang.Object r1 = r1.get(r8)     // Catch: java.lang.Throwable -> L84
            java.util.List r1 = (java.util.List) r1     // Catch: java.lang.Throwable -> L84
            if (r1 != 0) goto L9a
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L84
            r1.<init>()     // Catch: java.lang.Throwable -> L84
            java.util.LinkedHashMap r2 = r0.G     // Catch: java.lang.Throwable -> L84
            r2.put(r8, r1)     // Catch: java.lang.Throwable -> L84
        L9a:
            r1.add(r9)     // Catch: java.lang.Throwable -> L84
            java.util.LinkedHashMap r8 = r0.F     // Catch: java.lang.Throwable -> L84
            java.lang.String r0 = r9.d     // Catch: java.lang.Throwable -> L84
            r8.put(r0, r9)     // Catch: java.lang.Throwable -> L84
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L84
            r10.unlock(r4)
            return r8
        Laa:
            r10.unlock(r4)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.if1.a(java.lang.String, ads_mobile_sdk.md1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.nc1
    public final Object u(Continuation continuation) {
        return e(this, continuation);
    }

    public final Object v(Continuation continuation) {
        return a(this, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object w(kotlin.coroutines.Continuation r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof ads_mobile_sdk.ge1
            if (r0 == 0) goto L13
            r0 = r5
            ads_mobile_sdk.ge1 r0 = (ads_mobile_sdk.ge1) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            ads_mobile_sdk.ge1 r0 = new ads_mobile_sdk.ge1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r5)
            goto L3d
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L31:
            kotlin.ResultKt.throwOnFailure(r5)
            r0.c = r3
            java.lang.String r5 = r4.g()
            if (r5 != r1) goto L3d
            return r1
        L3d:
            java.lang.String r5 = (java.lang.String) r5
            java.lang.String r0 = "{}"
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r0)
            if (r0 == 0) goto L49
            java.lang.String r5 = ""
        L49:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.if1.w(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0099 A[Catch: all -> 0x009e, TRY_ENTER, TryCatch #2 {all -> 0x009e, blocks: (B:35:0x0091, B:38:0x0099, B:41:0x00a2, B:43:0x00aa, B:44:0x00ae), top: B:64:0x0091 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00aa A[Catch: all -> 0x009e, TryCatch #2 {all -> 0x009e, blocks: (B:35:0x0091, B:38:0x0099, B:41:0x00a2, B:43:0x00aa, B:44:0x00ae), top: B:64:0x0091 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r1v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object x(kotlin.coroutines.Continuation r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 240
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.if1.x(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:185:0x0271, code lost:
    
        r6 = r16;
        r0 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x029b, code lost:
    
        if (r0 == r3) goto L97;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x043f  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x04b5 A[Catch: all -> 0x008c, TryCatch #9 {all -> 0x008c, blocks: (B:13:0x006f, B:119:0x049d, B:121:0x04b5, B:122:0x04bd, B:21:0x00d0, B:25:0x0115), top: B:179:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x04ef A[Catch: all -> 0x04e1, Exception -> 0x04f4, TryCatch #8 {Exception -> 0x04f4, blocks: (B:130:0x04e6, B:132:0x04ef, B:135:0x04f6, B:139:0x0504), top: B:177:0x04e6, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0500  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0503  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0535 A[Catch: all -> 0x04e1, TryCatch #0 {all -> 0x04e1, blocks: (B:125:0x04d9, B:129:0x04e4, B:130:0x04e6, B:132:0x04ef, B:135:0x04f6, B:139:0x0504, B:146:0x0535, B:147:0x053a, B:149:0x056c, B:154:0x0579, B:141:0x050e, B:143:0x0524, B:144:0x052c), top: B:162:0x04d9, inners: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x056c A[Catch: all -> 0x04e1, TryCatch #0 {all -> 0x04e1, blocks: (B:125:0x04d9, B:129:0x04e4, B:130:0x04e6, B:132:0x04ef, B:135:0x04f6, B:139:0x0504, B:146:0x0535, B:147:0x053a, B:149:0x056c, B:154:0x0579, B:141:0x050e, B:143:0x0524, B:144:0x052c), top: B:162:0x04d9, inners: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0576  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x04d9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0363 A[Catch: all -> 0x0368, TryCatch #3 {all -> 0x0368, blocks: (B:77:0x035b, B:79:0x0363, B:82:0x036c, B:84:0x0378, B:85:0x037c), top: B:168:0x035b }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0378 A[Catch: all -> 0x0368, TryCatch #3 {all -> 0x0368, blocks: (B:77:0x035b, B:79:0x0363, B:82:0x036c, B:84:0x0378, B:85:0x037c), top: B:168:0x035b }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x03ae  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x03d8  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x03d9  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x042a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x02b1 -> B:65:0x02c0). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:0x02ea -> B:71:0x02ed). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object y(kotlin.coroutines.Continuation r40) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1446
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.if1.y(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:0|2|(2:4|(1:6)(1:8))(0)|7|9|(1:(1:(5:(1:(8:15|91|16|17|101|82|83|84)(2:20|21))(14:22|99|23|24|107|63|(3:93|65|66)|69|(4:71|72|97|73)(1:80)|81|101|82|83|84)|19|86|89|90)(21:27|105|28|103|40|(1:42)|46|(2:48|49)|50|(4:52|53|95|54)(1:61)|62|107|63|(0)|69|(0)(0)|81|101|82|83|84))(1:31))(3:32|(1:35)|75)|109|36|(19:39|103|40|(0)|46|(0)|50|(0)(0)|62|107|63|(0)|69|(0)(0)|81|101|82|83|84)|75|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0106, code lost:
    
        if (a(r3, r0, null, null, null, null, null, null, null, null, r13, 510) == r2) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0157, code lost:
    
        if (a(r5, null, null, null, null, null, r9, null, null, null, r13, 479) == r2) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x016f, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0170, code lost:
    
        r1 = 0;
        r6 = r7;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b4 A[Catch: all -> 0x00be, TRY_ENTER, TRY_LEAVE, TryCatch #7 {all -> 0x00be, blocks: (B:28:0x0065, B:42:0x00b4, B:48:0x00d2), top: B:105:0x0065 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d2 A[Catch: all -> 0x00be, TRY_ENTER, TRY_LEAVE, TryCatch #7 {all -> 0x00be, blocks: (B:28:0x0065, B:42:0x00b4, B:48:0x00d2), top: B:105:0x0065 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00dc A[Catch: all -> 0x010e, TRY_LEAVE, TryCatch #6 {all -> 0x010e, blocks: (B:40:0x00b0, B:46:0x00c0, B:50:0x00d6, B:52:0x00dc), top: B:103:0x00b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0136 A[Catch: all -> 0x015e, TRY_LEAVE, TryCatch #8 {all -> 0x015e, blocks: (B:63:0x011b, B:69:0x0127, B:71:0x0136), top: B:107:0x011b }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x011f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v7, types: [ads_mobile_sdk.if1, kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v13, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4, types: [ads_mobile_sdk.og1] */
    /* JADX WARN: Type inference failed for: r8v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object z(kotlin.coroutines.Continuation r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 374
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.if1.z(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final String g() {
        if (!l()) {
            return "{}";
        }
        og1 og1Var = this.y;
        og1 og1Var2 = null;
        if (og1Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
            og1Var = null;
        }
        if (og1Var.D() > 0) {
            og1 og1Var3 = this.y;
            if (og1Var3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
                og1Var3 = null;
            }
            long jD = og1Var3.D();
            this.j.getClass();
            if (jD < System.currentTimeMillis() / ((long) 1000)) {
                BuildersKt__Builders_commonKt.launch$default(this.d, null, null, new fe1(this, null), 3, null);
                return "{}";
            }
        }
        og1 og1Var4 = this.y;
        if (og1Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
        } else {
            og1Var2 = og1Var4;
        }
        String strC = og1Var2.C();
        Intrinsics.checkNotNullExpressionValue(strC, "getNetworkExtras(...)");
        return strC;
    }

    public final boolean k() {
        boolean zBooleanValue;
        PackageManager packageManager;
        ApplicationInfo applicationInfo;
        Bundle bundle;
        rr3 rr3VarA;
        tu2 tu2VarA;
        ex0 ex0Var = this.i;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:inspector:disable_ad_inspector_from_manifest_enabled", C3522b4.i.W);
        if (((Boolean) ex0Var.a("gads:inspector:disable_ad_inspector_from_manifest_enabled", Boolean.TRUE, yr.b)).booleanValue()) {
            Boolean bool = this.M;
            if (bool != null) {
                zBooleanValue = bool.booleanValue();
            } else {
                try {
                    packageManager = this.c.getPackageManager();
                } catch (PackageManager.NameNotFoundException unused) {
                }
                zBooleanValue = (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(this.c.getPackageName(), Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE)) == null || (bundle = applicationInfo.metaData) == null) ? false : bundle.getBoolean("com.google.android.libraries.ads.mobile.sdk.flag.DISABLE_AD_INSPECTOR", false);
                this.M = Boolean.valueOf(zBooleanValue);
            }
        } else {
            zBooleanValue = false;
        }
        og1 og1Var = this.y;
        if (og1Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
            og1Var = null;
        }
        boolean z = og1Var.z();
        boolean z2 = zBooleanValue && !z;
        if (zBooleanValue) {
            if (z) {
                if (this.L.compareAndSet(false, true)) {
                    g83 g83Var = this.q;
                    s11 s11Var = s11.CUI_NAME_AD_INSPECTOR_GLOBAL_ALLOWLIST_OVERRIDE;
                    List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
                    ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                    if (hs3.b().a == null) {
                        tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                        try {
                            Unit unit = Unit.INSTANCE;
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
                        rr3VarA = hs3.a(s11Var, CollectionsKt__CollectionsKt.emptyList(), true);
                        try {
                            Unit unit2 = Unit.INSTANCE;
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
                }
            } else if (this.K.compareAndSet(false, true)) {
                g83 g83Var2 = this.q;
                s11 s11Var2 = s11.CUI_NAME_AD_INSPECTOR_DISABLED;
                List listEmptyList2 = CollectionsKt__CollectionsKt.emptyList();
                ks3 ks3Var2 = new ks3(new n03(), new tn1(), new m33(), new zb());
                if (hs3.b().a == null) {
                    tu2VarA = g83.a(g83Var2, s11Var2, listEmptyList2, ks3Var2);
                    try {
                        Unit unit3 = Unit.INSTANCE;
                        CloseableKt.closeFinally(tu2VarA, null);
                    } catch (Throwable th3) {
                        try {
                            tu2VarA.b(th3);
                            if (th3 instanceof v24) {
                                throw th3;
                            }
                            if (!(th3 instanceof TimeoutCancellationException) && !(th3 instanceof CancellationException)) {
                                tu2VarA.a(th3);
                            }
                            if (th3 instanceof TimeoutCancellationException) {
                                throw new i21(th3);
                            }
                            if (th3 instanceof CancellationException) {
                                throw new wz0(th3);
                            }
                            if (th3 instanceof w01) {
                                throw th3;
                            }
                            throw new b01(th3);
                        } finally {
                            try {
                                throw th;
                            } finally {
                            }
                        }
                    }
                } else {
                    rr3VarA = hs3.a(s11Var2, CollectionsKt__CollectionsKt.emptyList(), true);
                    try {
                        Unit unit4 = Unit.INSTANCE;
                        CloseableKt.closeFinally(rr3VarA, null);
                    } catch (Throwable th4) {
                        try {
                            rr3VarA.b(th4);
                            if (th4 instanceof v24) {
                                throw th4;
                            }
                            if (!(th4 instanceof TimeoutCancellationException) && !(th4 instanceof CancellationException)) {
                                rr3VarA.a(th4);
                            }
                            if (th4 instanceof TimeoutCancellationException) {
                                throw new i21(th4);
                            }
                            if (th4 instanceof CancellationException) {
                                throw new wz0(th4);
                            }
                            if (th4 instanceof w01) {
                                throw th4;
                            }
                            throw new b01(th4);
                        } finally {
                            try {
                                throw th;
                            } finally {
                            }
                        }
                    }
                }
            }
        }
        if (z2 && this.J.compareAndSet(false, true)) {
            f01.a("Ad inspector is disabled in the AndroidManifest.xml.", null, null, 6);
        }
        return z2;
    }

    public final void i() {
        if (this.z) {
            return;
        }
        ((ed3) this.f.get()).i = this;
        ix0 ix0Var = (ix0) this.g.get();
        ix0Var.getClass();
        Intrinsics.checkNotNullParameter(this, "listener");
        ix0Var.m = this;
        this.z = true;
        og1 og1Var = this.y;
        if (og1Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
            og1Var = null;
        }
        vd1 vd1VarY = og1Var.y();
        Intrinsics.checkNotNullExpressionValue(vd1VarY, "getGesture(...)");
        a(vd1VarY);
        v01 v01VarA = this.m.a();
        if (v01VarA instanceof q01) {
            this.B = (JsonObject) ((q01) v01VarA).b;
        }
        f01.a("Ad inspector enabled. Ad inspector can increase memory usage on test devices.", null, null, 6);
    }

    public final boolean l() {
        if (k()) {
            return false;
        }
        og1 og1Var = this.y;
        og1 og1Var2 = null;
        if (og1Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
            og1Var = null;
        }
        if (og1Var.B()) {
            return true;
        }
        og1 og1Var3 = this.y;
        if (og1Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("storedInspectorSettings");
        } else {
            og1Var2 = og1Var3;
        }
        if (og1Var2.A()) {
            ex0 ex0Var = this.i;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:inspector:linked_device_enable_inspector", C3522b4.i.W);
            if (((Boolean) ex0Var.a("gads:inspector:linked_device_enable_inspector", Boolean.TRUE, yr.b)).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00c6 A[Catch: all -> 0x00cc, TRY_LEAVE, TryCatch #2 {all -> 0x00cc, blocks: (B:46:0x00c0, B:48:0x00c6, B:53:0x00ce, B:56:0x00d4, B:58:0x00d9, B:60:0x00dd, B:61:0x00e1, B:63:0x00e7, B:65:0x00eb, B:66:0x00ef, B:70:0x0118, B:67:0x00fc, B:69:0x0102), top: B:83:0x00c0 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00ce A[Catch: all -> 0x00cc, TRY_ENTER, TryCatch #2 {all -> 0x00cc, blocks: (B:46:0x00c0, B:48:0x00c6, B:53:0x00ce, B:56:0x00d4, B:58:0x00d9, B:60:0x00dd, B:61:0x00e1, B:63:0x00e7, B:65:0x00eb, B:66:0x00ef, B:70:0x0118, B:67:0x00fc, B:69:0x0102), top: B:83:0x00c0 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00fc A[Catch: all -> 0x00cc, TryCatch #2 {all -> 0x00cc, blocks: (B:46:0x00c0, B:48:0x00c6, B:53:0x00ce, B:56:0x00d4, B:58:0x00d9, B:60:0x00dd, B:61:0x00e1, B:63:0x00e7, B:65:0x00eb, B:66:0x00ef, B:70:0x0118, B:67:0x00fc, B:69:0x0102), top: B:83:0x00c0 }] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object b(ads_mobile_sdk.if1 r18, boolean r19, kotlin.coroutines.Continuation r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 299
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.if1.b(ads_mobile_sdk.if1, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.if1 r5, java.lang.String r6, java.lang.String r7, com.google.gson.JsonObject r8, kotlin.coroutines.Continuation r9) {
        /*
            boolean r0 = r9 instanceof ads_mobile_sdk.ce1
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.ce1 r0 = (ads_mobile_sdk.ce1) r0
            int r1 = r0.j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.j = r1
            goto L18
        L13:
            ads_mobile_sdk.ce1 r0 = new ads_mobile_sdk.ce1
            r0.<init>(r5, r9)
        L18:
            java.lang.Object r9 = r0.h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.j
            r3 = 1
            if (r2 == 0) goto L44
            if (r2 != r3) goto L3c
            android.net.Uri$Builder r5 = r0.g
            java.lang.String r6 = r0.f
            android.net.Uri$Builder r7 = r0.e
            android.net.Uri$Builder r8 = r0.d
            com.google.gson.JsonObject r1 = r0.c
            java.lang.String r2 = r0.b
            ads_mobile_sdk.if1 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            r4 = r8
            r8 = r7
            r7 = r2
            r2 = r9
            r9 = r4
            goto L72
        L3c:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L44:
            kotlin.ResultKt.throwOnFailure(r9)
            android.net.Uri r6 = android.net.Uri.parse(r6)
            android.net.Uri$Builder r6 = r6.buildUpon()
            r0.a = r5
            r0.b = r7
            r0.c = r8
            r0.d = r6
            r0.e = r6
            java.lang.String r9 = "linkedDeviceId"
            r0.f = r9
            r0.g = r6
            r0.j = r3
            r5.getClass()
            java.lang.Object r0 = b(r5, r0)
            if (r0 != r1) goto L6b
            return r1
        L6b:
            r1 = r8
            r2 = r0
            r0 = r5
            r5 = r6
            r8 = r5
            r6 = r9
            r9 = r8
        L72:
            ads_mobile_sdk.og1 r2 = (ads_mobile_sdk.og1) r2
            java.lang.String r2 = r2.x()
            r5.appendQueryParameter(r6, r2)
            if (r7 == 0) goto L82
            java.lang.String r5 = "adSlotPath"
            r8.appendQueryParameter(r5, r7)
        L82:
            java.lang.String r5 = r0.e
            java.lang.String r6 = "afmaVersion"
            r8.appendQueryParameter(r6, r5)
            if (r1 == 0) goto L94
            java.lang.String r5 = r1.toString()
            java.lang.String r6 = "debugData"
            r8.appendQueryParameter(r6, r5)
        L94:
            android.net.Uri r5 = r9.build()
            java.lang.String r6 = "build(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.if1.a(ads_mobile_sdk.if1, java.lang.String, java.lang.String, com.google.gson.JsonObject, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object b(ads_mobile_sdk.if1 r16, java.lang.String r17, kotlin.coroutines.Continuation r18) throws java.lang.Throwable {
        /*
            r0 = r16
            r1 = r18
            boolean r2 = r1 instanceof ads_mobile_sdk.ef1
            if (r2 == 0) goto L18
            r2 = r1
            ads_mobile_sdk.ef1 r2 = (ads_mobile_sdk.ef1) r2
            int r3 = r2.f
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L18
            int r3 = r3 - r4
            r2.f = r3
        L16:
            r13 = r2
            goto L1e
        L18:
            ads_mobile_sdk.ef1 r2 = new ads_mobile_sdk.ef1
            r2.<init>(r0, r1)
            goto L16
        L1e:
            java.lang.Object r1 = r13.d
            java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r3 = r13.f
            r4 = 2
            r5 = 1
            r15 = 0
            if (r3 == 0) goto L51
            if (r3 == r5) goto L42
            if (r3 != r4) goto L3a
            java.lang.Object r0 = r13.a
            r2 = r0
            kotlinx.coroutines.sync.Mutex r2 = (kotlinx.coroutines.sync.Mutex) r2
            kotlin.ResultKt.throwOnFailure(r1)     // Catch: java.lang.Throwable -> L38
            goto L83
        L38:
            r0 = move-exception
            goto L89
        L3a:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L42:
            kotlinx.coroutines.sync.Mutex r0 = r13.c
            java.lang.String r3 = r13.b
            java.lang.Object r5 = r13.a
            ads_mobile_sdk.if1 r5 = (ads_mobile_sdk.if1) r5
            kotlin.ResultKt.throwOnFailure(r1)
            r1 = r0
            r11 = r3
            r3 = r5
            goto L69
        L51:
            kotlin.ResultKt.throwOnFailure(r1)
            kotlinx.coroutines.sync.Mutex r1 = r0.x
            r13.a = r0
            r3 = r17
            r13.b = r3
            r13.c = r1
            r13.f = r5
            java.lang.Object r5 = r1.lock(r15, r13)
            if (r5 != r2) goto L67
            goto L81
        L67:
            r11 = r3
            r3 = r0
        L69:
            r13.a = r1     // Catch: java.lang.Throwable -> L8b
            r13.b = r15     // Catch: java.lang.Throwable -> L8b
            r13.c = r15     // Catch: java.lang.Throwable -> L8b
            r13.f = r4     // Catch: java.lang.Throwable -> L8b
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r10 = 0
            r12 = 0
            r14 = 383(0x17f, float:5.37E-43)
            java.lang.Object r0 = a(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14)     // Catch: java.lang.Throwable -> L8b
            if (r0 != r2) goto L82
        L81:
            return r2
        L82:
            r2 = r1
        L83:
            kotlin.Unit r0 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L38
            r2.unlock(r15)
            return r0
        L89:
            r1 = r2
            goto L8c
        L8b:
            r0 = move-exception
        L8c:
            r1.unlock(r15)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.if1.b(ads_mobile_sdk.if1, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02f8 A[Catch: all -> 0x02d2, TRY_LEAVE, TryCatch #7 {all -> 0x02d2, blocks: (B:96:0x02bf, B:98:0x02c6, B:100:0x02ca, B:102:0x02ce, B:105:0x02d5, B:107:0x02d9, B:109:0x02dd, B:111:0x02e1, B:112:0x02e2, B:113:0x02e7, B:114:0x02e8, B:115:0x02ef, B:116:0x02f0, B:117:0x02f7, B:118:0x02f8), top: B:212:0x02bf }] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x03a6  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x03b5 A[Catch: all -> 0x03c4, TRY_LEAVE, TryCatch #2 {all -> 0x03c4, blocks: (B:159:0x0421, B:132:0x03ad, B:134:0x03b5, B:139:0x03c9, B:151:0x03fe, B:166:0x0445, B:140:0x03d2, B:142:0x03d6, B:147:0x03e0, B:150:0x03ef), top: B:205:0x03ad, inners: #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x03c9 A[Catch: all -> 0x03c4, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x03c4, blocks: (B:159:0x0421, B:132:0x03ad, B:134:0x03b5, B:139:0x03c9, B:151:0x03fe, B:166:0x0445, B:140:0x03d2, B:142:0x03d6, B:147:0x03e0, B:150:0x03ef), top: B:205:0x03ad, inners: #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x043a  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x046f A[Catch: all -> 0x047b, TryCatch #12 {all -> 0x047b, blocks: (B:174:0x0468, B:176:0x046f, B:178:0x0473, B:180:0x0477, B:183:0x047e, B:185:0x0482, B:187:0x0486, B:189:0x048a, B:190:0x048b, B:191:0x0490, B:192:0x0491, B:193:0x0498, B:194:0x0499, B:195:0x04a0, B:196:0x04a1), top: B:220:0x0468 }] */
    /* JADX WARN: Removed duplicated region for block: B:196:0x04a1 A[Catch: all -> 0x047b, TRY_LEAVE, TryCatch #12 {all -> 0x047b, blocks: (B:174:0x0468, B:176:0x046f, B:178:0x0473, B:180:0x0477, B:183:0x047e, B:185:0x0482, B:187:0x0486, B:189:0x048a, B:190:0x048b, B:191:0x0490, B:192:0x0491, B:193:0x0498, B:194:0x0499, B:195:0x04a0, B:196:0x04a1), top: B:220:0x0468 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0206 A[Catch: all -> 0x00cb, TRY_LEAVE, TryCatch #6 {all -> 0x00cb, blocks: (B:30:0x00c6, B:85:0x0293, B:35:0x00dc, B:82:0x027a, B:38:0x00ee, B:56:0x01fe, B:58:0x0206, B:61:0x0215, B:74:0x0256, B:88:0x029c, B:62:0x021e, B:64:0x0222, B:69:0x022f, B:72:0x023f), top: B:211:0x0042, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0215 A[Catch: all -> 0x00cb, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x00cb, blocks: (B:30:0x00c6, B:85:0x0293, B:35:0x00dc, B:82:0x027a, B:38:0x00ee, B:56:0x01fe, B:58:0x0206, B:61:0x0215, B:74:0x0256, B:88:0x029c, B:62:0x021e, B:64:0x0222, B:69:0x022f, B:72:0x023f), top: B:211:0x0042, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001c  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x02c6 A[Catch: all -> 0x02d2, TryCatch #7 {all -> 0x02d2, blocks: (B:96:0x02bf, B:98:0x02c6, B:100:0x02ca, B:102:0x02ce, B:105:0x02d5, B:107:0x02d9, B:109:0x02dd, B:111:0x02e1, B:112:0x02e2, B:113:0x02e7, B:114:0x02e8, B:115:0x02ef, B:116:0x02f0, B:117:0x02f7, B:118:0x02f8), top: B:212:0x02bf }] */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v16, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v18, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v19 */
    /* JADX WARN: Type inference failed for: r11v20 */
    /* JADX WARN: Type inference failed for: r11v21 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v8, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r17v9 */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v30, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v32, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v35, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v38 */
    /* JADX WARN: Type inference failed for: r1v40 */
    /* JADX WARN: Type inference failed for: r1v47 */
    /* JADX WARN: Type inference failed for: r1v50, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v53 */
    /* JADX WARN: Type inference failed for: r1v54 */
    /* JADX WARN: Type inference failed for: r1v55 */
    /* JADX WARN: Type inference failed for: r1v56 */
    /* JADX WARN: Type inference failed for: r1v57 */
    /* JADX WARN: Type inference failed for: r1v58 */
    /* JADX WARN: Type inference failed for: r1v59 */
    /* JADX WARN: Type inference failed for: r1v60 */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.gson.JsonObject] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v17, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v19, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v23, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v24, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v25, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v29, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v39 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v40 */
    /* JADX WARN: Type inference failed for: r2v41 */
    /* JADX WARN: Type inference failed for: r2v42 */
    /* JADX WARN: Type inference failed for: r2v43 */
    /* JADX WARN: Type inference failed for: r2v44 */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r3v32 */
    /* JADX WARN: Type inference failed for: r3v33, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v53 */
    /* JADX WARN: Type inference failed for: r3v54, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v55 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v18, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v2, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v20, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v31 */
    /* JADX WARN: Type inference failed for: r5v33 */
    /* JADX WARN: Type inference failed for: r5v34, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v36, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v40 */
    /* JADX WARN: Type inference failed for: r5v41 */
    /* JADX WARN: Type inference failed for: r5v46 */
    /* JADX WARN: Type inference failed for: r5v47 */
    /* JADX WARN: Type inference failed for: r5v48 */
    /* JADX WARN: Type inference failed for: r5v49 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.if1 r25, java.lang.String r26, com.google.gson.JsonObject r27, kotlin.coroutines.Continuation r28) {
        /*
            Method dump skipped, instruction units count: 1214
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.if1.a(ads_mobile_sdk.if1, java.lang.String, com.google.gson.JsonObject, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.if1 r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof ads_mobile_sdk.ee1
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.ee1 r0 = (ads_mobile_sdk.ee1) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.ee1 r0 = new ads_mobile_sdk.ee1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            kotlinx.coroutines.sync.Mutex r5 = r0.b
            ads_mobile_sdk.if1 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            r6 = r5
            r5 = r0
            goto L4a
        L30:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L38:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.sync.Mutex r6 = r5.x
            r0.a = r5
            r0.b = r6
            r0.e = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L4a
            return r1
        L4a:
            boolean r5 = r5.l()     // Catch: java.lang.Throwable -> L56
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)     // Catch: java.lang.Throwable -> L56
            r6.unlock(r4)
            return r5
        L56:
            r5 = move-exception
            r6.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.if1.a(ads_mobile_sdk.if1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object a(oh2 oh2Var) {
        return d(this, oh2Var);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:112:0x03fe  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x047c  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x047e A[Catch: all -> 0x05b2, PHI: r0 r1 r2 r3 r6 r12 r17 r18 r19 r20
      0x047e: PHI (r0v64 ??) = (r0v169 ??), (r0v170 ??) binds: [B:126:0x047a, B:59:0x01ce] A[DONT_GENERATE, DONT_INLINE]
      0x047e: PHI (r1v42 ??) = (r1v112 ??), (r1v113 ??) binds: [B:126:0x047a, B:59:0x01ce] A[DONT_GENERATE, DONT_INLINE]
      0x047e: PHI (r2v35 ??) = (r2v100 ??), (r2v101 ??) binds: [B:126:0x047a, B:59:0x01ce] A[DONT_GENERATE, DONT_INLINE]
      0x047e: PHI (r3v49 java.lang.Object) = (r3v39 java.lang.Object), (r3v1 java.lang.Object) binds: [B:126:0x047a, B:59:0x01ce] A[DONT_GENERATE, DONT_INLINE]
      0x047e: PHI (r6v29 ??) = (r6v87 ??), (r6v88 ??) binds: [B:126:0x047a, B:59:0x01ce] A[DONT_GENERATE, DONT_INLINE]
      0x047e: PHI (r12v9 ads_mobile_sdk.if1) = (r12v6 ads_mobile_sdk.if1), (r12v11 ads_mobile_sdk.if1) binds: [B:126:0x047a, B:59:0x01ce] A[DONT_GENERATE, DONT_INLINE]
      0x047e: PHI (r17v11 java.lang.String) = (r17v8 java.lang.String), (r17v12 java.lang.String) binds: [B:126:0x047a, B:59:0x01ce] A[DONT_GENERATE, DONT_INLINE]
      0x047e: PHI (r18v9 java.lang.Object) = (r18v7 java.lang.Object), (r18v10 java.lang.Object) binds: [B:126:0x047a, B:59:0x01ce] A[DONT_GENERATE, DONT_INLINE]
      0x047e: PHI (r19v9 java.lang.String) = (r19v7 java.lang.String), (r19v10 java.lang.String) binds: [B:126:0x047a, B:59:0x01ce] A[DONT_GENERATE, DONT_INLINE]
      0x047e: PHI (r20v9 java.lang.String) = (r20v7 java.lang.String), (r20v10 java.lang.String) binds: [B:126:0x047a, B:59:0x01ce] A[DONT_GENERATE, DONT_INLINE], TryCatch #4 {all -> 0x05b2, blocks: (B:146:0x0525, B:148:0x052b, B:154:0x056c, B:142:0x04f5, B:128:0x047e, B:130:0x0484, B:135:0x04c2, B:137:0x04c6, B:173:0x05b4, B:174:0x05b9, B:113:0x0405, B:115:0x040f, B:117:0x0413, B:119:0x0419, B:125:0x045b), top: B:371:0x0405 }] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0484 A[Catch: all -> 0x05b2, TRY_LEAVE, TryCatch #4 {all -> 0x05b2, blocks: (B:146:0x0525, B:148:0x052b, B:154:0x056c, B:142:0x04f5, B:128:0x047e, B:130:0x0484, B:135:0x04c2, B:137:0x04c6, B:173:0x05b4, B:174:0x05b9, B:113:0x0405, B:115:0x040f, B:117:0x0413, B:119:0x0419, B:125:0x045b), top: B:371:0x0405 }] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x04c2 A[Catch: all -> 0x05b2, TRY_ENTER, TryCatch #4 {all -> 0x05b2, blocks: (B:146:0x0525, B:148:0x052b, B:154:0x056c, B:142:0x04f5, B:128:0x047e, B:130:0x0484, B:135:0x04c2, B:137:0x04c6, B:173:0x05b4, B:174:0x05b9, B:113:0x0405, B:115:0x040f, B:117:0x0413, B:119:0x0419, B:125:0x045b), top: B:371:0x0405 }] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0525 A[Catch: all -> 0x05b2, PHI: r0 r1 r2 r3 r6 r7 r12
      0x0525: PHI (r0v76 ads_mobile_sdk.r31) = (r0v73 ads_mobile_sdk.r31), (r0v86 ads_mobile_sdk.r31) binds: [B:144:0x0521, B:51:0x018b] A[DONT_GENERATE, DONT_INLINE]
      0x0525: PHI (r1v48 ??) = (r1v108 ??), (r1v109 ??) binds: [B:144:0x0521, B:51:0x018b] A[DONT_GENERATE, DONT_INLINE]
      0x0525: PHI (r2v41 ??) = (r2v96 ??), (r2v97 ??) binds: [B:144:0x0521, B:51:0x018b] A[DONT_GENERATE, DONT_INLINE]
      0x0525: PHI (r3v59 java.lang.Object) = (r3v58 java.lang.Object), (r3v1 java.lang.Object) binds: [B:144:0x0521, B:51:0x018b] A[DONT_GENERATE, DONT_INLINE]
      0x0525: PHI (r6v35 ??) = (r6v83 ??), (r6v84 ??) binds: [B:144:0x0521, B:51:0x018b] A[DONT_GENERATE, DONT_INLINE]
      0x0525: PHI (r7v27 ??) = (r7v58 ??), (r7v59 ??) binds: [B:144:0x0521, B:51:0x018b] A[DONT_GENERATE, DONT_INLINE]
      0x0525: PHI (r12v14 ads_mobile_sdk.if1) = (r12v12 ads_mobile_sdk.if1), (r12v16 ads_mobile_sdk.if1) binds: [B:144:0x0521, B:51:0x018b] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #4 {all -> 0x05b2, blocks: (B:146:0x0525, B:148:0x052b, B:154:0x056c, B:142:0x04f5, B:128:0x047e, B:130:0x0484, B:135:0x04c2, B:137:0x04c6, B:173:0x05b4, B:174:0x05b9, B:113:0x0405, B:115:0x040f, B:117:0x0413, B:119:0x0419, B:125:0x045b), top: B:371:0x0405 }] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x052b A[Catch: all -> 0x05b2, TRY_LEAVE, TryCatch #4 {all -> 0x05b2, blocks: (B:146:0x0525, B:148:0x052b, B:154:0x056c, B:142:0x04f5, B:128:0x047e, B:130:0x0484, B:135:0x04c2, B:137:0x04c6, B:173:0x05b4, B:174:0x05b9, B:113:0x0405, B:115:0x040f, B:117:0x0413, B:119:0x0419, B:125:0x045b), top: B:371:0x0405 }] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x056c A[Catch: all -> 0x05b2, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x05b2, blocks: (B:146:0x0525, B:148:0x052b, B:154:0x056c, B:142:0x04f5, B:128:0x047e, B:130:0x0484, B:135:0x04c2, B:137:0x04c6, B:173:0x05b4, B:174:0x05b9, B:113:0x0405, B:115:0x040f, B:117:0x0413, B:119:0x0419, B:125:0x045b), top: B:371:0x0405 }] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0597 A[Catch: all -> 0x059f, TryCatch #30 {all -> 0x059f, blocks: (B:47:0x016d, B:158:0x058f, B:160:0x0597, B:163:0x05a1), top: B:403:0x016d }] */
    /* JADX WARN: Removed duplicated region for block: B:195:0x05dd A[Catch: all -> 0x05e9, TryCatch #1 {all -> 0x05e9, blocks: (B:193:0x05d6, B:195:0x05dd, B:197:0x05e1, B:199:0x05e5, B:202:0x05ec, B:204:0x05f0, B:206:0x05f4, B:208:0x05f8, B:209:0x05f9, B:210:0x05fe, B:211:0x05ff, B:212:0x0606, B:213:0x0607, B:214:0x060e, B:215:0x060f), top: B:366:0x05d6 }] */
    /* JADX WARN: Removed duplicated region for block: B:215:0x060f A[Catch: all -> 0x05e9, TRY_LEAVE, TryCatch #1 {all -> 0x05e9, blocks: (B:193:0x05d6, B:195:0x05dd, B:197:0x05e1, B:199:0x05e5, B:202:0x05ec, B:204:0x05f0, B:206:0x05f4, B:208:0x05f8, B:209:0x05f9, B:210:0x05fe, B:211:0x05ff, B:212:0x0606, B:213:0x0607, B:214:0x060e, B:215:0x060f), top: B:366:0x05d6 }] */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0651 A[Catch: all -> 0x0939, TRY_LEAVE, TryCatch #7 {all -> 0x0939, blocks: (B:226:0x064c, B:228:0x0651, B:231:0x068a), top: B:375:0x064c }] */
    /* JADX WARN: Removed duplicated region for block: B:231:0x068a A[Catch: all -> 0x0939, TRY_ENTER, TRY_LEAVE, TryCatch #7 {all -> 0x0939, blocks: (B:226:0x064c, B:228:0x0651, B:231:0x068a), top: B:375:0x064c }] */
    /* JADX WARN: Removed duplicated region for block: B:240:0x06b8 A[Catch: all -> 0x00dd, TRY_LEAVE, TryCatch #29 {all -> 0x00dd, blocks: (B:31:0x00d1, B:263:0x07b9, B:36:0x00f6, B:253:0x0752, B:320:0x092a, B:321:0x092d, B:39:0x011c, B:238:0x06b3, B:240:0x06b8, B:243:0x06f1, B:245:0x06f9, B:248:0x0732, B:323:0x092f, B:324:0x0933, B:252:0x074e, B:237:0x06af), top: B:376:0x0038, inners: #0, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:243:0x06f1 A[Catch: all -> 0x00dd, TRY_ENTER, TryCatch #29 {all -> 0x00dd, blocks: (B:31:0x00d1, B:263:0x07b9, B:36:0x00f6, B:253:0x0752, B:320:0x092a, B:321:0x092d, B:39:0x011c, B:238:0x06b3, B:240:0x06b8, B:243:0x06f1, B:245:0x06f9, B:248:0x0732, B:323:0x092f, B:324:0x0933, B:252:0x074e, B:237:0x06af), top: B:376:0x0038, inners: #0, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:271:0x07ea  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x07f7 A[Catch: all -> 0x007a, TRY_LEAVE, TryCatch #8 {all -> 0x007a, blocks: (B:18:0x0074, B:23:0x0092, B:287:0x086c, B:272:0x07f1, B:274:0x07f7, B:281:0x083a, B:283:0x083e, B:314:0x091e, B:315:0x0923), top: B:376:0x0038 }] */
    /* JADX WARN: Removed duplicated region for block: B:281:0x083a A[Catch: all -> 0x007a, TRY_ENTER, TryCatch #8 {all -> 0x007a, blocks: (B:18:0x0074, B:23:0x0092, B:287:0x086c, B:272:0x07f1, B:274:0x07f7, B:281:0x083a, B:283:0x083e, B:314:0x091e, B:315:0x0923), top: B:376:0x0038 }] */
    /* JADX WARN: Removed duplicated region for block: B:290:0x0896 A[Catch: all -> 0x00bc, PHI: r0 r1 r2 r3 r6 r7 r12
      0x0896: PHI (r0v146 ads_mobile_sdk.r31) = (r0v143 ads_mobile_sdk.r31), (r0v157 ads_mobile_sdk.r31) binds: [B:288:0x0893, B:19:0x0077] A[DONT_GENERATE, DONT_INLINE]
      0x0896: PHI (r1v85 ??) = (r1v94 ??), (r1v95 ??) binds: [B:288:0x0893, B:19:0x0077] A[DONT_GENERATE, DONT_INLINE]
      0x0896: PHI (r2v71 ??) = (r2v79 ??), (r2v80 ??) binds: [B:288:0x0893, B:19:0x0077] A[DONT_GENERATE, DONT_INLINE]
      0x0896: PHI (r3v108 java.lang.Object) = (r3v107 java.lang.Object), (r3v1 java.lang.Object) binds: [B:288:0x0893, B:19:0x0077] A[DONT_GENERATE, DONT_INLINE]
      0x0896: PHI (r6v75 ??) = (r6v78 ??), (r6v79 ??) binds: [B:288:0x0893, B:19:0x0077] A[DONT_GENERATE, DONT_INLINE]
      0x0896: PHI (r7v52 ??) = (r7v56 ??), (r7v57 ??) binds: [B:288:0x0893, B:19:0x0077] A[DONT_GENERATE, DONT_INLINE]
      0x0896: PHI (r12v32 ads_mobile_sdk.if1) = (r12v30 ads_mobile_sdk.if1), (r12v34 ads_mobile_sdk.if1) binds: [B:288:0x0893, B:19:0x0077] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #9 {all -> 0x00bc, blocks: (B:290:0x0896, B:292:0x089c, B:299:0x08de, B:26:0x00b3), top: B:377:0x00b3 }] */
    /* JADX WARN: Removed duplicated region for block: B:292:0x089c A[Catch: all -> 0x00bc, TRY_LEAVE, TryCatch #9 {all -> 0x00bc, blocks: (B:290:0x0896, B:292:0x089c, B:299:0x08de, B:26:0x00b3), top: B:377:0x00b3 }] */
    /* JADX WARN: Removed duplicated region for block: B:299:0x08de A[Catch: all -> 0x00bc, TRY_ENTER, TRY_LEAVE, TryCatch #9 {all -> 0x00bc, blocks: (B:290:0x0896, B:292:0x089c, B:299:0x08de, B:26:0x00b3), top: B:377:0x00b3 }] */
    /* JADX WARN: Removed duplicated region for block: B:305:0x0908 A[Catch: all -> 0x005a, TryCatch #26 {all -> 0x005a, blocks: (B:13:0x0055, B:303:0x0900, B:305:0x0908, B:306:0x090f), top: B:400:0x0055 }] */
    /* JADX WARN: Removed duplicated region for block: B:339:0x0950 A[Catch: all -> 0x095c, TryCatch #28 {all -> 0x095c, blocks: (B:337:0x0949, B:339:0x0950, B:341:0x0954, B:343:0x0958, B:346:0x095f, B:348:0x0963, B:350:0x0967, B:352:0x096b, B:353:0x096c, B:354:0x0971, B:355:0x0972, B:356:0x0979, B:357:0x097a, B:358:0x0981, B:359:0x0982), top: B:402:0x0949 }] */
    /* JADX WARN: Removed duplicated region for block: B:359:0x0982 A[Catch: all -> 0x095c, TRY_LEAVE, TryCatch #28 {all -> 0x095c, blocks: (B:337:0x0949, B:339:0x0950, B:341:0x0954, B:343:0x0958, B:346:0x095f, B:348:0x0963, B:350:0x0967, B:352:0x096b, B:353:0x096c, B:354:0x0971, B:355:0x0972, B:356:0x0979, B:357:0x097a, B:358:0x0981, B:359:0x0982), top: B:402:0x0949 }] */
    /* JADX WARN: Removed duplicated region for block: B:381:0x0770 A[EXC_TOP_SPLITTER, PHI: r0 r1 r2 r3 r7 r8 r9 r10 r11 r12
      0x0770: PHI (r0v125 ??) = (r0v167 ??), (r0v131 ??) binds: [B:254:0x076c, B:32:0x00d4] A[DONT_GENERATE, DONT_INLINE]
      0x0770: PHI (r1v73 ??) = (r1v99 ??), (r1v100 ??) binds: [B:254:0x076c, B:32:0x00d4] A[DONT_GENERATE, DONT_INLINE]
      0x0770: PHI (r2v59 ??) = (r2v86 ??), (r2v87 ??) binds: [B:254:0x076c, B:32:0x00d4] A[DONT_GENERATE, DONT_INLINE]
      0x0770: PHI (r3v94 kotlinx.coroutines.sync.Mutex) = (r3v93 kotlinx.coroutines.sync.Mutex), (r3v97 kotlinx.coroutines.sync.Mutex) binds: [B:254:0x076c, B:32:0x00d4] A[DONT_GENERATE, DONT_INLINE]
      0x0770: PHI (r7v39 java.lang.String) = (r7v37 java.lang.String), (r7v41 java.lang.String) binds: [B:254:0x076c, B:32:0x00d4] A[DONT_GENERATE, DONT_INLINE]
      0x0770: PHI (r8v28 java.lang.String) = (r8v27 java.lang.String), (r8v0 java.lang.String) binds: [B:254:0x076c, B:32:0x00d4] A[DONT_GENERATE, DONT_INLINE]
      0x0770: PHI (r9v21 java.lang.String) = (r9v19 java.lang.String), (r9v23 java.lang.String) binds: [B:254:0x076c, B:32:0x00d4] A[DONT_GENERATE, DONT_INLINE]
      0x0770: PHI (r10v38 java.lang.String) = (r10v35 java.lang.String), (r10v40 java.lang.String) binds: [B:254:0x076c, B:32:0x00d4] A[DONT_GENERATE, DONT_INLINE]
      0x0770: PHI (r11v16 java.lang.Object) = (r11v14 java.lang.Object), (r11v18 java.lang.Object) binds: [B:254:0x076c, B:32:0x00d4] A[DONT_GENERATE, DONT_INLINE]
      0x0770: PHI (r12v24 ads_mobile_sdk.if1) = (r12v20 ads_mobile_sdk.if1), (r12v26 ads_mobile_sdk.if1) binds: [B:254:0x076c, B:32:0x00d4] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001b  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x02e7 A[Catch: all -> 0x05cc, TRY_LEAVE, TryCatch #18 {all -> 0x05cc, blocks: (B:84:0x02e2, B:86:0x02e7, B:89:0x0320, B:189:0x05d0, B:190:0x05d3, B:83:0x02de), top: B:390:0x02de, inners: #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0320 A[Catch: all -> 0x05cc, TRY_ENTER, TRY_LEAVE, TryCatch #18 {all -> 0x05cc, blocks: (B:84:0x02e2, B:86:0x02e7, B:89:0x0320, B:189:0x05d0, B:190:0x05d3, B:83:0x02de), top: B:390:0x02de, inners: #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0347 A[Catch: all -> 0x0201, TRY_LEAVE, TryCatch #13 {all -> 0x0201, blocks: (B:61:0x01eb, B:66:0x021a, B:109:0x03e1, B:179:0x05c0, B:180:0x05c3, B:69:0x0243, B:94:0x0342, B:96:0x0347, B:99:0x0380, B:101:0x0388, B:104:0x03c1, B:182:0x05c5, B:183:0x05c9, B:108:0x03dd, B:93:0x033e), top: B:376:0x0038, inners: #10, #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0380 A[Catch: all -> 0x0201, TRY_ENTER, TryCatch #13 {all -> 0x0201, blocks: (B:61:0x01eb, B:66:0x021a, B:109:0x03e1, B:179:0x05c0, B:180:0x05c3, B:69:0x0243, B:94:0x0342, B:96:0x0347, B:99:0x0380, B:101:0x0388, B:104:0x03c1, B:182:0x05c5, B:183:0x05c9, B:108:0x03dd, B:93:0x033e), top: B:376:0x0038, inners: #10, #14 }] */
    /* JADX WARN: Type inference failed for: r0v111, types: [com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v119 */
    /* JADX WARN: Type inference failed for: r0v120, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v124 */
    /* JADX WARN: Type inference failed for: r0v125, types: [com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v131 */
    /* JADX WARN: Type inference failed for: r0v132, types: [com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v165 */
    /* JADX WARN: Type inference failed for: r0v166 */
    /* JADX WARN: Type inference failed for: r0v167 */
    /* JADX WARN: Type inference failed for: r0v168 */
    /* JADX WARN: Type inference failed for: r0v169 */
    /* JADX WARN: Type inference failed for: r0v170 */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v42, types: [com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v50 */
    /* JADX WARN: Type inference failed for: r0v54 */
    /* JADX WARN: Type inference failed for: r0v57, types: [com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v63 */
    /* JADX WARN: Type inference failed for: r0v64, types: [com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v98 */
    /* JADX WARN: Type inference failed for: r14v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v20 */
    /* JADX WARN: Type inference failed for: r14v21 */
    /* JADX WARN: Type inference failed for: r14v5, types: [ads_mobile_sdk.ae1] */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r15v25 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v100 */
    /* JADX WARN: Type inference failed for: r1v101 */
    /* JADX WARN: Type inference failed for: r1v102 */
    /* JADX WARN: Type inference failed for: r1v103 */
    /* JADX WARN: Type inference failed for: r1v104 */
    /* JADX WARN: Type inference failed for: r1v105 */
    /* JADX WARN: Type inference failed for: r1v106 */
    /* JADX WARN: Type inference failed for: r1v107 */
    /* JADX WARN: Type inference failed for: r1v108 */
    /* JADX WARN: Type inference failed for: r1v109 */
    /* JADX WARN: Type inference failed for: r1v110 */
    /* JADX WARN: Type inference failed for: r1v111 */
    /* JADX WARN: Type inference failed for: r1v112 */
    /* JADX WARN: Type inference failed for: r1v113 */
    /* JADX WARN: Type inference failed for: r1v114 */
    /* JADX WARN: Type inference failed for: r1v115 */
    /* JADX WARN: Type inference failed for: r1v116 */
    /* JADX WARN: Type inference failed for: r1v117 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v20, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v31, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v34, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v35 */
    /* JADX WARN: Type inference failed for: r1v38, types: [java.lang.Object, kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v41 */
    /* JADX WARN: Type inference failed for: r1v42, types: [java.lang.Object, kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v45, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v48, types: [java.lang.Object, kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v51 */
    /* JADX WARN: Type inference failed for: r1v52, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v54, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v57 */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v65 */
    /* JADX WARN: Type inference failed for: r1v67, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v70, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v73, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v74 */
    /* JADX WARN: Type inference failed for: r1v75 */
    /* JADX WARN: Type inference failed for: r1v78, types: [java.lang.Object, kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v79 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v81, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v82, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v85, types: [java.lang.Object, kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v88 */
    /* JADX WARN: Type inference failed for: r1v89, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r1v91, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v92 */
    /* JADX WARN: Type inference failed for: r1v93 */
    /* JADX WARN: Type inference failed for: r1v94 */
    /* JADX WARN: Type inference failed for: r1v95 */
    /* JADX WARN: Type inference failed for: r1v96 */
    /* JADX WARN: Type inference failed for: r1v97 */
    /* JADX WARN: Type inference failed for: r1v98 */
    /* JADX WARN: Type inference failed for: r1v99 */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* JADX WARN: Type inference failed for: r23v0 */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v100 */
    /* JADX WARN: Type inference failed for: r2v101 */
    /* JADX WARN: Type inference failed for: r2v102 */
    /* JADX WARN: Type inference failed for: r2v103 */
    /* JADX WARN: Type inference failed for: r2v104 */
    /* JADX WARN: Type inference failed for: r2v105 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19, types: [com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v22, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v27, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v31, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v35, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v38, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v41, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v44, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v47, types: [com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v48 */
    /* JADX WARN: Type inference failed for: r2v49 */
    /* JADX WARN: Type inference failed for: r2v51, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v52 */
    /* JADX WARN: Type inference failed for: r2v53, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v56, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v59, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v60 */
    /* JADX WARN: Type inference failed for: r2v61 */
    /* JADX WARN: Type inference failed for: r2v64, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v65 */
    /* JADX WARN: Type inference failed for: r2v68, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v71, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v74, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v77 */
    /* JADX WARN: Type inference failed for: r2v78 */
    /* JADX WARN: Type inference failed for: r2v79 */
    /* JADX WARN: Type inference failed for: r2v80 */
    /* JADX WARN: Type inference failed for: r2v81 */
    /* JADX WARN: Type inference failed for: r2v82 */
    /* JADX WARN: Type inference failed for: r2v83 */
    /* JADX WARN: Type inference failed for: r2v84 */
    /* JADX WARN: Type inference failed for: r2v85 */
    /* JADX WARN: Type inference failed for: r2v86 */
    /* JADX WARN: Type inference failed for: r2v87 */
    /* JADX WARN: Type inference failed for: r2v88 */
    /* JADX WARN: Type inference failed for: r2v89 */
    /* JADX WARN: Type inference failed for: r2v90 */
    /* JADX WARN: Type inference failed for: r2v91 */
    /* JADX WARN: Type inference failed for: r2v92 */
    /* JADX WARN: Type inference failed for: r2v93 */
    /* JADX WARN: Type inference failed for: r2v94 */
    /* JADX WARN: Type inference failed for: r2v95 */
    /* JADX WARN: Type inference failed for: r2v96 */
    /* JADX WARN: Type inference failed for: r2v97 */
    /* JADX WARN: Type inference failed for: r2v98 */
    /* JADX WARN: Type inference failed for: r2v99 */
    /* JADX WARN: Type inference failed for: r3v111, types: [ads_mobile_sdk.gg1] */
    /* JADX WARN: Type inference failed for: r3v115 */
    /* JADX WARN: Type inference failed for: r3v12, types: [ads_mobile_sdk.tu2, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v120 */
    /* JADX WARN: Type inference failed for: r3v122 */
    /* JADX WARN: Type inference failed for: r3v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v62, types: [ads_mobile_sdk.gg1] */
    /* JADX WARN: Type inference failed for: r3v69 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v72 */
    /* JADX WARN: Type inference failed for: r3v8, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v16, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v31 */
    /* JADX WARN: Type inference failed for: r5v36 */
    /* JADX WARN: Type inference failed for: r5v37 */
    /* JADX WARN: Type inference failed for: r6v0, types: [int] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v21, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v25, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v28 */
    /* JADX WARN: Type inference failed for: r6v29, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v32, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v35, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v64 */
    /* JADX WARN: Type inference failed for: r6v69, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v71, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r6v72, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v75, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v78 */
    /* JADX WARN: Type inference failed for: r6v79 */
    /* JADX WARN: Type inference failed for: r6v80 */
    /* JADX WARN: Type inference failed for: r6v81 */
    /* JADX WARN: Type inference failed for: r6v82 */
    /* JADX WARN: Type inference failed for: r6v83 */
    /* JADX WARN: Type inference failed for: r6v84 */
    /* JADX WARN: Type inference failed for: r6v85 */
    /* JADX WARN: Type inference failed for: r6v86 */
    /* JADX WARN: Type inference failed for: r6v87 */
    /* JADX WARN: Type inference failed for: r6v88 */
    /* JADX WARN: Type inference failed for: r6v89 */
    /* JADX WARN: Type inference failed for: r7v23 */
    /* JADX WARN: Type inference failed for: r7v25, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v26 */
    /* JADX WARN: Type inference failed for: r7v27, types: [com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener] */
    /* JADX WARN: Type inference failed for: r7v48 */
    /* JADX WARN: Type inference failed for: r7v50, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v51 */
    /* JADX WARN: Type inference failed for: r7v52, types: [com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener] */
    /* JADX WARN: Type inference failed for: r7v56 */
    /* JADX WARN: Type inference failed for: r7v57 */
    /* JADX WARN: Type inference failed for: r7v58 */
    /* JADX WARN: Type inference failed for: r7v59 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.if1 r24, ads_mobile_sdk.ae1 r25, com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener r26, kotlin.coroutines.Continuation r27) {
        /*
            Method dump skipped, instruction units count: 2480
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.if1.a(ads_mobile_sdk.if1, ads_mobile_sdk.ae1, com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.if1 r16, java.lang.String r17, kotlin.coroutines.Continuation r18) throws java.lang.Throwable {
        /*
            r0 = r16
            r1 = r18
            boolean r2 = r1 instanceof ads_mobile_sdk.ze1
            if (r2 == 0) goto L18
            r2 = r1
            ads_mobile_sdk.ze1 r2 = (ads_mobile_sdk.ze1) r2
            int r3 = r2.f
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L18
            int r3 = r3 - r4
            r2.f = r3
        L16:
            r13 = r2
            goto L1e
        L18:
            ads_mobile_sdk.ze1 r2 = new ads_mobile_sdk.ze1
            r2.<init>(r0, r1)
            goto L16
        L1e:
            java.lang.Object r1 = r13.d
            java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r3 = r13.f
            r4 = 2
            r5 = 1
            r15 = 0
            if (r3 == 0) goto L51
            if (r3 == r5) goto L42
            if (r3 != r4) goto L3a
            java.lang.Object r0 = r13.a
            r2 = r0
            kotlinx.coroutines.sync.Mutex r2 = (kotlinx.coroutines.sync.Mutex) r2
            kotlin.ResultKt.throwOnFailure(r1)     // Catch: java.lang.Throwable -> L38
            goto L83
        L38:
            r0 = move-exception
            goto L89
        L3a:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L42:
            kotlinx.coroutines.sync.Mutex r0 = r13.c
            java.lang.String r3 = r13.b
            java.lang.Object r5 = r13.a
            ads_mobile_sdk.if1 r5 = (ads_mobile_sdk.if1) r5
            kotlin.ResultKt.throwOnFailure(r1)
            r1 = r0
            r10 = r3
            r3 = r5
            goto L69
        L51:
            kotlin.ResultKt.throwOnFailure(r1)
            kotlinx.coroutines.sync.Mutex r1 = r0.x
            r13.a = r0
            r3 = r17
            r13.b = r3
            r13.c = r1
            r13.f = r5
            java.lang.Object r5 = r1.lock(r15, r13)
            if (r5 != r2) goto L67
            goto L81
        L67:
            r10 = r3
            r3 = r0
        L69:
            r13.a = r1     // Catch: java.lang.Throwable -> L8b
            r13.b = r15     // Catch: java.lang.Throwable -> L8b
            r13.c = r15     // Catch: java.lang.Throwable -> L8b
            r13.f = r4     // Catch: java.lang.Throwable -> L8b
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r11 = 0
            r12 = 0
            r14 = 447(0x1bf, float:6.26E-43)
            java.lang.Object r0 = a(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14)     // Catch: java.lang.Throwable -> L8b
            if (r0 != r2) goto L82
        L81:
            return r2
        L82:
            r2 = r1
        L83:
            kotlin.Unit r0 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L38
            r2.unlock(r15)
            return r0
        L89:
            r1 = r2
            goto L8c
        L8b:
            r0 = move-exception
        L8c:
            r1.unlock(r15)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.if1.a(ads_mobile_sdk.if1, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00b0 A[Catch: all -> 0x003a, TRY_LEAVE, TryCatch #1 {all -> 0x003a, blocks: (B:14:0x0035, B:43:0x00aa, B:45:0x00b0, B:48:0x00b6, B:50:0x00bc, B:51:0x00d8), top: B:57:0x0035 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00b6 A[Catch: all -> 0x003a, TRY_ENTER, TryCatch #1 {all -> 0x003a, blocks: (B:14:0x0035, B:43:0x00aa, B:45:0x00b0, B:48:0x00b6, B:50:0x00bc, B:51:0x00d8), top: B:57:0x0035 }] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.if1 r16, ads_mobile_sdk.vd1 r17, kotlin.coroutines.Continuation r18) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 226
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.if1.a(ads_mobile_sdk.if1, ads_mobile_sdk.vd1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00b6 A[Catch: all -> 0x003a, TRY_LEAVE, TryCatch #0 {all -> 0x003a, blocks: (B:14:0x0035, B:34:0x00b0, B:36:0x00b6, B:39:0x00bc, B:42:0x00c2, B:44:0x00c7, B:47:0x00cd, B:48:0x00d1, B:50:0x00d7, B:52:0x00db, B:53:0x00df, B:57:0x0108, B:54:0x00ec, B:56:0x00f2), top: B:66:0x0035 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00bc A[Catch: all -> 0x003a, TRY_ENTER, TryCatch #0 {all -> 0x003a, blocks: (B:14:0x0035, B:34:0x00b0, B:36:0x00b6, B:39:0x00bc, B:42:0x00c2, B:44:0x00c7, B:47:0x00cd, B:48:0x00d1, B:50:0x00d7, B:52:0x00db, B:53:0x00df, B:57:0x0108, B:54:0x00ec, B:56:0x00f2), top: B:66:0x0035 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ec A[Catch: all -> 0x003a, TryCatch #0 {all -> 0x003a, blocks: (B:14:0x0035, B:34:0x00b0, B:36:0x00b6, B:39:0x00bc, B:42:0x00c2, B:44:0x00c7, B:47:0x00cd, B:48:0x00d1, B:50:0x00d7, B:52:0x00db, B:53:0x00df, B:57:0x0108, B:54:0x00ec, B:56:0x00f2), top: B:66:0x0035 }] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.if1 r17, boolean r18, kotlin.coroutines.Continuation r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 279
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.if1.a(ads_mobile_sdk.if1, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a7, code lost:
    
        if (a(r3, null, null, null, null, null, null, null, null, r12, r13, 255) == r2) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.if1 r17, com.google.gson.JsonObject r18, kotlin.coroutines.Continuation r19) throws java.lang.Throwable {
        /*
            r0 = r17
            r1 = r19
            boolean r2 = r1 instanceof ads_mobile_sdk.cf1
            if (r2 == 0) goto L18
            r2 = r1
            ads_mobile_sdk.cf1 r2 = (ads_mobile_sdk.cf1) r2
            int r3 = r2.f
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L18
            int r3 = r3 - r4
            r2.f = r3
        L16:
            r13 = r2
            goto L1e
        L18:
            ads_mobile_sdk.cf1 r2 = new ads_mobile_sdk.cf1
            r2.<init>(r0, r1)
            goto L16
        L1e:
            java.lang.Object r1 = r13.d
            java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r3 = r13.f
            r4 = 2
            r5 = 1
            r15 = 0
            if (r3 == 0) goto L55
            if (r3 == r5) goto L46
            if (r3 != r4) goto L3e
            java.lang.Object r0 = r13.b
            r2 = r0
            kotlinx.coroutines.sync.Mutex r2 = (kotlinx.coroutines.sync.Mutex) r2
            ads_mobile_sdk.if1 r0 = r13.a
            kotlin.ResultKt.throwOnFailure(r1)     // Catch: java.lang.Throwable -> L3b
            goto Lac
        L3b:
            r0 = move-exception
            goto Lbf
        L3e:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L46:
            kotlinx.coroutines.sync.Mutex r0 = r13.c
            java.lang.Object r3 = r13.b
            com.google.gson.JsonObject r3 = (com.google.gson.JsonObject) r3
            ads_mobile_sdk.if1 r5 = r13.a
            kotlin.ResultKt.throwOnFailure(r1)
            r1 = r0
            r0 = r3
            r3 = r5
            goto L70
        L55:
            kotlin.ResultKt.throwOnFailure(r1)
            kotlinx.coroutines.sync.Mutex r1 = r0.x
            r13.a = r0
            r3 = r18
            r13.b = r3
            r13.c = r1
            r13.f = r5
            java.lang.Object r5 = r1.lock(r15, r13)
            if (r5 != r2) goto L6b
            goto La9
        L6b:
            r16 = r3
            r3 = r0
            r0 = r16
        L70:
            r3.A = r0     // Catch: java.lang.Throwable -> L84
            java.lang.String r5 = "is_globally_allowlisted"
            r6 = 0
            boolean r0 = ads_mobile_sdk.ds1.a(r0, r5, r6)     // Catch: java.lang.Throwable -> L84
            ads_mobile_sdk.og1 r5 = r3.y     // Catch: java.lang.Throwable -> L84
            if (r5 != 0) goto L87
            java.lang.String r5 = "storedInspectorSettings"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r5)     // Catch: java.lang.Throwable -> L84
            r5 = r15
            goto L87
        L84:
            r0 = move-exception
            r2 = r1
            goto Lbf
        L87:
            boolean r5 = r5.z()     // Catch: java.lang.Throwable -> L84
            if (r0 == r5) goto Laa
            java.lang.Boolean r12 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r0)     // Catch: java.lang.Throwable -> L84
            r13.a = r3     // Catch: java.lang.Throwable -> L84
            r13.b = r1     // Catch: java.lang.Throwable -> L84
            r13.c = r15     // Catch: java.lang.Throwable -> L84
            r13.f = r4     // Catch: java.lang.Throwable -> L84
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            r14 = 255(0xff, float:3.57E-43)
            java.lang.Object r0 = a(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14)     // Catch: java.lang.Throwable -> L84
            if (r0 != r2) goto Laa
        La9:
            return r2
        Laa:
            r2 = r1
            r0 = r3
        Lac:
            boolean r1 = r0.l()     // Catch: java.lang.Throwable -> L3b
            if (r1 == 0) goto Lb9
            boolean r1 = r0.z     // Catch: java.lang.Throwable -> L3b
            if (r1 != 0) goto Lb9
            r0.i()     // Catch: java.lang.Throwable -> L3b
        Lb9:
            kotlin.Unit r0 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L3b
            r2.unlock(r15)
            return r0
        Lbf:
            r2.unlock(r15)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.if1.a(ads_mobile_sdk.if1, com.google.gson.JsonObject, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(int r11, kotlin.coroutines.Continuation r12) {
        /*
            r10 = this;
            boolean r0 = r12 instanceof ads_mobile_sdk.ff1
            if (r0 == 0) goto L13
            r0 = r12
            ads_mobile_sdk.ff1 r0 = (ads_mobile_sdk.ff1) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.ff1 r0 = new ads_mobile_sdk.ff1
            r0.<init>(r10, r12)
        L18:
            java.lang.Object r12 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            int r11 = r0.c
            kotlinx.coroutines.sync.Mutex r1 = r0.b
            ads_mobile_sdk.if1 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r12)
            goto L4e
        L30:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L38:
            kotlin.ResultKt.throwOnFailure(r12)
            kotlinx.coroutines.sync.Mutex r12 = r10.D
            r0.a = r10
            r0.b = r12
            r0.c = r11
            r0.f = r3
            java.lang.Object r0 = r12.lock(r4, r0)
            if (r0 != r1) goto L4c
            return r1
        L4c:
            r0 = r10
            r1 = r12
        L4e:
            long r5 = r0.E     // Catch: java.lang.Throwable -> L7e
            long r11 = (long) r11     // Catch: java.lang.Throwable -> L7e
            long r5 = r5 + r11
            ads_mobile_sdk.ex0 r2 = r0.i     // Catch: java.lang.Throwable -> L7e
            r2.getClass()     // Catch: java.lang.Throwable -> L7e
            java.lang.String r7 = "gads:inspector:max_ad_response_logs_bytes"
            java.lang.String r8 = "key"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r8)     // Catch: java.lang.Throwable -> L7e
            r8 = 20971520(0x1400000, double:1.03613076E-316)
            java.lang.Long r8 = java.lang.Long.valueOf(r8)     // Catch: java.lang.Throwable -> L7e
            ads_mobile_sdk.rr r9 = ads_mobile_sdk.yr.d     // Catch: java.lang.Throwable -> L7e
            java.lang.Object r2 = r2.a(r7, r8, r9)     // Catch: java.lang.Throwable -> L7e
            java.lang.Number r2 = (java.lang.Number) r2     // Catch: java.lang.Throwable -> L7e
            long r7 = r2.longValue()     // Catch: java.lang.Throwable -> L7e
            int r2 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r2 < 0) goto L80
            r11 = 0
            java.lang.Boolean r11 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r11)     // Catch: java.lang.Throwable -> L7e
            r1.unlock(r4)
            return r11
        L7e:
            r11 = move-exception
            goto L8d
        L80:
            long r5 = r0.E     // Catch: java.lang.Throwable -> L7e
            long r5 = r5 + r11
            r0.E = r5     // Catch: java.lang.Throwable -> L7e
            java.lang.Boolean r11 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)     // Catch: java.lang.Throwable -> L7e
            r1.unlock(r4)
            return r11
        L8d:
            r1.unlock(r4)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.if1.a(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void a(vd1 vd1Var) {
        int iOrdinal = vd1Var.ordinal();
        if (iOrdinal == 1) {
            ((ed3) this.f.get()).b();
        } else {
            if (iOrdinal != 2) {
                return;
            }
            ((ix0) this.g.get()).b();
        }
    }

    public static Object a(if1 if1Var, String str, Long l, gk3 gk3Var) {
        if1Var.getClass();
        return a(if1Var, null, null, null, str, l, null, null, null, null, gk3Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.if1 r16, java.lang.Boolean r17, java.lang.Boolean r18, ads_mobile_sdk.vd1 r19, java.lang.String r20, java.lang.Long r21, java.lang.String r22, java.lang.String r23, java.lang.String r24, java.lang.Boolean r25, kotlin.coroutines.Continuation r26) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 229
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.if1.a(ads_mobile_sdk.if1, java.lang.Boolean, java.lang.Boolean, ads_mobile_sdk.vd1, java.lang.String, java.lang.Long, java.lang.String, java.lang.String, java.lang.String, java.lang.Boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.Boolean r8, java.lang.Boolean r9, ads_mobile_sdk.vd1 r10, java.lang.String r11, java.lang.Long r12, java.lang.String r13, java.lang.String r14, java.lang.String r15, java.lang.Boolean r16, kotlin.coroutines.Continuation r17) {
        /*
            Method dump skipped, instruction units count: 340
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.if1.a(java.lang.Boolean, java.lang.Boolean, ads_mobile_sdk.vd1, java.lang.String, java.lang.Long, java.lang.String, java.lang.String, java.lang.String, java.lang.Boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object a(if1 if1Var, Boolean bool, Boolean bool2, vd1 vd1Var, String str, Long l, String str2, String str3, String str4, Boolean bool3, Continuation continuation, int i) {
        if ((i & 1) != 0) {
            bool = null;
        }
        if ((i & 2) != 0) {
            bool2 = null;
        }
        if ((i & 4) != 0) {
            vd1Var = null;
        }
        if ((i & 8) != 0) {
            str = null;
        }
        if ((i & 16) != 0) {
            l = null;
        }
        if ((i & 32) != 0) {
            str2 = null;
        }
        if ((i & 64) != 0) {
            str3 = null;
        }
        if ((i & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0) {
            str4 = null;
        }
        if ((i & 256) != 0) {
            bool3 = null;
        }
        return if1Var.a(bool, bool2, vd1Var, str, l, str2, str3, str4, bool3, continuation);
    }
}
