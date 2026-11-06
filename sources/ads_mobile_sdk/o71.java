package ads_mobile_sdk;

import android.net.Uri;
import com.ironsource.C3746nc;
import java.net.URL;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import okhttp3.ConnectionPool;
import okhttp3.Dispatcher;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes.dex */
public final class o71 implements e01 {
    public final ex0 a;
    public final zw3 b;
    public final CoroutineScope c;
    public final rz d;
    public uv e;
    public vk0 f;
    public final Mutex g;
    public volatile OkHttpClient h;
    public OkHttpClient i;

    public o71(ex0 ex0Var, sz concurrencyObjects, zw3 userAgentProvider, CoroutineScope backgroundScope) {
        Intrinsics.checkNotNullParameter(concurrencyObjects, "concurrencyObjects");
        Intrinsics.checkNotNullParameter(userAgentProvider, "userAgentProvider");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        this.a = ex0Var;
        this.b = userAgentProvider;
        this.c = backgroundScope;
        this.d = concurrencyObjects.a();
        this.g = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.f81 r6, java.util.Map r7, kotlin.coroutines.Continuation r8) {
        /*
            Method dump skipped, instruction units count: 206
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.o71.a(ads_mobile_sdk.f81, java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.e01
    public final Object a(sl1 sl1Var) {
        long duration;
        OkHttpClient.Builder builderDispatcher = new OkHttpClient.Builder().dispatcher(new Dispatcher(this.d));
        ex0 ex0Var = this.a;
        if (ex0Var != null) {
            duration = ex0Var.C();
        } else {
            Duration.Companion companion = Duration.Companion;
            duration = DurationKt.toDuration(20, DurationUnit.SECONDS);
        }
        this.h = builderDispatcher.callTimeout(Duration.m2881getInWholeMillisecondsimpl(duration), TimeUnit.MILLISECONDS).build();
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.e01
    public final Object a(int i, long j, m8 m8Var) {
        long duration;
        OkHttpClient.Builder builderDispatcher = new OkHttpClient.Builder().dispatcher(new Dispatcher(this.d));
        ex0 ex0Var = this.a;
        if (ex0Var != null) {
            duration = ex0Var.C();
        } else {
            Duration.Companion companion = Duration.Companion;
            duration = DurationKt.toDuration(20, DurationUnit.SECONDS);
        }
        this.i = builderDispatcher.callTimeout(Duration.m2881getInWholeMillisecondsimpl(duration), TimeUnit.MILLISECONDS).connectionPool(new ConnectionPool(i, j, TimeUnit.MINUTES)).build();
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r9, java.util.UUID r10, com.google.gson.JsonObject r11, kotlin.coroutines.Continuation r12) {
        /*
            r8 = this;
            java.lang.String r0 = "GoogleMobileAdsNetwork"
            boolean r1 = r12 instanceof ads_mobile_sdk.b71
            if (r1 == 0) goto L15
            r1 = r12
            ads_mobile_sdk.b71 r1 = (ads_mobile_sdk.b71) r1
            int r2 = r1.e
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.e = r2
            goto L1a
        L15:
            ads_mobile_sdk.b71 r1 = new ads_mobile_sdk.b71
            r1.<init>(r8, r12)
        L1a:
            java.lang.Object r12 = r1.c
            java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r3 = r1.e
            r4 = 1
            r5 = 0
            if (r3 == 0) goto L38
            if (r3 != r4) goto L30
            kotlinx.coroutines.sync.Mutex r9 = r1.b
            com.google.gson.JsonObject r10 = r1.a
            kotlin.ResultKt.throwOnFailure(r12)
            goto L87
        L30:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L38:
            kotlin.ResultKt.throwOnFailure(r12)
            com.google.gson.JsonObject r12 = new com.google.gson.JsonObject
            r12.<init>()
            long r6 = java.lang.System.currentTimeMillis()
            java.lang.Long r3 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r6)
            java.lang.String r6 = "timestamp"
            r12.addProperty(r6, r3)
            java.lang.String r3 = "event"
            r12.addProperty(r3, r9)
            com.google.gson.JsonArray r9 = new com.google.gson.JsonArray
            r9.<init>()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r6 = "network_request_"
            r3.append(r6)
            r3.append(r10)
            java.lang.String r10 = r3.toString()
            r9.add(r10)
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            java.lang.String r10 = "components"
            r12.add(r10, r9)
            java.lang.String r9 = "params"
            r12.add(r9, r11)
            kotlinx.coroutines.sync.Mutex r9 = r8.g
            r1.a = r12
            r1.b = r9
            r1.e = r4
            java.lang.Object r10 = r9.lock(r5, r1)
            if (r10 != r2) goto L86
            return r2
        L86:
            r10 = r12
        L87:
            java.lang.String r11 = "GMA Debug BEGIN"
            r12 = 2
            ads_mobile_sdk.f01.a(r11, r5, r0, r12)     // Catch: java.lang.Throwable -> Lac
            java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lac
            r11.<init>()     // Catch: java.lang.Throwable -> Lac
            java.lang.String r1 = "GMA Debug CONTENT "
            r11.append(r1)     // Catch: java.lang.Throwable -> Lac
            r11.append(r10)     // Catch: java.lang.Throwable -> Lac
            java.lang.String r10 = r11.toString()     // Catch: java.lang.Throwable -> Lac
            ads_mobile_sdk.f01.a(r10, r5, r0, r12)     // Catch: java.lang.Throwable -> Lac
            java.lang.String r10 = "GMA Debug FINISH"
            ads_mobile_sdk.f01.a(r10, r5, r0, r12)     // Catch: java.lang.Throwable -> Lac
            kotlin.Unit r10 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> Lac
            r9.unlock(r5)
            return r10
        Lac:
            r10 = move-exception
            r9.unlock(r5)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.o71.a(java.lang.String, java.util.UUID, com.google.gson.JsonObject, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00f2, code lost:
    
        if (r2.a("onNetworkRequestError", r14, r15, r0) == r1) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0157, code lost:
    
        if (r2.a("onNetworkResponseBody", r13, r15, r0) == r1) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(okhttp3.Response r13, java.util.UUID r14, kotlin.coroutines.Continuation r15) {
        /*
            Method dump skipped, instruction units count: 355
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.o71.a(okhttp3.Response, java.util.UUID, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c4, code lost:
    
        if (r6 == r1) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.e01
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r6, java.util.Map r7, kotlin.coroutines.Continuation r8) {
        /*
            Method dump skipped, instruction units count: 202
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.o71.a(java.lang.String, java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.e01
    public final Object a(f81 f81Var, Duration duration, ja2 ja2Var) {
        return e01.a((e01) this, f81Var, duration, true, (Continuation) ja2Var, 16);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001a  */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [T, okhttp3.OkHttpClient] */
    /* JADX WARN: Type inference failed for: r7v8, types: [T, okhttp3.OkHttpClient] */
    @Override // ads_mobile_sdk.e01
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.net.URL r19, ads_mobile_sdk.ss0 r20, kotlin.coroutines.Continuation r21) {
        /*
            Method dump skipped, instruction units count: 348
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.o71.a(java.net.URL, ads_mobile_sdk.ss0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    @Override // ads_mobile_sdk.e01
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.net.URL r9, kotlin.coroutines.Continuation r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof ads_mobile_sdk.h71
            if (r0 == 0) goto L14
            r0 = r10
            ads_mobile_sdk.h71 r0 = (ads_mobile_sdk.h71) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.f = r1
        L12:
            r7 = r0
            goto L1a
        L14:
            ads_mobile_sdk.h71 r0 = new ads_mobile_sdk.h71
            r0.<init>(r8, r10)
            goto L12
        L1a:
            java.lang.Object r10 = r7.d
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r7.f
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L40
            if (r1 == r3) goto L36
            if (r1 != r2) goto L2e
            kotlin.ResultKt.throwOnFailure(r10)
            return r10
        L2e:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L36:
            java.lang.String r9 = r7.c
            okhttp3.Request$Builder r1 = r7.b
            ads_mobile_sdk.o71 r3 = r7.a
            kotlin.ResultKt.throwOnFailure(r10)
            goto L63
        L40:
            kotlin.ResultKt.throwOnFailure(r10)
            okhttp3.Request$Builder r10 = new okhttp3.Request$Builder
            r10.<init>()
            okhttp3.Request$Builder r1 = r10.url(r9)
            ads_mobile_sdk.zw3 r9 = r8.b
            r7.a = r8
            r7.b = r1
            java.lang.String r10 = "User-Agent"
            r7.c = r10
            r7.f = r3
            java.lang.Object r9 = r9.a(r7)
            if (r9 != r0) goto L5f
            goto L95
        L5f:
            r3 = r10
            r10 = r9
            r9 = r3
            r3 = r8
        L63:
            java.lang.String r10 = (java.lang.String) r10
            okhttp3.Request$Builder r9 = r1.addHeader(r9, r10)
            okhttp3.Request$Builder r9 = r9.head()
            okhttp3.Request r9 = r9.build()
            okhttp3.OkHttpClient r10 = r3.i
            r1 = 0
            if (r10 != 0) goto L81
            okhttp3.OkHttpClient r10 = r3.h
            if (r10 == 0) goto L7b
            goto L81
        L7b:
            java.lang.String r10 = "okHttpClient"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r10)
            r10 = r1
        L81:
            r7.a = r1
            r7.b = r1
            r7.c = r1
            r7.f = r2
            r4 = 0
            r6 = 1
            r5 = 0
            r2 = r9
            r1 = r3
            r3 = r10
            java.lang.Object r9 = r1.a(r2, r3, r4, r5, r6, r7)
            if (r9 != r0) goto L96
        L95:
            return r0
        L96:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.o71.a(java.net.URL, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /* JADX WARN: Type inference failed for: r10v5, types: [T, okhttp3.OkHttpClient] */
    /* JADX WARN: Type inference failed for: r14v21 */
    /* JADX WARN: Type inference failed for: r14v22 */
    /* JADX WARN: Type inference failed for: r14v4, types: [T, okhttp3.OkHttpClient] */
    @Override // ads_mobile_sdk.e01
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.f81 r9, kotlin.time.Duration r10, java.util.Map r11, boolean r12, boolean r13, kotlin.coroutines.Continuation r14) {
        /*
            Method dump skipped, instruction units count: 240
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.o71.a(ads_mobile_sdk.f81, kotlin.time.Duration, java.util.Map, boolean, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.e01
    public final Object a(URL url, Duration duration, Map map, boolean z, boolean z2, Continuation continuation) {
        URL url2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList<Pair> arrayList = new ArrayList();
        Intrinsics.checkNotNullParameter(url, "url");
        if (arrayList.isEmpty()) {
            url2 = url;
        } else {
            String string = url.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            Uri.Builder builderBuildUpon = Uri.parse(string).buildUpon();
            for (Pair pair : arrayList) {
                builderBuildUpon.appendQueryParameter((String) pair.component1(), (String) pair.component2());
            }
            url2 = new URL(builderBuildUpon.build().toString());
        }
        return a(new f81(url2, C3746nc.a, MapsKt__MapsKt.toMap(linkedHashMap), null, null, null), duration, map, z, z2, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x02e3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x031a  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0342  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0387  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x038a  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x03e6  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x03da A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02d6  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02dc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(okhttp3.Request r24, okhttp3.OkHttpClient r25, boolean r26, ads_mobile_sdk.f81 r27, boolean r28, kotlin.coroutines.Continuation r29) {
        /*
            Method dump skipped, instruction units count: 1044
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.o71.a(okhttp3.Request, okhttp3.OkHttpClient, boolean, ads_mobile_sdk.f81, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.e01
    public final void a(uv chromeVariationsProvider) {
        Intrinsics.checkNotNullParameter(chromeVariationsProvider, "chromeVariationsProvider");
        this.e = chromeVariationsProvider;
    }

    @Override // ads_mobile_sdk.e01
    public final void a(vk0 debugModeProvider) {
        Intrinsics.checkNotNullParameter(debugModeProvider, "debugModeProvider");
        this.f = debugModeProvider;
    }
}
