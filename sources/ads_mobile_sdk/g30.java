package ads_mobile_sdk;

import ads_mobile_sdk.yh1;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.webkit.CookieManager;
import androidx.core.os.BundleKt;
import com.google.android.gms.common.api.Api;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.ironsource.C3522b4;
import com.unity3d.ads.core.data.datasource.AndroidTcfDataSource;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.time.Duration;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class g30 extends nc1 implements SharedPreferences.OnSharedPreferenceChangeListener, n30 {
    public static final Pattern Q = Pattern.compile("([^;]+=[^;]+)(;\\s|$)", 2);
    public static final JsonObject R;
    public static final JsonObject S;
    public static final Bundle T;
    public JsonObject A;
    public final p02 B;
    public final CompletableJob C;
    public CookieManager D;
    public SharedPreferences E;
    public final p02 F;
    public final Mutex G;
    public Job H;
    public boolean I;
    public final Mutex J;
    public fu K;
    public Deferred L;
    public final Mutex M;
    public String N;
    public Deferred O;
    public long P;
    public final Context c;
    public final CoroutineScope d;
    public final jb3 e;
    public final ur3 f;
    public final Gson g;
    public final ex0 h;
    public final o21 i;
    public final tf j;
    public final bm k;
    public final fi2 l;
    public final ls0 m;
    public final tx n;
    public final g83 o;
    public final f13 p;
    public final cw2 q;
    public final xw0 r;
    public final rw0 s;
    public final jw0 t;
    public final xb0 u;
    public final im2 v;
    public final dq0 w;
    public final Mutex x;
    public Bundle y;
    public final Mutex z;

    static {
        JsonObject jsonObject = new JsonObject();
        Boolean bool = Boolean.TRUE;
        jsonObject.addProperty("gad_idless", bool);
        Boolean bool2 = Boolean.FALSE;
        jsonObject.addProperty("has_special_purposes", bool2);
        R = jsonObject;
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.addProperty("gad_idless", bool2);
        jsonObject2.addProperty("has_special_purposes", bool);
        S = jsonObject2;
        T = BundleKt.bundleOf(TuplesKt.to("fake_key", "fake_val"));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g30(Context applicationContext, CoroutineScope backgroundScope, jb3 javascriptEngine, ur3 traceLogger, Gson gson, ex0 flags, o21 gmaUtil, tf advertisingIdClientWrapper, bm appSetIdClientWrapper, fi2 paidLifecycleWrapper, ls0 firebaseAnalyticsAdapter, tx clock, g83 rootTraceCreator, f13 randomGenerator, dw2 trustlessTokenClientProvider, xw0 flagValueProvider, rw0 flagParamsBuilder, jw0 flagDataStore, xb0 csrbDataStore, im2 persistentCacheManager, dq0 eoidManager) {
        super(s11.CUI_NAME_SDKINIT_INIT_CONSENT_STATE, 2);
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(javascriptEngine, "javascriptEngine");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(advertisingIdClientWrapper, "advertisingIdClientWrapper");
        Intrinsics.checkNotNullParameter(appSetIdClientWrapper, "appSetIdClientWrapper");
        Intrinsics.checkNotNullParameter(paidLifecycleWrapper, "paidLifecycleWrapper");
        Intrinsics.checkNotNullParameter(firebaseAnalyticsAdapter, "firebaseAnalyticsAdapter");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(randomGenerator, "randomGenerator");
        Intrinsics.checkNotNullParameter(trustlessTokenClientProvider, "trustlessTokenClientProvider");
        Intrinsics.checkNotNullParameter(flagValueProvider, "flagValueProvider");
        Intrinsics.checkNotNullParameter(flagParamsBuilder, "flagParamsBuilder");
        Intrinsics.checkNotNullParameter(flagDataStore, "flagDataStore");
        Intrinsics.checkNotNullParameter(csrbDataStore, "csrbDataStore");
        Intrinsics.checkNotNullParameter(persistentCacheManager, "persistentCacheManager");
        Intrinsics.checkNotNullParameter(eoidManager, "eoidManager");
        this.c = applicationContext;
        this.d = backgroundScope;
        this.e = javascriptEngine;
        this.f = traceLogger;
        this.g = gson;
        this.h = flags;
        this.i = gmaUtil;
        this.j = advertisingIdClientWrapper;
        this.k = appSetIdClientWrapper;
        this.l = paidLifecycleWrapper;
        this.m = firebaseAnalyticsAdapter;
        this.n = clock;
        this.o = rootTraceCreator;
        this.p = randomGenerator;
        this.q = trustlessTokenClientProvider;
        this.r = flagValueProvider;
        this.s = flagParamsBuilder;
        this.t = flagDataStore;
        this.u = csrbDataStore;
        this.v = persistentCacheManager;
        this.w = eoidManager;
        this.x = MutexKt.Mutex$default(false, 1, null);
        this.y = T;
        this.z = MutexKt.Mutex$default(false, 1, null);
        this.A = R;
        t00 t00VarZ = u00.z();
        Intrinsics.checkNotNullExpressionValue(t00VarZ, "newBuilder(...)");
        this.B = new p02(v00.a(t00VarZ).a());
        this.C = JobKt__JobKt.Job$default(null, 1, null);
        this.F = new p02(g());
        this.G = MutexKt.Mutex$default(false, 1, null);
        this.J = MutexKt.Mutex$default(false, 1, null);
        this.M = MutexKt.Mutex$default(false, 1, null);
        this.P = Duration.Companion.m2911getZEROUwyO8pc();
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0070, code lost:
    
        if (ads_mobile_sdk.dq0.b(r6, r0) == r1) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object b(ads_mobile_sdk.g30 r6, kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof ads_mobile_sdk.n10
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.n10 r0 = (ads_mobile_sdk.n10) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.n10 r0 = new ads_mobile_sdk.n10
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r7)
            goto L73
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            ads_mobile_sdk.s00 r6 = r0.b
            ads_mobile_sdk.g30 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L54
        L3c:
            kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.s00 r7 = ads_mobile_sdk.s00.API_READ_EOID
            ads_mobile_sdk.p02 r2 = r6.B
            r0.a = r6
            r0.b = r7
            r0.e = r4
            java.lang.Object r2 = r2.a(r0)
            if (r2 != r1) goto L50
            goto L72
        L50:
            r5 = r2
            r2 = r6
            r6 = r7
            r7 = r5
        L54:
            ads_mobile_sdk.u00 r7 = (ads_mobile_sdk.u00) r7
            ads_mobile_sdk.yh1$d r7 = r7.w()
            boolean r6 = r7.contains(r6)
            if (r6 == 0) goto L73
            ads_mobile_sdk.dq0 r6 = r2.w
            r7 = 0
            r0.a = r7
            r0.b = r7
            r0.e = r3
            r6.getClass()
            java.lang.Object r6 = ads_mobile_sdk.dq0.b(r6, r0)
            if (r6 != r1) goto L73
        L72:
            return r1
        L73:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.b(ads_mobile_sdk.g30, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object c(ads_mobile_sdk.g30 r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof ads_mobile_sdk.s10
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.s10 r0 = (ads_mobile_sdk.s10) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.s10 r0 = new ads_mobile_sdk.s10
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
            ads_mobile_sdk.g30 r0 = r0.a
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
            kotlinx.coroutines.sync.Mutex r6 = r5.z
            r0.a = r5
            r0.b = r6
            r0.e = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L4a
            return r1
        L4a:
            com.google.gson.JsonObject r5 = r5.A     // Catch: java.lang.Throwable -> L50
            r6.unlock(r4)
            return r5
        L50:
            r5 = move-exception
            r6.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.c(ads_mobile_sdk.g30, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object d(ads_mobile_sdk.g30 r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof ads_mobile_sdk.t10
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.t10 r0 = (ads_mobile_sdk.t10) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.t10 r0 = new ads_mobile_sdk.t10
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
            ads_mobile_sdk.g30 r0 = r0.a
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
            android.os.Bundle r5 = r5.y     // Catch: java.lang.Throwable -> L50
            r6.unlock(r4)
            return r5
        L50:
            r5 = move-exception
            r6.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.d(ads_mobile_sdk.g30, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object e(ads_mobile_sdk.g30 r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof ads_mobile_sdk.u10
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.u10 r0 = (ads_mobile_sdk.u10) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            ads_mobile_sdk.u10 r0 = new ads_mobile_sdk.u10
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.g
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            com.google.gson.Gson r5 = r0.d
            com.google.gson.Gson r1 = r0.c
            kotlinx.coroutines.sync.Mutex r2 = r0.b
            ads_mobile_sdk.g30 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L55
        L32:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3a:
            kotlin.ResultKt.throwOnFailure(r6)
            com.google.gson.Gson r6 = r5.g
            kotlinx.coroutines.sync.Mutex r2 = r5.x
            r0.a = r5
            r0.b = r2
            r0.c = r6
            r0.d = r6
            r0.g = r3
            java.lang.Object r0 = r2.lock(r4, r0)
            if (r0 != r1) goto L52
            return r1
        L52:
            r0 = r5
            r5 = r6
            r1 = r5
        L55:
            android.os.Bundle r6 = r0.y     // Catch: java.lang.Throwable -> L65
            r2.unlock(r4)
            java.lang.String r5 = r5.toJson(r6)
            java.lang.Class<com.google.gson.JsonObject> r6 = com.google.gson.JsonObject.class
            java.lang.Object r5 = r1.fromJson(r5, r6)
            return r5
        L65:
            r5 = move-exception
            r2.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.e(ads_mobile_sdk.g30, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x017f, code lost:
    
        if (r9 != r1) goto L57;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c7 A[PHI: r7 r10
      0x00c7: PHI (r7v4 ads_mobile_sdk.g30) = (r7v2 ads_mobile_sdk.g30), (r7v5 ads_mobile_sdk.g30) binds: [B:23:0x00c3, B:16:0x0065] A[DONT_GENERATE, DONT_INLINE]
      0x00c7: PHI (r10v9 java.lang.Object) = (r10v8 java.lang.Object), (r10v1 java.lang.Object) binds: [B:23:0x00c3, B:16:0x0065] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0154 A[PHI: r2 r3 r9
      0x0154: PHI (r2v17 'newConsentState' ads_mobile_sdk.k30) = (r2v14 'newConsentState' ads_mobile_sdk.k30), (r2v20 'newConsentState' ads_mobile_sdk.k30) binds: [B:49:0x0151, B:13:0x0034] A[DONT_GENERATE, DONT_INLINE]
      0x0154: PHI (r3v6 ads_mobile_sdk.g30) = (r3v4 ads_mobile_sdk.g30), (r3v7 ads_mobile_sdk.g30) binds: [B:49:0x0151, B:13:0x0034] A[DONT_GENERATE, DONT_INLINE]
      0x0154: PHI (r9v22 ads_mobile_sdk.qb0) = (r9v19 ads_mobile_sdk.qb0), (r9v27 ads_mobile_sdk.qb0) binds: [B:49:0x0151, B:13:0x0034] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object f(ads_mobile_sdk.g30 r9, kotlin.coroutines.Continuation r10) {
        /*
            Method dump skipped, instruction units count: 412
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.f(ads_mobile_sdk.g30, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0070, code lost:
    
        if (r7 == r1) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object h(ads_mobile_sdk.g30 r6, kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof ads_mobile_sdk.c20
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.c20 r0 = (ads_mobile_sdk.c20) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.c20 r0 = new ads_mobile_sdk.c20
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r7)
            goto L73
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            ads_mobile_sdk.s00 r6 = r0.b
            ads_mobile_sdk.g30 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L54
        L3c:
            kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.s00 r7 = ads_mobile_sdk.s00.API_READ_PERSISTENT_SDK_CORE_DATA
            ads_mobile_sdk.p02 r2 = r6.B
            r0.a = r6
            r0.b = r7
            r0.e = r4
            java.lang.Object r2 = r2.a(r0)
            if (r2 != r1) goto L50
            goto L72
        L50:
            r5 = r2
            r2 = r6
            r6 = r7
            r7 = r5
        L54:
            ads_mobile_sdk.u00 r7 = (ads_mobile_sdk.u00) r7
            ads_mobile_sdk.yh1$d r7 = r7.w()
            boolean r6 = r7.contains(r6)
            r7 = 0
            if (r6 == 0) goto L75
            ads_mobile_sdk.jw0 r6 = r2.t
            r0.a = r7
            r0.b = r7
            r0.e = r3
            r6.getClass()
            java.lang.Object r7 = ads_mobile_sdk.jw0.c(r6, r0)
            if (r7 != r1) goto L73
        L72:
            return r1
        L73:
            java.util.Map r7 = (java.util.Map) r7
        L75:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.h(ads_mobile_sdk.g30, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0098 A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #1 {all -> 0x0035, blocks: (B:13:0x0031, B:31:0x0092, B:33:0x0098), top: B:69:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b2 A[Catch: all -> 0x00be, TryCatch #3 {all -> 0x00be, blocks: (B:39:0x00ab, B:41:0x00b2, B:43:0x00b6, B:45:0x00ba, B:48:0x00c0, B:50:0x00c4, B:52:0x00c8, B:54:0x00cc, B:55:0x00cd, B:56:0x00d2, B:57:0x00d3, B:58:0x00da, B:59:0x00db, B:60:0x00e2, B:61:0x00e3), top: B:73:0x00ab }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00e3 A[Catch: all -> 0x00be, TRY_LEAVE, TryCatch #3 {all -> 0x00be, blocks: (B:39:0x00ab, B:41:0x00b2, B:43:0x00b6, B:45:0x00ba, B:48:0x00c0, B:50:0x00c4, B:52:0x00c8, B:54:0x00cc, B:55:0x00cd, B:56:0x00d2, B:57:0x00d3, B:58:0x00da, B:59:0x00db, B:60:0x00e2, B:61:0x00e3), top: B:73:0x00ab }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object j(ads_mobile_sdk.g30 r7, kotlin.coroutines.Continuation r8) {
        /*
            Method dump skipped, instruction units count: 235
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.j(ads_mobile_sdk.g30, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0152, code lost:
    
        if (r1 == r4) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a8 A[Catch: all -> 0x00b2, TryCatch #0 {all -> 0x00b2, blocks: (B:27:0x008c, B:29:0x00a8, B:32:0x00b5, B:34:0x00b9, B:36:0x00f8, B:37:0x0107, B:39:0x010b, B:41:0x0111, B:43:0x0117), top: B:55:0x008c }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b5 A[Catch: all -> 0x00b2, TryCatch #0 {all -> 0x00b2, blocks: (B:27:0x008c, B:29:0x00a8, B:32:0x00b5, B:34:0x00b9, B:36:0x00f8, B:37:0x0107, B:39:0x010b, B:41:0x0111, B:43:0x0117), top: B:55:0x008c }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0158 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object k(ads_mobile_sdk.g30 r17, kotlin.coroutines.Continuation r18) {
        /*
            Method dump skipped, instruction units count: 345
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.k(ads_mobile_sdk.g30, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object l(ads_mobile_sdk.g30 r14, kotlin.coroutines.Continuation r15) {
        /*
            boolean r0 = r15 instanceof ads_mobile_sdk.h20
            if (r0 == 0) goto L13
            r0 = r15
            ads_mobile_sdk.h20 r0 = (ads_mobile_sdk.h20) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.h20 r0 = new ads_mobile_sdk.h20
            r0.<init>(r14, r15)
        L18:
            java.lang.Object r15 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            ads_mobile_sdk.s00 r14 = r0.b
            ads_mobile_sdk.g30 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r15)
            goto L4d
        L2d:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r15 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r15)
            throw r14
        L35:
            kotlin.ResultKt.throwOnFailure(r15)
            ads_mobile_sdk.s00 r15 = ads_mobile_sdk.s00.API_GET_WEBVIEW_COOKIE
            ads_mobile_sdk.p02 r2 = r14.B
            r0.a = r14
            r0.b = r15
            r0.e = r3
            java.lang.Object r0 = r2.a(r0)
            if (r0 != r1) goto L49
            return r1
        L49:
            r13 = r0
            r0 = r14
            r14 = r15
            r15 = r13
        L4d:
            ads_mobile_sdk.u00 r15 = (ads_mobile_sdk.u00) r15
            ads_mobile_sdk.yh1$d r15 = r15.w()
            boolean r14 = r15.contains(r14)
            r15 = 0
            if (r14 == 0) goto Lad
            android.webkit.CookieManager r14 = r0.D
            if (r14 == 0) goto L69
            ads_mobile_sdk.ex0 r0 = r0.h
            java.lang.String r0 = r0.Q0()
            java.lang.String r14 = r14.getCookie(r0)
            goto L6a
        L69:
            r14 = r15
        L6a:
            if (r14 == 0) goto Lad
            int r0 = r14.length()
            if (r0 != 0) goto L73
            goto Lad
        L73:
            java.util.regex.Pattern r15 = ads_mobile_sdk.g30.Q
            java.util.regex.Matcher r14 = r15.matcher(r14)
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
        L7e:
            boolean r15 = r14.find()
            if (r15 == 0) goto L9e
            java.lang.String r15 = r14.group(r3)
            if (r15 == 0) goto L7e
            java.lang.String r0 = "id="
            boolean r0 = kotlin.text.StringsKt__StringsJVMKt.startsWith(r15, r0, r3)
            if (r0 != 0) goto L9a
            java.lang.String r0 = "ide="
            boolean r0 = kotlin.text.StringsKt__StringsJVMKt.startsWith(r15, r0, r3)
            if (r0 == 0) goto L7e
        L9a:
            r4.add(r15)
            goto L7e
        L9e:
            r11 = 62
            r12 = 0
            java.lang.String r5 = "; "
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r10 = 0
            java.lang.String r14 = kotlin.collections.CollectionsKt___CollectionsKt.joinToString$default(r4, r5, r6, r7, r8, r9, r10, r11, r12)
            return r14
        Lad:
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.l(ads_mobile_sdk.g30, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object m(ads_mobile_sdk.g30 r4, kotlin.coroutines.Continuation r5) {
        /*
            boolean r0 = r5 instanceof ads_mobile_sdk.k20
            if (r0 == 0) goto L13
            r0 = r5
            ads_mobile_sdk.k20 r0 = (ads_mobile_sdk.k20) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            ads_mobile_sdk.k20 r0 = new ads_mobile_sdk.k20
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r5)
            goto L3f
        L29:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L31:
            kotlin.ResultKt.throwOnFailure(r5)
            ads_mobile_sdk.p02 r4 = r4.B
            r0.c = r3
            java.lang.Object r5 = r4.a(r0)
            if (r5 != r1) goto L3f
            return r1
        L3f:
            ads_mobile_sdk.u00 r5 = (ads_mobile_sdk.u00) r5
            ads_mobile_sdk.yh1$d r4 = r5.w()
            ads_mobile_sdk.s00 r5 = ads_mobile_sdk.s00.API_READ_TRUSTLESS_TOKEN
            boolean r4 = r4.contains(r5)
            java.lang.Boolean r4 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.m(ads_mobile_sdk.g30, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b8, code lost:
    
        if (a(r0, false, (kotlin.coroutines.Continuation) r2, 3) != r3) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object n(ads_mobile_sdk.g30 r19, kotlin.coroutines.Continuation r20) {
        /*
            Method dump skipped, instruction units count: 335
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.n(ads_mobile_sdk.g30, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x008e, code lost:
    
        if (r2.x(r0) != r1) goto L38;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007a A[PHI: r2
      0x007a: PHI (r2v4 ads_mobile_sdk.g30) = (r2v3 ads_mobile_sdk.g30), (r2v8 ads_mobile_sdk.g30) binds: [B:30:0x0077, B:19:0x0043] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0085 A[PHI: r2
      0x0085: PHI (r2v5 ads_mobile_sdk.g30) = (r2v4 ads_mobile_sdk.g30), (r2v9 ads_mobile_sdk.g30) binds: [B:33:0x0082, B:18:0x003d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object A(kotlin.coroutines.Continuation r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof ads_mobile_sdk.k10
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.k10 r0 = (ads_mobile_sdk.k10) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.k10 r0 = new ads_mobile_sdk.k10
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 5
            r4 = 4
            r5 = 3
            r6 = 2
            r7 = 1
            if (r2 == 0) goto L55
            if (r2 == r7) goto L4f
            if (r2 == r6) goto L49
            if (r2 == r5) goto L43
            if (r2 == r4) goto L3d
            if (r2 != r3) goto L35
            kotlin.ResultKt.throwOnFailure(r9)
            goto L91
        L35:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L3d:
            ads_mobile_sdk.g30 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L85
        L43:
            ads_mobile_sdk.g30 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L7a
        L49:
            ads_mobile_sdk.g30 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L6f
        L4f:
            ads_mobile_sdk.g30 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L64
        L55:
            kotlin.ResultKt.throwOnFailure(r9)
            r0.a = r8
            r0.d = r7
            java.lang.Object r9 = r8.B(r0)
            if (r9 != r1) goto L63
            goto L90
        L63:
            r2 = r8
        L64:
            r0.a = r2
            r0.d = r6
            java.lang.Object r9 = r2.y(r0)
            if (r9 != r1) goto L6f
            goto L90
        L6f:
            r0.a = r2
            r0.d = r5
            java.lang.Object r9 = r2.z(r0)
            if (r9 != r1) goto L7a
            goto L90
        L7a:
            r0.a = r2
            r0.d = r4
            java.lang.Object r9 = r2.w(r0)
            if (r9 != r1) goto L85
            goto L90
        L85:
            r9 = 0
            r0.a = r9
            r0.d = r3
            java.lang.Object r9 = r2.x(r0)
            if (r9 != r1) goto L91
        L90:
            return r1
        L91:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.A(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object B(kotlin.coroutines.Continuation r9) {
        /*
            Method dump skipped, instruction units count: 215
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.B(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x007e, code lost:
    
        if (r6 != r1) goto L29;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object C(kotlin.coroutines.Continuation r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof ads_mobile_sdk.o10
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.o10 r0 = (ads_mobile_sdk.o10) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.o10 r0 = new ads_mobile_sdk.o10
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 2
            if (r2 == 0) goto L3c
            if (r2 == r3) goto L34
            if (r2 != r4) goto L2c
            kotlin.ResultKt.throwOnFailure(r6)
            goto L81
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L34:
            ads_mobile_sdk.s00 r2 = r0.b
            ads_mobile_sdk.g30 r3 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L51
        L3c:
            kotlin.ResultKt.throwOnFailure(r6)
            ads_mobile_sdk.s00 r2 = ads_mobile_sdk.s00.API_READ_ADVERTISING_ID
            ads_mobile_sdk.p02 r6 = r5.B
            r0.a = r5
            r0.b = r2
            r0.e = r3
            java.lang.Object r6 = r6.a(r0)
            if (r6 != r1) goto L50
            goto L80
        L50:
            r3 = r5
        L51:
            ads_mobile_sdk.u00 r6 = (ads_mobile_sdk.u00) r6
            ads_mobile_sdk.yh1$d r6 = r6.w()
            boolean r6 = r6.contains(r2)
            r2 = 0
            if (r6 == 0) goto L84
            ads_mobile_sdk.tf r6 = r3.j
            android.content.Context r3 = r3.c
            r0.a = r2
            r0.b = r2
            r0.e = r4
            r6.getClass()
            ads_mobile_sdk.q01 r6 = new ads_mobile_sdk.q01     // Catch: java.lang.Exception -> L75
            com.google.android.gms.ads.identifier.AdvertisingIdClient$Info r0 = com.google.android.gms.ads.identifier.AdvertisingIdClient.getAdvertisingIdInfo(r3)     // Catch: java.lang.Exception -> L75
            r6.<init>(r0)     // Catch: java.lang.Exception -> L75
            goto L7e
        L75:
            r6 = move-exception
            ads_mobile_sdk.j01 r0 = new ads_mobile_sdk.j01
            java.lang.String r3 = "Exception caught fetching Ad ID"
            r0.<init>(r6, r2, r3, r4)
            r6 = r0
        L7e:
            if (r6 != r1) goto L81
        L80:
            return r1
        L81:
            ads_mobile_sdk.v01 r6 = (ads_mobile_sdk.v01) r6
            return r6
        L84:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.C(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object D(kotlin.coroutines.Continuation r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof ads_mobile_sdk.p10
            if (r0 == 0) goto L13
            r0 = r5
            ads_mobile_sdk.p10 r0 = (ads_mobile_sdk.p10) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.p10 r0 = new ads_mobile_sdk.p10
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            ads_mobile_sdk.s00 r1 = r0.b
            ads_mobile_sdk.g30 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r5)
            goto L4c
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r5)
            ads_mobile_sdk.s00 r5 = ads_mobile_sdk.s00.API_READ_AMAZON_FIRE_AD_ID
            ads_mobile_sdk.p02 r2 = r4.B
            r0.a = r4
            r0.b = r5
            r0.e = r3
            java.lang.Object r0 = r2.a(r0)
            if (r0 != r1) goto L49
            return r1
        L49:
            r1 = r5
            r5 = r0
            r0 = r4
        L4c:
            ads_mobile_sdk.u00 r5 = (ads_mobile_sdk.u00) r5
            ads_mobile_sdk.yh1$d r5 = r5.w()
            boolean r5 = r5.contains(r1)
            if (r5 == 0) goto L6b
            android.content.Context r5 = r0.c
            android.content.ContentResolver r5 = r5.getContentResolver()
            if (r5 != 0) goto L61
            goto L6b
        L61:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5)
            java.lang.String r0 = "advertising_id"
            java.lang.String r5 = android.provider.Settings.Secure.getString(r5, r0)
            return r5
        L6b:
            r5 = 0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.D(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x012b, code lost:
    
        if (r0 == r3) goto L49;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0088 A[Catch: all -> 0x00dd, TryCatch #0 {all -> 0x00dd, blocks: (B:28:0x0084, B:30:0x0088, B:32:0x00ce, B:35:0x00df, B:37:0x00e3, B:39:0x00e9, B:41:0x00ef), top: B:53:0x0084 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0131 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object E(kotlin.coroutines.Continuation r17) {
        /*
            Method dump skipped, instruction units count: 306
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.E(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object F(kotlin.coroutines.Continuation r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof ads_mobile_sdk.x10
            if (r0 == 0) goto L13
            r0 = r5
            ads_mobile_sdk.x10 r0 = (ads_mobile_sdk.x10) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.x10 r0 = new ads_mobile_sdk.x10
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            ads_mobile_sdk.s00 r1 = r0.b
            ads_mobile_sdk.g30 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r5)
            goto L4c
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r5)
            ads_mobile_sdk.s00 r5 = ads_mobile_sdk.s00.API_READ_FIREBASE_AD_EVENT_ID
            ads_mobile_sdk.p02 r2 = r4.B
            r0.a = r4
            r0.b = r5
            r0.e = r3
            java.lang.Object r0 = r2.a(r0)
            if (r0 != r1) goto L49
            return r1
        L49:
            r1 = r5
            r5 = r0
            r0 = r4
        L4c:
            ads_mobile_sdk.u00 r5 = (ads_mobile_sdk.u00) r5
            ads_mobile_sdk.yh1$d r5 = r5.w()
            boolean r5 = r5.contains(r1)
            if (r5 == 0) goto L67
            ads_mobile_sdk.ls0 r5 = r0.m
            java.lang.String r0 = "generateEventId"
            java.lang.Object r5 = r5.a(r0)
            if (r5 == 0) goto L67
            java.lang.String r5 = r5.toString()
            return r5
        L67:
            r5 = 0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.F(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x006d, code lost:
    
        if (r6 == r1) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object G(kotlin.coroutines.Continuation r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof ads_mobile_sdk.y10
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.y10 r0 = (ads_mobile_sdk.y10) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.y10 r0 = new ads_mobile_sdk.y10
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
            goto L70
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L34:
            ads_mobile_sdk.s00 r2 = r0.b
            ads_mobile_sdk.g30 r4 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L51
        L3c:
            kotlin.ResultKt.throwOnFailure(r6)
            ads_mobile_sdk.s00 r2 = ads_mobile_sdk.s00.API_READ_FIREBASE_APP_ID
            ads_mobile_sdk.p02 r6 = r5.B
            r0.a = r5
            r0.b = r2
            r0.e = r4
            java.lang.Object r6 = r6.a(r0)
            if (r6 != r1) goto L50
            goto L6f
        L50:
            r4 = r5
        L51:
            ads_mobile_sdk.u00 r6 = (ads_mobile_sdk.u00) r6
            ads_mobile_sdk.yh1$d r6 = r6.w()
            boolean r6 = r6.contains(r2)
            r2 = 0
            if (r6 == 0) goto L73
            ads_mobile_sdk.ls0 r6 = r4.m
            r0.a = r2
            r0.b = r2
            r0.e = r3
            r6.getClass()
            java.lang.Object r6 = ads_mobile_sdk.ls0.a(r6, r0)
            if (r6 != r1) goto L70
        L6f:
            return r1
        L70:
            java.lang.String r6 = (java.lang.String) r6
            return r6
        L73:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.G(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object H(kotlin.coroutines.Continuation r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof ads_mobile_sdk.z10
            if (r0 == 0) goto L13
            r0 = r5
            ads_mobile_sdk.z10 r0 = (ads_mobile_sdk.z10) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.z10 r0 = new ads_mobile_sdk.z10
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            ads_mobile_sdk.s00 r1 = r0.b
            ads_mobile_sdk.g30 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r5)
            goto L4c
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r5)
            ads_mobile_sdk.s00 r5 = ads_mobile_sdk.s00.API_READ_FIREBASE_APP_INSTANCE_ID
            ads_mobile_sdk.p02 r2 = r4.B
            r0.a = r4
            r0.b = r5
            r0.e = r3
            java.lang.Object r0 = r2.a(r0)
            if (r0 != r1) goto L49
            return r1
        L49:
            r1 = r5
            r5 = r0
            r0 = r4
        L4c:
            ads_mobile_sdk.u00 r5 = (ads_mobile_sdk.u00) r5
            ads_mobile_sdk.yh1$d r5 = r5.w()
            boolean r5 = r5.contains(r1)
            if (r5 == 0) goto L67
            ads_mobile_sdk.ls0 r5 = r0.m
            java.lang.String r0 = "getAppInstanceId"
            java.lang.Object r5 = r5.a(r0)
            if (r5 == 0) goto L67
            java.lang.String r5 = r5.toString()
            return r5
        L67:
            r5 = 0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.H(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object I(kotlin.coroutines.Continuation r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof ads_mobile_sdk.a20
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.a20 r0 = (ads_mobile_sdk.a20) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.a20 r0 = new ads_mobile_sdk.a20
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            ads_mobile_sdk.s00 r1 = r0.b
            ads_mobile_sdk.g30 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4c
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L35:
            kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.s00 r7 = ads_mobile_sdk.s00.API_PER_APP_ID_V1
            ads_mobile_sdk.p02 r2 = r6.B
            r0.a = r6
            r0.b = r7
            r0.e = r3
            java.lang.Object r0 = r2.a(r0)
            if (r0 != r1) goto L49
            return r1
        L49:
            r1 = r7
            r7 = r0
            r0 = r6
        L4c:
            ads_mobile_sdk.u00 r7 = (ads_mobile_sdk.u00) r7
            ads_mobile_sdk.yh1$d r7 = r7.w()
            boolean r7 = r7.contains(r1)
            r1 = 0
            if (r7 == 0) goto Lbc
            ads_mobile_sdk.fi2 r7 = r0.l
            r7.getClass()
            kotlin.Lazy r0 = r7.c     // Catch: java.lang.Exception -> Laa
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Exception -> Laa
            java.lang.String r2 = "getValue(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)     // Catch: java.lang.Exception -> Laa
            ads_mobile_sdk.hi2 r0 = (ads_mobile_sdk.hi2) r0     // Catch: java.lang.Exception -> Laa
            ads_mobile_sdk.ex0 r7 = r7.a     // Catch: java.lang.Exception -> Laa
            ads_mobile_sdk.x00 r7 = r7.r     // Catch: java.lang.Exception -> Laa
            r7.getClass()     // Catch: java.lang.Exception -> Laa
            java.lang.String r2 = "gads:signal:paid_v1_ttl"
            kotlin.time.Duration$Companion r3 = kotlin.time.Duration.Companion     // Catch: java.lang.Exception -> Laa
            kotlin.time.DurationUnit r3 = kotlin.time.DurationUnit.DAYS     // Catch: java.lang.Exception -> Laa
            r4 = 182(0xb6, float:2.55E-43)
            long r3 = kotlin.time.DurationKt.toDuration(r4, r3)     // Catch: java.lang.Exception -> Laa
            long r3 = kotlin.time.Duration.m2881getInWholeMillisecondsimpl(r3)     // Catch: java.lang.Exception -> Laa
            java.lang.String r5 = "key"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r5)     // Catch: java.lang.Exception -> Laa
            java.lang.Long r3 = java.lang.Long.valueOf(r3)     // Catch: java.lang.Exception -> Laa
            ads_mobile_sdk.rr r4 = ads_mobile_sdk.yr.d     // Catch: java.lang.Exception -> Laa
            java.lang.Object r7 = r7.a(r2, r3, r4)     // Catch: java.lang.Exception -> Laa
            java.lang.Number r7 = (java.lang.Number) r7     // Catch: java.lang.Exception -> Laa
            long r2 = r7.longValue()     // Catch: java.lang.Exception -> Laa
            ads_mobile_sdk.ii2 r0 = (ads_mobile_sdk.ii2) r0     // Catch: java.lang.Exception -> Laa
            r0.getClass()     // Catch: java.lang.Exception -> Laa
            java.lang.Class<ads_mobile_sdk.ii2> r7 = ads_mobile_sdk.ii2.class
            monitor-enter(r7)     // Catch: java.lang.Exception -> Laa
            ads_mobile_sdk.u41 r0 = r0.a(r2)     // Catch: java.lang.Throwable -> Lac
            monitor-exit(r7)     // Catch: java.lang.Throwable -> Lac
            ads_mobile_sdk.q01 r7 = new ads_mobile_sdk.q01     // Catch: java.lang.Exception -> Laa
            r7.<init>(r0)     // Catch: java.lang.Exception -> Laa
            return r7
        Laa:
            r7 = move-exception
            goto Laf
        Lac:
            r0 = move-exception
            monitor-exit(r7)     // Catch: java.lang.Throwable -> Lac
            throw r0     // Catch: java.lang.Exception -> Laa
        Laf:
            java.lang.String r0 = "Exception while getting PAIDV1"
            r2 = 4
            ads_mobile_sdk.xs3.a(r0, r7, r2)
            ads_mobile_sdk.j01 r0 = new ads_mobile_sdk.j01
            r2 = 6
            r0.<init>(r7, r1, r1, r2)
            return r0
        Lbc:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.I(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object J(kotlin.coroutines.Continuation r8) {
        /*
            Method dump skipped, instruction units count: 251
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.J(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:105:0x01fa A[Catch: all -> 0x0206, TryCatch #4 {all -> 0x0206, blocks: (B:103:0x01f3, B:105:0x01fa, B:107:0x01fe, B:109:0x0202, B:112:0x0209, B:114:0x020d, B:116:0x0211, B:118:0x0215, B:119:0x0216, B:120:0x021b, B:121:0x021c, B:122:0x0223, B:123:0x0224, B:124:0x022b, B:125:0x022c), top: B:136:0x01f3 }] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x022c A[Catch: all -> 0x0206, TRY_LEAVE, TryCatch #4 {all -> 0x0206, blocks: (B:103:0x01f3, B:105:0x01fa, B:107:0x01fe, B:109:0x0202, B:112:0x0209, B:114:0x020d, B:116:0x0211, B:118:0x0215, B:119:0x0216, B:120:0x021b, B:121:0x021c, B:122:0x0223, B:123:0x0224, B:124:0x022b, B:125:0x022c), top: B:136:0x01f3 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01d8  */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v17 */
    /* JADX WARN: Type inference failed for: r12v18 */
    /* JADX WARN: Type inference failed for: r12v19 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v17 */
    /* JADX WARN: Type inference failed for: r14v4, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v2, types: [ads_mobile_sdk.g30, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v3, types: [ads_mobile_sdk.g30] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object K(kotlin.coroutines.Continuation r17) {
        /*
            Method dump skipped, instruction units count: 563
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.K(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object L(kotlin.coroutines.Continuation r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof ads_mobile_sdk.m20
            if (r0 == 0) goto L13
            r0 = r5
            ads_mobile_sdk.m20 r0 = (ads_mobile_sdk.m20) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.m20 r0 = new ads_mobile_sdk.m20
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            ads_mobile_sdk.s00 r1 = r0.b
            ads_mobile_sdk.g30 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r5)
            goto L4c
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r5)
            ads_mobile_sdk.s00 r5 = ads_mobile_sdk.s00.API_READ_AMAZON_FIRE_AD_ID
            ads_mobile_sdk.p02 r2 = r4.B
            r0.a = r4
            r0.b = r5
            r0.e = r3
            java.lang.Object r0 = r2.a(r0)
            if (r0 != r1) goto L49
            return r1
        L49:
            r1 = r5
            r5 = r0
            r0 = r4
        L4c:
            ads_mobile_sdk.u00 r5 = (ads_mobile_sdk.u00) r5
            ads_mobile_sdk.yh1$d r5 = r5.w()
            boolean r5 = r5.contains(r1)
            if (r5 == 0) goto L74
            android.content.Context r5 = r0.c
            android.content.ContentResolver r5 = r5.getContentResolver()
            if (r5 != 0) goto L61
            goto L74
        L61:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5)
            java.lang.String r0 = "limit_ad_tracking"
            r1 = 0
            int r5 = android.provider.Settings.Secure.getInt(r5, r0, r1)
            if (r5 != r3) goto L6e
            goto L6f
        L6e:
            r3 = r1
        L6f:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            return r5
        L74:
            r5 = 0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.L(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00e0, code lost:
    
        if (r4.N(r0) == r1) goto L45;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object M(kotlin.coroutines.Continuation r11) {
        /*
            Method dump skipped, instruction units count: 230
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.M(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0069, code lost:
    
        if (r7.a(r2, r0) == r1) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object N(kotlin.coroutines.Continuation r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof ads_mobile_sdk.t20
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.t20 r0 = (ads_mobile_sdk.t20) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.t20 r0 = new ads_mobile_sdk.t20
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r7)
            goto L6c
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L35:
            kotlinx.coroutines.sync.Mutex r2 = r0.b
            ads_mobile_sdk.g30 r4 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L50
        L3d:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.sync.Mutex r2 = r6.z
            r0.a = r6
            r0.b = r2
            r0.e = r4
            java.lang.Object r7 = r2.lock(r5, r0)
            if (r7 != r1) goto L4f
            goto L6b
        L4f:
            r4 = r6
        L50:
            com.google.gson.JsonObject r7 = ads_mobile_sdk.g30.R     // Catch: java.lang.Throwable -> L6f
            r4.A = r7     // Catch: java.lang.Throwable -> L6f
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L6f
            r2.unlock(r5)
            ads_mobile_sdk.p02 r7 = r4.B
            ads_mobile_sdk.u00 r2 = r4.i()
            r0.a = r5
            r0.b = r5
            r0.e = r3
            java.lang.Object r7 = r7.a(r2, r0)
            if (r7 != r1) goto L6c
        L6b:
            return r1
        L6c:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L6f:
            r7 = move-exception
            r2.unlock(r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.N(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x01b1, code lost:
    
        if (r14.a((ads_mobile_sdk.u00) r2, r0) == r1) goto L29;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object O(kotlin.coroutines.Continuation r14) {
        /*
            Method dump skipped, instruction units count: 444
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.O(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
        x00 x00Var = this.h.r;
        x00Var.getClass();
        List defaultValue = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"IABTCF_AddtlConsent", "IABConsent_CMPPresent", "IABTCF_CmpSdkID", "IABConsent_ConsentString", "IABTCF_gdprApplies", "IABGPP_HDR_GppString", "IABGPP_GppSID", "gad_has_consent_for_cookies", "IABConsent_ParsedPurposeConsents", "personalized_ad_status", "IABTCF_PolicyVersion", "IABUSPrivacy_String", "IABTCF_PurposeConsents", "gad_rdp", "IABConsent_SubjectToGDPR", AndroidTcfDataSource.TCF_TCSTRING_KEY, "IABConsent_ParsedVendorConsents", "UMP_eids"});
        Intrinsics.checkNotNullParameter("gads:sp:consent_keys_list", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        if (CollectionsKt___CollectionsKt.contains((List) x00Var.a("gads:sp:consent_keys_list", defaultValue, yr.g), str)) {
            CoroutineScope coroutineScope = this.d;
            n20 block = new n20(this, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
    }

    @Override // ads_mobile_sdk.nc1
    public final Object u(Continuation continuation) {
        return n(this, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0071 A[Catch: JsonSyntaxException -> 0x002e, TryCatch #1 {JsonSyntaxException -> 0x002e, blocks: (B:12:0x002a, B:34:0x0087, B:29:0x006b, B:37:0x0090, B:31:0x0071), top: B:44:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x0084 -> B:34:0x0087). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object v(kotlin.coroutines.Continuation r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof ads_mobile_sdk.c10
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.c10 r0 = (ads_mobile_sdk.c10) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.c10 r0 = new ads_mobile_sdk.c10
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L38
            if (r2 != r4) goto L30
            java.util.Iterator r2 = r0.b
            ads_mobile_sdk.g30 r5 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: com.google.gson.JsonSyntaxException -> L2e
            goto L87
        L2e:
            r7 = move-exception
            goto L97
        L30:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L38:
            kotlin.ResultKt.throwOnFailure(r7)
            com.google.gson.Gson r7 = new com.google.gson.Gson     // Catch: com.google.gson.JsonSyntaxException -> L63
            r7.<init>()     // Catch: com.google.gson.JsonSyntaxException -> L63
            ads_mobile_sdk.ex0 r2 = r6.h     // Catch: com.google.gson.JsonSyntaxException -> L63
            ads_mobile_sdk.x00 r2 = r2.r     // Catch: com.google.gson.JsonSyntaxException -> L63
            java.lang.String r2 = r2.a()     // Catch: com.google.gson.JsonSyntaxException -> L63
            java.lang.Class<com.google.gson.JsonArray> r5 = com.google.gson.JsonArray.class
            java.lang.Object r7 = r7.fromJson(r2, r5)     // Catch: com.google.gson.JsonSyntaxException -> L63
            com.google.gson.JsonArray r7 = (com.google.gson.JsonArray) r7     // Catch: com.google.gson.JsonSyntaxException -> L63
            kotlin.jvm.internal.Intrinsics.checkNotNull(r7)     // Catch: com.google.gson.JsonSyntaxException -> L63
            boolean r2 = r7 instanceof java.util.Collection     // Catch: com.google.gson.JsonSyntaxException -> L63
            if (r2 == 0) goto L65
            r2 = r7
            java.util.Collection r2 = (java.util.Collection) r2     // Catch: com.google.gson.JsonSyntaxException -> L63
            boolean r2 = r2.isEmpty()     // Catch: com.google.gson.JsonSyntaxException -> L63
            if (r2 == 0) goto L65
            r5 = r6
        L61:
            r7 = r3
            goto L90
        L63:
            r7 = move-exception
            goto L96
        L65:
            java.util.Iterator r7 = r7.iterator()     // Catch: com.google.gson.JsonSyntaxException -> L63
            r5 = r6
            r2 = r7
        L6b:
            boolean r7 = r2.hasNext()     // Catch: com.google.gson.JsonSyntaxException -> L2e
            if (r7 == 0) goto L61
            java.lang.Object r7 = r2.next()     // Catch: com.google.gson.JsonSyntaxException -> L2e
            com.google.gson.JsonElement r7 = (com.google.gson.JsonElement) r7     // Catch: com.google.gson.JsonSyntaxException -> L2e
            kotlin.jvm.internal.Intrinsics.checkNotNull(r7)     // Catch: com.google.gson.JsonSyntaxException -> L2e
            r0.a = r5     // Catch: com.google.gson.JsonSyntaxException -> L2e
            r0.b = r2     // Catch: com.google.gson.JsonSyntaxException -> L2e
            r0.e = r4     // Catch: com.google.gson.JsonSyntaxException -> L2e
            java.lang.Object r7 = r5.a(r7, r0)     // Catch: com.google.gson.JsonSyntaxException -> L2e
            if (r7 != r1) goto L87
            return r1
        L87:
            java.lang.Boolean r7 = (java.lang.Boolean) r7     // Catch: com.google.gson.JsonSyntaxException -> L2e
            boolean r7 = r7.booleanValue()     // Catch: com.google.gson.JsonSyntaxException -> L2e
            if (r7 == 0) goto L6b
            r7 = r4
        L90:
            r7 = r7 ^ r4
            java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r7)     // Catch: com.google.gson.JsonSyntaxException -> L2e
            return r7
        L96:
            r5 = r6
        L97:
            ads_mobile_sdk.ur3 r0 = r5.f
            ads_mobile_sdk.as3 r0 = (ads_mobile_sdk.as3) r0
            java.lang.String r1 = "JSON fallback consent keys set parsing failure"
            r0.a(r1, r7)
            java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.v(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object w(kotlin.coroutines.Continuation r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof ads_mobile_sdk.f10
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.f10 r0 = (ads_mobile_sdk.f10) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.f10 r0 = new ads_mobile_sdk.f10
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            ads_mobile_sdk.s00 r1 = r0.b
            ads_mobile_sdk.g30 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L4c
        L2d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L35:
            kotlin.ResultKt.throwOnFailure(r8)
            ads_mobile_sdk.s00 r8 = ads_mobile_sdk.s00.API_CLEAR_PERSISTENT_CACHE
            ads_mobile_sdk.p02 r2 = r7.B
            r0.a = r7
            r0.b = r8
            r0.e = r3
            java.lang.Object r0 = r2.a(r0)
            if (r0 != r1) goto L49
            return r1
        L49:
            r1 = r8
            r8 = r0
            r0 = r7
        L4c:
            ads_mobile_sdk.u00 r8 = (ads_mobile_sdk.u00) r8
            ads_mobile_sdk.yh1$d r8 = r8.w()
            boolean r8 = r8.contains(r1)
            if (r8 == 0) goto L7d
            kotlinx.coroutines.CoroutineScope r1 = r0.d
            ads_mobile_sdk.g10 r8 = new ads_mobile_sdk.g10
            r2 = 0
            r8.<init>(r0, r2)
            r0 = r2
            kotlin.coroutines.EmptyCoroutineContext r2 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE
            java.lang.String r3 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r3)
            java.lang.String r3 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r3)
            java.lang.String r3 = "block"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r3)
            ads_mobile_sdk.ws3 r4 = new ads_mobile_sdk.ws3
            r4.<init>(r8, r0)
            r5 = 2
            r6 = 0
            r3 = 0
            kotlinx.coroutines.BuildersKt.launch$default(r1, r2, r3, r4, r5, r6)
        L7d:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.w(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x006d, code lost:
    
        if (ads_mobile_sdk.dq0.a(r6, r0) == r1) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object x(kotlin.coroutines.Continuation r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof ads_mobile_sdk.h10
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.h10 r0 = (ads_mobile_sdk.h10) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.h10 r0 = new ads_mobile_sdk.h10
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
            goto L70
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L34:
            ads_mobile_sdk.s00 r2 = r0.b
            ads_mobile_sdk.g30 r4 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L51
        L3c:
            kotlin.ResultKt.throwOnFailure(r6)
            ads_mobile_sdk.s00 r2 = ads_mobile_sdk.s00.API_CLEAR_EOID
            ads_mobile_sdk.p02 r6 = r5.B
            r0.a = r5
            r0.b = r2
            r0.e = r4
            java.lang.Object r6 = r6.a(r0)
            if (r6 != r1) goto L50
            goto L6f
        L50:
            r4 = r5
        L51:
            ads_mobile_sdk.u00 r6 = (ads_mobile_sdk.u00) r6
            ads_mobile_sdk.yh1$d r6 = r6.w()
            boolean r6 = r6.contains(r2)
            if (r6 == 0) goto L70
            ads_mobile_sdk.dq0 r6 = r4.w
            r2 = 0
            r0.a = r2
            r0.b = r2
            r0.e = r3
            r6.getClass()
            java.lang.Object r6 = ads_mobile_sdk.dq0.a(r6, r0)
            if (r6 != r1) goto L70
        L6f:
            return r1
        L70:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.x(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object y(kotlin.coroutines.Continuation r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof ads_mobile_sdk.i10
            if (r0 == 0) goto L13
            r0 = r5
            ads_mobile_sdk.i10 r0 = (ads_mobile_sdk.i10) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.i10 r0 = new ads_mobile_sdk.i10
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            ads_mobile_sdk.s00 r1 = r0.b
            ads_mobile_sdk.g30 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r5)
            goto L4c
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r5)
            ads_mobile_sdk.s00 r5 = ads_mobile_sdk.s00.API_CLEAR_PER_APP_ID_V1
            ads_mobile_sdk.p02 r2 = r4.B
            r0.a = r4
            r0.b = r5
            r0.e = r3
            java.lang.Object r0 = r2.a(r0)
            if (r0 != r1) goto L49
            return r1
        L49:
            r1 = r5
            r5 = r0
            r0 = r4
        L4c:
            ads_mobile_sdk.u00 r5 = (ads_mobile_sdk.u00) r5
            ads_mobile_sdk.yh1$d r5 = r5.w()
            boolean r5 = r5.contains(r1)
            if (r5 == 0) goto L5d
            ads_mobile_sdk.fi2 r5 = r0.l
            r5.a()
        L5d:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.y(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object z(kotlin.coroutines.Continuation r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof ads_mobile_sdk.j10
            if (r0 == 0) goto L13
            r0 = r5
            ads_mobile_sdk.j10 r0 = (ads_mobile_sdk.j10) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.j10 r0 = new ads_mobile_sdk.j10
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            ads_mobile_sdk.s00 r1 = r0.b
            ads_mobile_sdk.g30 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r5)
            goto L4c
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r5)
            ads_mobile_sdk.s00 r5 = ads_mobile_sdk.s00.API_CLEAR_PER_APP_ID_V2
            ads_mobile_sdk.p02 r2 = r4.B
            r0.a = r4
            r0.b = r5
            r0.e = r3
            java.lang.Object r0 = r2.a(r0)
            if (r0 != r1) goto L49
            return r1
        L49:
            r1 = r5
            r5 = r0
            r0 = r4
        L4c:
            ads_mobile_sdk.u00 r5 = (ads_mobile_sdk.u00) r5
            ads_mobile_sdk.yh1$d r5 = r5.w()
            boolean r5 = r5.contains(r1)
            if (r5 == 0) goto L5d
            ads_mobile_sdk.fi2 r5 = r0.l
            r5.b()
        L5d:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.z(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0288  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02cc A[PHI: r1
      0x02cc: PHI (r1v36 ads_mobile_sdk.g30) = (r1v33 ads_mobile_sdk.g30), (r1v37 ads_mobile_sdk.g30) binds: [B:142:0x02cb, B:138:0x02bd] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:217:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:219:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:220:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:223:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:224:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.g30 r16, boolean r17, boolean r18, kotlin.coroutines.Continuation r19) {
        /*
            Method dump skipped, instruction units count: 902
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.a(ads_mobile_sdk.g30, boolean, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final String g() {
        this.p.getClass();
        return String.valueOf(Random.Default.nextInt(Api.BaseClientBuilder.API_PRIORITY_OTHER));
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0070, code lost:
    
        if (r7 == r1) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object g(ads_mobile_sdk.g30 r6, kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof ads_mobile_sdk.w10
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.w10 r0 = (ads_mobile_sdk.w10) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.w10 r0 = new ads_mobile_sdk.w10
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r7)
            goto L73
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            ads_mobile_sdk.s00 r6 = r0.b
            ads_mobile_sdk.g30 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L54
        L3c:
            kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.s00 r7 = ads_mobile_sdk.s00.API_READ_EOID
            ads_mobile_sdk.p02 r2 = r6.B
            r0.a = r6
            r0.b = r7
            r0.e = r4
            java.lang.Object r2 = r2.a(r0)
            if (r2 != r1) goto L50
            goto L72
        L50:
            r5 = r2
            r2 = r6
            r6 = r7
            r7 = r5
        L54:
            ads_mobile_sdk.u00 r7 = (ads_mobile_sdk.u00) r7
            ads_mobile_sdk.yh1$d r7 = r7.w()
            boolean r6 = r7.contains(r6)
            r7 = 0
            if (r6 == 0) goto L75
            ads_mobile_sdk.dq0 r6 = r2.w
            r0.a = r7
            r0.b = r7
            r0.e = r3
            r6.getClass()
            java.lang.Object r7 = ads_mobile_sdk.dq0.c(r6, r0)
            if (r7 != r1) goto L73
        L72:
            return r1
        L73:
            ads_mobile_sdk.xp0 r7 = (ads_mobile_sdk.xp0) r7
        L75:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.g(ads_mobile_sdk.g30, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a2, code lost:
    
        if (r13.join(r0) == r1) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object b(ads_mobile_sdk.g30 r12, boolean r13, boolean r14, kotlin.coroutines.Continuation r15) {
        /*
            boolean r0 = r15 instanceof ads_mobile_sdk.p20
            if (r0 == 0) goto L13
            r0 = r15
            ads_mobile_sdk.p20 r0 = (ads_mobile_sdk.p20) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            ads_mobile_sdk.p20 r0 = new ads_mobile_sdk.p20
            r0.<init>(r12, r15)
        L18:
            java.lang.Object r15 = r0.e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.g
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L44
            if (r2 == r4) goto L36
            if (r2 != r3) goto L2e
            kotlin.ResultKt.throwOnFailure(r15)
            goto La5
        L2e:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L36:
            boolean r14 = r0.d
            boolean r13 = r0.c
            kotlinx.coroutines.sync.Mutex r12 = r0.b
            ads_mobile_sdk.g30 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r15)
            r15 = r12
            r12 = r2
            goto L5a
        L44:
            kotlin.ResultKt.throwOnFailure(r15)
            kotlinx.coroutines.sync.Mutex r15 = r12.G
            r0.a = r12
            r0.b = r15
            r0.c = r13
            r0.d = r14
            r0.g = r4
            java.lang.Object r2 = r15.lock(r5, r0)
            if (r2 != r1) goto L5a
            goto La4
        L5a:
            kotlinx.coroutines.Job r2 = r12.H     // Catch: java.lang.Throwable -> L62
            if (r2 == 0) goto L65
            kotlinx.coroutines.Job.DefaultImpls.cancel$default(r2, r5, r4, r5)     // Catch: java.lang.Throwable -> L62
            goto L65
        L62:
            r0 = move-exception
            r12 = r0
            goto La8
        L65:
            boolean r2 = r12.I     // Catch: java.lang.Throwable -> L62
            if (r2 != 0) goto L6d
            if (r13 == 0) goto L6c
            goto L6d
        L6c:
            r4 = 0
        L6d:
            r12.I = r4     // Catch: java.lang.Throwable -> L62
            kotlinx.coroutines.CoroutineScope r6 = r12.d     // Catch: java.lang.Throwable -> L62
            ads_mobile_sdk.q20 r13 = new ads_mobile_sdk.q20     // Catch: java.lang.Throwable -> L62
            r13.<init>(r12, r4, r14, r5)     // Catch: java.lang.Throwable -> L62
            kotlin.coroutines.EmptyCoroutineContext r7 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE     // Catch: java.lang.Throwable -> L62
            java.lang.String r14 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r14)     // Catch: java.lang.Throwable -> L62
            java.lang.String r14 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r14)     // Catch: java.lang.Throwable -> L62
            java.lang.String r14 = "block"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r14)     // Catch: java.lang.Throwable -> L62
            ads_mobile_sdk.ws3 r9 = new ads_mobile_sdk.ws3     // Catch: java.lang.Throwable -> L62
            r9.<init>(r13, r5)     // Catch: java.lang.Throwable -> L62
            r10 = 2
            r11 = 0
            r8 = 0
            kotlinx.coroutines.Job r13 = kotlinx.coroutines.BuildersKt.launch$default(r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L62
            r12.H = r13     // Catch: java.lang.Throwable -> L62
            r15.unlock(r5)
            r0.a = r5
            r0.b = r5
            r0.g = r3
            java.lang.Object r12 = r13.join(r0)
            if (r12 != r1) goto La5
        La4:
            return r1
        La5:
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        La8:
            r15.unlock(r5)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.b(ads_mobile_sdk.g30, boolean, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final u00 i() {
        t00 builder = u00.z();
        Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
        Intrinsics.checkNotNullParameter(builder, "builder");
        yh1.d dVarH = builder.h();
        Intrinsics.checkNotNullExpressionValue(dVarH, "getAllowedApisList(...)");
        lo0 lo0Var = new lo0(dVarH);
        x00 x00Var = this.h.r;
        x00Var.getClass();
        t00 builder2 = u00.z();
        Intrinsics.checkNotNullExpressionValue(builder2, "newBuilder(...)");
        Intrinsics.checkNotNullParameter(builder2, "builder");
        w00 w00Var = new w00(builder2);
        lo0 lo0VarB = w00Var.b();
        s00 s00Var = s00.API_READ_SHARED_PREFERENCES_CONSENT_DATA;
        Intrinsics.checkNotNullParameter(lo0VarB, "<this>");
        lo0 lo0VarA = b10.a(s00Var, C3522b4.i.X, builder2, s00Var, w00Var);
        s00 s00Var2 = s00.API_READ_FLAG_VALUES;
        Intrinsics.checkNotNullParameter(lo0VarA, "<this>");
        lo0 lo0VarA2 = b10.a(s00Var2, C3522b4.i.X, builder2, s00Var2, w00Var);
        s00 s00Var3 = s00.API_WRITE_FLAG_VALUES;
        Intrinsics.checkNotNullParameter(lo0VarA2, "<this>");
        lo0 lo0VarA3 = b10.a(s00Var3, C3522b4.i.X, builder2, s00Var3, w00Var);
        s00 s00Var4 = s00.API_READ_CLD_RESPONSE;
        Intrinsics.checkNotNullParameter(lo0VarA3, "<this>");
        lo0 lo0VarA4 = b10.a(s00Var4, C3522b4.i.X, builder2, s00Var4, w00Var);
        s00 s00Var5 = s00.API_CLEAR_WEBVIEW_COOKIE;
        Intrinsics.checkNotNullParameter(lo0VarA4, "<this>");
        lo0 lo0VarA5 = b10.a(s00Var5, C3522b4.i.X, builder2, s00Var5, w00Var);
        s00 s00Var6 = s00.API_READ_ANDROID_ID;
        Intrinsics.checkNotNullParameter(lo0VarA5, "<this>");
        lo0 lo0VarA6 = b10.a(s00Var6, C3522b4.i.X, builder2, s00Var6, w00Var);
        s00 s00Var7 = s00.API_READ_ADVERTISING_ID;
        Intrinsics.checkNotNullParameter(lo0VarA6, "<this>");
        lo0 lo0VarA7 = b10.a(s00Var7, C3522b4.i.X, builder2, s00Var7, w00Var);
        s00 s00Var8 = s00.API_READ_APP_SET_ID;
        Intrinsics.checkNotNullParameter(lo0VarA7, "<this>");
        lo0 lo0VarA8 = b10.a(s00Var8, C3522b4.i.X, builder2, s00Var8, w00Var);
        s00 s00Var9 = s00.API_CLEAR_PER_APP_ID_V1;
        Intrinsics.checkNotNullParameter(lo0VarA8, "<this>");
        lo0 lo0VarA9 = b10.a(s00Var9, C3522b4.i.X, builder2, s00Var9, w00Var);
        s00 s00Var10 = s00.API_CLEAR_PER_APP_ID_V2;
        Intrinsics.checkNotNullParameter(lo0VarA9, "<this>");
        lo0 lo0VarA10 = b10.a(s00Var10, C3522b4.i.X, builder2, s00Var10, w00Var);
        s00 s00Var11 = s00.API_READ_FIREBASE_APP_ID;
        Intrinsics.checkNotNullParameter(lo0VarA10, "<this>");
        lo0 lo0VarA11 = b10.a(s00Var11, C3522b4.i.X, builder2, s00Var11, w00Var);
        s00 value = s00.API_READ_FIREBASE_APP_INSTANCE_ID;
        Intrinsics.checkNotNullParameter(lo0VarA11, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        builder2.a(value);
        lo0 lo0VarB2 = w00Var.b();
        s00 s00Var12 = s00.API_READ_FIREBASE_AD_EVENT_ID;
        Intrinsics.checkNotNullParameter(lo0VarB2, "<this>");
        lo0 lo0VarA12 = b10.a(s00Var12, C3522b4.i.X, builder2, s00Var12, w00Var);
        s00 value2 = s00.API_CLEAR_PERSISTENT_CACHE;
        Intrinsics.checkNotNullParameter(lo0VarA12, "<this>");
        Intrinsics.checkNotNullParameter(value2, "value");
        builder2.a(value2);
        Unit unit = Unit.INSTANCE;
        yh1.c defaultValue = w00Var.a().x();
        Intrinsics.checkNotNullExpressionValue(defaultValue, "getAllowedApisValueList(...)");
        Intrinsics.checkNotNullParameter("gads:consent_allowlist_default:string", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        List list = (List) x00Var.a("gads:consent_allowlist_default:string", defaultValue, yr.h);
        ArrayList values = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            s00 s00VarA = s00.a(((Number) it.next()).intValue());
            if (s00VarA != null) {
                values.add(s00VarA);
            }
        }
        Intrinsics.checkNotNullParameter(lo0Var, "<this>");
        Intrinsics.checkNotNullParameter(values, "values");
        builder.a(values);
        vz0 vz0VarB = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (u00) vz0VarB;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x006d, code lost:
    
        if (r7 == r1) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object i(ads_mobile_sdk.g30 r6, kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof ads_mobile_sdk.d20
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.d20 r0 = (ads_mobile_sdk.d20) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.d20 r0 = new ads_mobile_sdk.d20
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r7)
            goto L70
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            ads_mobile_sdk.s00 r6 = r0.b
            ads_mobile_sdk.g30 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L54
        L3c:
            kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.s00 r7 = ads_mobile_sdk.s00.API_READ_SESSION_ID
            ads_mobile_sdk.p02 r2 = r6.B
            r0.a = r6
            r0.b = r7
            r0.e = r4
            java.lang.Object r2 = r2.a(r0)
            if (r2 != r1) goto L50
            goto L6f
        L50:
            r5 = r2
            r2 = r6
            r6 = r7
            r7 = r5
        L54:
            ads_mobile_sdk.u00 r7 = (ads_mobile_sdk.u00) r7
            ads_mobile_sdk.yh1$d r7 = r7.w()
            boolean r6 = r7.contains(r6)
            r7 = 0
            if (r6 == 0) goto L72
            ads_mobile_sdk.p02 r6 = r2.F
            r0.a = r7
            r0.b = r7
            r0.e = r3
            java.lang.Object r7 = r6.a(r0)
            if (r7 != r1) goto L70
        L6f:
            return r1
        L70:
            java.lang.String r7 = (java.lang.String) r7
        L72:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.i(ads_mobile_sdk.g30, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0073, code lost:
    
        if (r13.A(r0) != r1) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0093, code lost:
    
        if (b(r13, true, false, r0) != r1) goto L41;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(ads_mobile_sdk.u00 r13, kotlin.coroutines.Continuation r14) {
        /*
            r12 = this;
            boolean r0 = r14 instanceof ads_mobile_sdk.y20
            if (r0 == 0) goto L13
            r0 = r14
            ads_mobile_sdk.y20 r0 = (ads_mobile_sdk.y20) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.y20 r0 = new ads_mobile_sdk.y20
            r0.<init>(r12, r14)
        L18:
            java.lang.Object r14 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 0
            r4 = 4
            r5 = 3
            r6 = 2
            r7 = 1
            if (r2 == 0) goto L4b
            if (r2 == r7) goto L45
            if (r2 == r6) goto L41
            if (r2 == r5) goto L3b
            if (r2 != r4) goto L33
            kotlin.ResultKt.throwOnFailure(r14)
            goto L76
        L33:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r14)
            throw r13
        L3b:
            ads_mobile_sdk.g30 r13 = r0.a
            kotlin.ResultKt.throwOnFailure(r14)
            goto L6b
        L41:
            kotlin.ResultKt.throwOnFailure(r14)
            goto L96
        L45:
            ads_mobile_sdk.g30 r13 = r0.a
            kotlin.ResultKt.throwOnFailure(r14)
            goto L87
        L4b:
            kotlin.ResultKt.throwOnFailure(r14)
            ads_mobile_sdk.ex0 r14 = r12.h
            boolean r2 = r14.w
            if (r2 != 0) goto L79
            double r8 = r14.x
            r10 = 0
            int r14 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r14 <= 0) goto L5d
            goto L79
        L5d:
            ads_mobile_sdk.p02 r14 = r12.B
            r0.a = r12
            r0.d = r5
            java.lang.Object r13 = r14.a(r13, r0)
            if (r13 != r1) goto L6a
            goto L95
        L6a:
            r13 = r12
        L6b:
            r0.a = r3
            r0.d = r4
            java.lang.Object r13 = r13.A(r0)
            if (r13 != r1) goto L76
            goto L95
        L76:
            kotlin.Unit r13 = kotlin.Unit.INSTANCE
            return r13
        L79:
            ads_mobile_sdk.p02 r14 = r12.B
            r0.a = r12
            r0.d = r7
            java.lang.Object r13 = r14.a(r13, r0)
            if (r13 != r1) goto L86
            goto L95
        L86:
            r13 = r12
        L87:
            r0.a = r3
            r0.d = r6
            r13.getClass()
            r14 = 0
            java.lang.Object r13 = b(r13, r7, r14, r0)
            if (r13 != r1) goto L96
        L95:
            return r1
        L96:
            kotlin.Unit r13 = kotlin.Unit.INSTANCE
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.b(ads_mobile_sdk.u00, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(java.lang.String r5, kotlin.coroutines.Continuation r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof ads_mobile_sdk.z20
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.z20 r0 = (ads_mobile_sdk.z20) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.z20 r0 = new ads_mobile_sdk.z20
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            ads_mobile_sdk.s00 r5 = r0.c
            java.lang.String r1 = r0.b
            ads_mobile_sdk.g30 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L51
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.ResultKt.throwOnFailure(r6)
            ads_mobile_sdk.s00 r6 = ads_mobile_sdk.s00.API_SET_WEBVIEW_COOKIE
            ads_mobile_sdk.p02 r2 = r4.B
            r0.a = r4
            r0.b = r5
            r0.c = r6
            r0.f = r3
            java.lang.Object r0 = r2.a(r0)
            if (r0 != r1) goto L4d
            return r1
        L4d:
            r1 = r5
            r5 = r6
            r6 = r0
            r0 = r4
        L51:
            ads_mobile_sdk.u00 r6 = (ads_mobile_sdk.u00) r6
            ads_mobile_sdk.yh1$d r6 = r6.w()
            boolean r5 = r6.contains(r5)
            if (r5 == 0) goto L6a
            android.webkit.CookieManager r5 = r0.D
            if (r5 == 0) goto L6a
            ads_mobile_sdk.ex0 r6 = r0.h
            java.lang.String r6 = r6.Q0()
            r5.setCookie(r6, r1)
        L6a:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.b(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x025a A[Catch: all -> 0x0266, TryCatch #2 {all -> 0x0266, blocks: (B:123:0x0253, B:125:0x025a, B:127:0x025e, B:129:0x0262, B:132:0x0269, B:134:0x026d, B:136:0x0271, B:138:0x0275, B:139:0x0276, B:140:0x027b, B:141:0x027c, B:142:0x0283, B:143:0x0284, B:144:0x028b, B:145:0x028c), top: B:234:0x0253 }] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x028c A[Catch: all -> 0x0266, TRY_LEAVE, TryCatch #2 {all -> 0x0266, blocks: (B:123:0x0253, B:125:0x025a, B:127:0x025e, B:129:0x0262, B:132:0x0269, B:134:0x026d, B:136:0x0271, B:138:0x0275, B:139:0x0276, B:140:0x027b, B:141:0x027c, B:142:0x0283, B:143:0x0284, B:144:0x028b, B:145:0x028c), top: B:234:0x0253 }] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x02c3 A[Catch: all -> 0x035b, TRY_LEAVE, TryCatch #20 {all -> 0x035b, blocks: (B:183:0x033c, B:155:0x02bd, B:157:0x02c3, B:164:0x02e1, B:165:0x02ea, B:166:0x02f6, B:193:0x035f), top: B:265:0x02bd, inners: #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x02e1 A[Catch: all -> 0x035b, TRY_ENTER, TRY_LEAVE, TryCatch #20 {all -> 0x035b, blocks: (B:183:0x033c, B:155:0x02bd, B:157:0x02c3, B:164:0x02e1, B:165:0x02ea, B:166:0x02f6, B:193:0x035f), top: B:265:0x02bd, inners: #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x034d  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x038a A[Catch: all -> 0x0396, TryCatch #16 {all -> 0x0396, blocks: (B:203:0x0383, B:205:0x038a, B:207:0x038e, B:209:0x0392, B:212:0x0399, B:214:0x039d, B:216:0x03a1, B:218:0x03a5, B:219:0x03a6, B:220:0x03ab, B:221:0x03ac, B:222:0x03b3, B:223:0x03b4, B:224:0x03bb, B:225:0x03bc), top: B:259:0x0383 }] */
    /* JADX WARN: Removed duplicated region for block: B:225:0x03bc A[Catch: all -> 0x0396, TRY_LEAVE, TryCatch #16 {all -> 0x0396, blocks: (B:203:0x0383, B:205:0x038a, B:207:0x038e, B:209:0x0392, B:212:0x0399, B:214:0x039d, B:216:0x03a1, B:218:0x03a5, B:219:0x03a6, B:220:0x03ab, B:221:0x03ac, B:222:0x03b3, B:223:0x03b4, B:224:0x03bb, B:225:0x03bc), top: B:259:0x0383 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0192 A[Catch: all -> 0x0229, TRY_LEAVE, TryCatch #4 {all -> 0x0229, blocks: (B:103:0x020a, B:75:0x018c, B:77:0x0192, B:84:0x01af, B:85:0x01b8, B:86:0x01c4, B:113:0x022d), top: B:238:0x018c, inners: #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01af A[Catch: all -> 0x0229, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x0229, blocks: (B:103:0x020a, B:75:0x018c, B:77:0x0192, B:84:0x01af, B:85:0x01b8, B:86:0x01c4, B:113:0x022d), top: B:238:0x018c, inners: #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01f3  */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r14v11, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v8, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v16, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v23, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v27 */
    /* JADX WARN: Type inference failed for: r4v28, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v30, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v35 */
    /* JADX WARN: Type inference failed for: r4v36 */
    /* JADX WARN: Type inference failed for: r4v37 */
    /* JADX WARN: Type inference failed for: r4v38 */
    /* JADX WARN: Type inference failed for: r4v39 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v40 */
    /* JADX WARN: Type inference failed for: r4v41 */
    /* JADX WARN: Type inference failed for: r4v42 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v9, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v0, types: [int] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10, types: [ads_mobile_sdk.rr3, java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v11, types: [ads_mobile_sdk.tu2, java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v12, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v16, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v23, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v27, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v30, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v33 */
    /* JADX WARN: Type inference failed for: r5v36, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v37 */
    /* JADX WARN: Type inference failed for: r5v38 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v40, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v45 */
    /* JADX WARN: Type inference failed for: r5v46 */
    /* JADX WARN: Type inference failed for: r5v47, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v48 */
    /* JADX WARN: Type inference failed for: r5v49 */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v50 */
    /* JADX WARN: Type inference failed for: r5v51, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v52 */
    /* JADX WARN: Type inference failed for: r5v54, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v57 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v60 */
    /* JADX WARN: Type inference failed for: r5v61 */
    /* JADX WARN: Type inference failed for: r5v62 */
    /* JADX WARN: Type inference failed for: r5v63 */
    /* JADX WARN: Type inference failed for: r5v64 */
    /* JADX WARN: Type inference failed for: r5v65 */
    /* JADX WARN: Type inference failed for: r5v66 */
    /* JADX WARN: Type inference failed for: r5v67 */
    /* JADX WARN: Type inference failed for: r5v68 */
    /* JADX WARN: Type inference failed for: r5v69 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v70 */
    /* JADX WARN: Type inference failed for: r5v71 */
    /* JADX WARN: Type inference failed for: r5v72 */
    /* JADX WARN: Type inference failed for: r5v73 */
    /* JADX WARN: Type inference failed for: r5v74 */
    /* JADX WARN: Type inference failed for: r5v75 */
    /* JADX WARN: Type inference failed for: r5v76 */
    /* JADX WARN: Type inference failed for: r5v77 */
    /* JADX WARN: Type inference failed for: r5v78 */
    /* JADX WARN: Type inference failed for: r5v79 */
    /* JADX WARN: Type inference failed for: r5v8, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v10, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v18, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r6v19, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v22, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v23 */
    /* JADX WARN: Type inference failed for: r6v24 */
    /* JADX WARN: Type inference failed for: r6v25, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v27, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r6v29 */
    /* JADX WARN: Type inference failed for: r6v30 */
    /* JADX WARN: Type inference failed for: r6v31 */
    /* JADX WARN: Type inference failed for: r6v32 */
    /* JADX WARN: Type inference failed for: r6v33 */
    /* JADX WARN: Type inference failed for: r6v34 */
    /* JADX WARN: Type inference failed for: r6v35 */
    /* JADX WARN: Type inference failed for: r6v36 */
    /* JADX WARN: Type inference failed for: r6v37 */
    /* JADX WARN: Type inference failed for: r6v38 */
    /* JADX WARN: Type inference failed for: r6v39 */
    /* JADX WARN: Type inference failed for: r6v40 */
    /* JADX WARN: Type inference failed for: r6v41 */
    /* JADX WARN: Type inference failed for: r6v42 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(android.os.Bundle r18, kotlin.coroutines.Continuation r19) {
        /*
            Method dump skipped, instruction units count: 994
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.b(android.os.Bundle, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x01e6 A[Catch: all -> 0x01c1, TRY_LEAVE, TryCatch #1 {all -> 0x01c1, blocks: (B:95:0x01ae, B:97:0x01b5, B:99:0x01b9, B:101:0x01bd, B:104:0x01c3, B:106:0x01c7, B:108:0x01cb, B:110:0x01cf, B:111:0x01d0, B:112:0x01d5, B:113:0x01d6, B:114:0x01dd, B:115:0x01de, B:116:0x01e5, B:117:0x01e6), top: B:195:0x01ae }] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0210 A[Catch: all -> 0x0221, TryCatch #3 {all -> 0x0221, blocks: (B:28:0x0071, B:127:0x020a, B:129:0x0210, B:134:0x0224, B:136:0x0228), top: B:198:0x0071 }] */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0224 A[Catch: all -> 0x0221, TryCatch #3 {all -> 0x0221, blocks: (B:28:0x0071, B:127:0x020a, B:129:0x0210, B:134:0x0224, B:136:0x0228), top: B:198:0x0071 }] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x028f A[Catch: all -> 0x029b, TryCatch #15 {all -> 0x029b, blocks: (B:166:0x0288, B:168:0x028f, B:170:0x0293, B:172:0x0297, B:175:0x029d, B:177:0x02a1, B:179:0x02a5, B:181:0x02a9, B:182:0x02aa, B:183:0x02af, B:184:0x02b0, B:185:0x02b7, B:186:0x02b8, B:187:0x02bf, B:188:0x02c0), top: B:218:0x0288 }] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x02c0 A[Catch: all -> 0x029b, TRY_LEAVE, TryCatch #15 {all -> 0x029b, blocks: (B:166:0x0288, B:168:0x028f, B:170:0x0293, B:172:0x0297, B:175:0x029d, B:177:0x02a1, B:179:0x02a5, B:181:0x02a9, B:182:0x02aa, B:183:0x02af, B:184:0x02b0, B:185:0x02b7, B:186:0x02b8, B:187:0x02bf, B:188:0x02c0), top: B:218:0x0288 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0138 A[Catch: all -> 0x0149, TryCatch #9 {all -> 0x0149, blocks: (B:46:0x00b5, B:59:0x0132, B:61:0x0138, B:66:0x014c, B:68:0x0150), top: B:209:0x00b5 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x014c A[Catch: all -> 0x0149, TryCatch #9 {all -> 0x0149, blocks: (B:46:0x00b5, B:59:0x0132, B:61:0x0138, B:66:0x014c, B:68:0x0150), top: B:209:0x00b5 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01b5 A[Catch: all -> 0x01c1, TryCatch #1 {all -> 0x01c1, blocks: (B:95:0x01ae, B:97:0x01b5, B:99:0x01b9, B:101:0x01bd, B:104:0x01c3, B:106:0x01c7, B:108:0x01cb, B:110:0x01cf, B:111:0x01d0, B:112:0x01d5, B:113:0x01d6, B:114:0x01dd, B:115:0x01de, B:116:0x01e5, B:117:0x01e6), top: B:195:0x01ae }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.g30 r13, kotlin.coroutines.Continuation r14) {
        /*
            Method dump skipped, instruction units count: 740
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.a(ads_mobile_sdk.g30, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static boolean a(Bundle newBundle, Bundle oldBundle) {
        Intrinsics.checkNotNullParameter(newBundle, "newBundle");
        Intrinsics.checkNotNullParameter(oldBundle, "oldBundle");
        if (newBundle.size() != oldBundle.size()) {
            return false;
        }
        Set<String> setKeySet = newBundle.keySet();
        Set<String> setKeySet2 = oldBundle.keySet();
        Intrinsics.checkNotNullExpressionValue(setKeySet2, "keySet(...)");
        if (!setKeySet.containsAll(setKeySet2)) {
            return false;
        }
        for (String str : newBundle.keySet()) {
            Object obj = newBundle.get(str);
            Object obj2 = oldBundle.get(str);
            if ((obj instanceof Bundle) && (obj2 instanceof Bundle)) {
                if (!a((Bundle) obj, (Bundle) obj2)) {
                    return false;
                }
            } else if (!Intrinsics.areEqual(obj, obj2)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.u00 r8, kotlin.coroutines.Continuation r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof ads_mobile_sdk.d10
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.d10 r0 = (ads_mobile_sdk.d10) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.d10 r0 = new ads_mobile_sdk.d10
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            ads_mobile_sdk.u00 r8 = r0.b
            ads_mobile_sdk.g30 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L48
        L2d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L35:
            kotlin.ResultKt.throwOnFailure(r9)
            ads_mobile_sdk.p02 r9 = r7.B
            r0.a = r7
            r0.b = r8
            r0.e = r3
            java.lang.Object r9 = r9.a(r0)
            if (r9 != r1) goto L47
            return r1
        L47:
            r0 = r7
        L48:
            ads_mobile_sdk.u00 r9 = (ads_mobile_sdk.u00) r9
            int r1 = r9.v()
            if (r1 <= 0) goto L7a
            boolean r8 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r8)
            if (r8 != 0) goto L7a
            kotlinx.coroutines.CoroutineScope r1 = r0.d
            ads_mobile_sdk.e10 r8 = new ads_mobile_sdk.e10
            r9 = 0
            r8.<init>(r0, r9)
            kotlin.coroutines.EmptyCoroutineContext r2 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
            java.lang.String r0 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.lang.String r0 = "block"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            ads_mobile_sdk.ws3 r4 = new ads_mobile_sdk.ws3
            r4.<init>(r8, r9)
            r5 = 2
            r6 = 0
            r3 = 0
            kotlinx.coroutines.BuildersKt.launch$default(r1, r2, r3, r4, r5, r6)
        L7a:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.a(ads_mobile_sdk.u00, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r0v13, types: [ads_mobile_sdk.g30] */
    /* JADX WARN: Type inference failed for: r0v14, types: [ads_mobile_sdk.g30] */
    /* JADX WARN: Type inference failed for: r0v15, types: [ads_mobile_sdk.g30] */
    /* JADX WARN: Type inference failed for: r0v2, types: [ads_mobile_sdk.m10, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(com.google.gson.JsonElement r9, kotlin.coroutines.Continuation r10) {
        /*
            Method dump skipped, instruction units count: 288
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.a(com.google.gson.JsonElement, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void a(Map preferences, JsonElement consentStringElement, Bundle bundle) {
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        Intrinsics.checkNotNullParameter(consentStringElement, "consentStringElement");
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        try {
            JsonObject asJsonObject = consentStringElement.getAsJsonObject();
            JsonElement jsonElement = asJsonObject.get("bk");
            String asString = jsonElement != null ? jsonElement.getAsString() : null;
            JsonElement jsonElement2 = asJsonObject.get("sk");
            String asString2 = jsonElement2 != null ? jsonElement2.getAsString() : null;
            JsonElement jsonElement3 = asJsonObject.get("type");
            Integer numValueOf = jsonElement3 != null ? Integer.valueOf(jsonElement3.getAsInt()) : null;
            Object obj = preferences.get(asString2);
            o30 o30Var = o30.b;
            if (numValueOf != null && numValueOf.intValue() == 0) {
                if (obj instanceof String) {
                    bundle.putString(asString, (String) obj);
                    return;
                }
                return;
            }
            if (numValueOf != null && numValueOf.intValue() == 1) {
                if (obj instanceof Integer) {
                    bundle.putInt(asString, ((Number) obj).intValue());
                    return;
                } else if (obj instanceof Long) {
                    bundle.putLong(asString, ((Number) obj).longValue());
                    return;
                } else {
                    if (obj instanceof Float) {
                        bundle.putFloat(asString, ((Number) obj).floatValue());
                        return;
                    }
                    return;
                }
            }
            if (numValueOf != null && numValueOf.intValue() == 2 && (obj instanceof Boolean)) {
                bundle.putBoolean(asString, ((Boolean) obj).booleanValue());
            }
        } catch (IllegalStateException e) {
            ((as3) this.f).a("JSON shared preference consent key object parsing failure", (Throwable) e);
        } catch (NumberFormatException e2) {
            ((as3) this.f).a("JSON shared preference consent key object parsing failure", (Throwable) e2);
        } catch (UnsupportedOperationException e3) {
            ((as3) this.f).a("JSON shared preference consent key object parsing failure", (Throwable) e3);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.Exception r5, kotlin.coroutines.Continuation r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof ads_mobile_sdk.i20
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.i20 r0 = (ads_mobile_sdk.i20) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.i20 r0 = new ads_mobile_sdk.i20
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            java.lang.Exception r5 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L45
        L2b:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L33:
            kotlin.ResultKt.throwOnFailure(r6)
            ads_mobile_sdk.u00 r6 = r4.i()
            r0.a = r5
            r0.d = r3
            java.lang.Object r6 = r4.b(r6, r0)
            if (r6 != r1) goto L45
            return r1
        L45:
            java.lang.String r6 = "exception"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r6)
            ads_mobile_sdk.rr3 r6 = ads_mobile_sdk.hs3.a()
            ads_mobile_sdk.uj2 r0 = r6.e()
            r1 = 0
            r0.m = r1
            if (r5 == 0) goto L5a
            r6.a(r5)
        L5a:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.a(java.lang.Exception, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.i01 r5, kotlin.coroutines.Continuation r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof ads_mobile_sdk.j20
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.j20 r0 = (ads_mobile_sdk.j20) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.j20 r0 = new ads_mobile_sdk.j20
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            ads_mobile_sdk.i01 r5 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L55
        L2b:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L33:
            kotlin.ResultKt.throwOnFailure(r6)
            boolean r6 = r5 instanceof ads_mobile_sdk.j01
            if (r6 == 0) goto L46
            r6 = r5
            ads_mobile_sdk.j01 r6 = (ads_mobile_sdk.j01) r6
            java.lang.Throwable r6 = r6.c
            boolean r6 = r6 instanceof java.util.concurrent.CancellationException
            if (r6 == 0) goto L46
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L46:
            ads_mobile_sdk.u00 r6 = r4.i()
            r0.a = r5
            r0.d = r3
            java.lang.Object r6 = r4.b(r6, r0)
            if (r6 != r1) goto L55
            return r1
        L55:
            r6 = 0
            ads_mobile_sdk.xs3.a(r5, r6)
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.a(ads_mobile_sdk.i01, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static Object a(g30 g30Var, boolean z, Continuation continuation, int i) {
        if ((i & 1) != 0) {
            z = false;
        }
        g30Var.getClass();
        return b(g30Var, z, true, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x007c, code lost:
    
        if (ads_mobile_sdk.jw0.a(r6, r7, r8, r0) == r1) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.g30 r6, java.lang.String r7, java.lang.String r8, kotlin.coroutines.Continuation r9) {
        /*
            boolean r0 = r9 instanceof ads_mobile_sdk.a30
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.a30 r0 = (ads_mobile_sdk.a30) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            ads_mobile_sdk.a30 r0 = new ads_mobile_sdk.a30
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r9 = r0.e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.g
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L40
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r9)
            goto L7f
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            ads_mobile_sdk.s00 r6 = r0.d
            java.lang.String r8 = r0.c
            java.lang.String r7 = r0.b
            ads_mobile_sdk.g30 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L5c
        L40:
            kotlin.ResultKt.throwOnFailure(r9)
            ads_mobile_sdk.s00 r9 = ads_mobile_sdk.s00.API_WRITE_PERSISTENT_SDK_CORE_DATA
            ads_mobile_sdk.p02 r2 = r6.B
            r0.a = r6
            r0.b = r7
            r0.c = r8
            r0.d = r9
            r0.g = r4
            java.lang.Object r2 = r2.a(r0)
            if (r2 != r1) goto L58
            goto L7e
        L58:
            r5 = r2
            r2 = r6
            r6 = r9
            r9 = r5
        L5c:
            ads_mobile_sdk.u00 r9 = (ads_mobile_sdk.u00) r9
            ads_mobile_sdk.yh1$d r9 = r9.w()
            boolean r6 = r9.contains(r6)
            if (r6 == 0) goto L7f
            ads_mobile_sdk.jw0 r6 = r2.t
            r9 = 0
            r0.a = r9
            r0.b = r9
            r0.c = r9
            r0.d = r9
            r0.g = r3
            r6.getClass()
            java.lang.Object r6 = ads_mobile_sdk.jw0.a(r6, r7, r8, r0)
            if (r6 != r1) goto L7f
        L7e:
            return r1
        L7f:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.a(ads_mobile_sdk.g30, java.lang.String, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.g30 r6, java.lang.String r7, long r8, kotlin.coroutines.Continuation r10) {
        /*
            boolean r0 = r10 instanceof ads_mobile_sdk.d30
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.d30 r0 = (ads_mobile_sdk.d30) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.d30 r0 = new ads_mobile_sdk.d30
            r0.<init>(r6, r10)
        L18:
            java.lang.Object r10 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            ads_mobile_sdk.g30 r6 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            goto L46
        L2b:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L33:
            kotlin.ResultKt.throwOnFailure(r10)
            ads_mobile_sdk.dq0 r10 = r6.w
            r0.a = r6
            r0.d = r3
            r10.getClass()
            java.lang.Object r10 = ads_mobile_sdk.dq0.a(r10, r7, r8, r0)
            if (r10 != r1) goto L46
            return r1
        L46:
            ads_mobile_sdk.xp0 r10 = (ads_mobile_sdk.xp0) r10
            ads_mobile_sdk.ex0 r7 = r6.h
            r7.getClass()
            java.lang.String r8 = "key"
            java.lang.String r9 = "enableDeleteWebEoid"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r8)
            java.lang.Boolean r8 = java.lang.Boolean.FALSE
            ads_mobile_sdk.ir r0 = ads_mobile_sdk.yr.b
            java.lang.Object r7 = r7.a(r9, r8, r0)
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 == 0) goto La5
            if (r10 == 0) goto La5
            com.google.gson.JsonObject r7 = new com.google.gson.JsonObject
            r7.<init>()
            java.lang.String r8 = r10.w()
            java.lang.String r9 = "eoid"
            r7.addProperty(r9, r8)
            long r8 = r10.x()
            java.lang.Long r8 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r8)
            java.lang.String r9 = "eoid_timestamp_ms"
            r7.addProperty(r9, r8)
            kotlinx.coroutines.CoroutineScope r0 = r6.d
            ads_mobile_sdk.e30 r8 = new ads_mobile_sdk.e30
            r9 = 0
            r8.<init>(r6, r7, r9)
            kotlin.coroutines.EmptyCoroutineContext r1 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE
            java.lang.String r6 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r6)
            java.lang.String r6 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r6)
            java.lang.String r6 = "block"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r6)
            ads_mobile_sdk.ws3 r3 = new ads_mobile_sdk.ws3
            r3.<init>(r8, r9)
            r4 = 2
            r5 = 0
            r2 = 0
            kotlinx.coroutines.BuildersKt.launch$default(r0, r1, r2, r3, r4, r5)
        La5:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g30.a(ads_mobile_sdk.g30, java.lang.String, long, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
