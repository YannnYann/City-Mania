package ads_mobile_sdk;

import android.content.Context;
import android.net.Uri;
import com.ironsource.C3746nc;
import java.net.URL;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class k70 implements e01 {
    public final CoroutineScope a;
    public final ex0 b;
    public final zw3 c;
    public final Context d;
    public final g83 e;
    public final ja1 f;
    public final cn0 g;
    public final rz h;
    public uv i;
    public vk0 j;
    public final Mutex k;
    public final AtomicReference l;
    public final AtomicReference m;
    public final CompletableJob n;
    public final CompletableJob o;
    public final AtomicBoolean p;
    public final AtomicBoolean q;
    public final Lazy r;

    public k70(CoroutineScope backgroundScope, CoroutineContext backgroundContext, ex0 ex0Var, sz concurrencyObjects, zw3 userAgentProvider, Context context, g83 g83Var, ja1 ja1Var, cn0 cn0Var) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(backgroundContext, "backgroundContext");
        Intrinsics.checkNotNullParameter(concurrencyObjects, "concurrencyObjects");
        Intrinsics.checkNotNullParameter(userAgentProvider, "userAgentProvider");
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = backgroundScope;
        this.b = ex0Var;
        this.c = userAgentProvider;
        this.d = context;
        this.e = g83Var;
        this.f = ja1Var;
        this.g = cn0Var;
        this.h = concurrencyObjects.a();
        this.k = MutexKt.Mutex$default(false, 1, null);
        this.l = new AtomicReference();
        this.m = new AtomicReference();
        this.n = JobKt__JobKt.Job$default(null, 1, null);
        this.o = JobKt__JobKt.Job$default(null, 1, null);
        this.p = new AtomicBoolean();
        this.q = new AtomicBoolean();
        this.r = LazyKt__LazyJVMKt.lazy(new a70(this));
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.k70 r8, org.chromium.net.CronetEngine.Builder r9, java.lang.Long r10, kotlin.coroutines.Continuation r11) {
        /*
            Method dump skipped, instruction units count: 385
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.k70.a(ads_mobile_sdk.k70, org.chromium.net.CronetEngine$Builder, java.lang.Long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.e01
    public final Object a(sl1 sl1Var) {
        if (this.p.getAndSet(true)) {
            return Unit.INSTANCE;
        }
        CoroutineScope coroutineScope = this.a;
        t60 block = new t60(this, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.e01
    public final Object a(int i, long j, m8 m8Var) {
        if (this.q.getAndSet(true)) {
            return Unit.INSTANCE;
        }
        CoroutineScope coroutineScope = this.a;
        u60 block = new u60(this, j, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:122:0x0191, code lost:
    
        if (r0.invoke(r7) == r8) goto L123;
     */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0184 A[Catch: all -> 0x015e, TRY_LEAVE, TryCatch #7 {all -> 0x015e, blocks: (B:94:0x014b, B:96:0x0152, B:98:0x0156, B:100:0x015a, B:103:0x0161, B:105:0x0165, B:107:0x0169, B:109:0x016d, B:110:0x016e, B:111:0x0173, B:112:0x0174, B:113:0x017b, B:114:0x017c, B:115:0x0183, B:116:0x0184), top: B:139:0x014b }] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00ee A[Catch: all -> 0x00fa, TryCatch #6 {all -> 0x00fa, blocks: (B:55:0x00e7, B:57:0x00ee, B:59:0x00f2, B:61:0x00f6, B:64:0x00fd, B:66:0x0101, B:68:0x0105, B:70:0x0109, B:71:0x010a, B:72:0x010f, B:73:0x0110, B:74:0x0117, B:75:0x0118, B:76:0x011f, B:77:0x0120), top: B:138:0x00e7 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0120 A[Catch: all -> 0x00fa, TRY_LEAVE, TryCatch #6 {all -> 0x00fa, blocks: (B:55:0x00e7, B:57:0x00ee, B:59:0x00f2, B:61:0x00f6, B:64:0x00fd, B:66:0x0101, B:68:0x0105, B:70:0x0109, B:71:0x010a, B:72:0x010f, B:73:0x0110, B:74:0x0117, B:75:0x0118, B:76:0x011f, B:77:0x0120), top: B:138:0x00e7 }] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0152 A[Catch: all -> 0x015e, TryCatch #7 {all -> 0x015e, blocks: (B:94:0x014b, B:96:0x0152, B:98:0x0156, B:100:0x015a, B:103:0x0161, B:105:0x0165, B:107:0x0169, B:109:0x016d, B:110:0x016e, B:111:0x0173, B:112:0x0174, B:113:0x017b, B:114:0x017c, B:115:0x0183, B:116:0x0184), top: B:139:0x014b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.util.concurrent.atomic.AtomicReference r17, kotlinx.coroutines.CompletableJob r18, java.lang.Long r19, kotlin.coroutines.Continuation r20) {
        /*
            Method dump skipped, instruction units count: 407
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.k70.a(java.util.concurrent.atomic.AtomicReference, kotlinx.coroutines.CompletableJob, java.lang.Long, kotlin.coroutines.Continuation):java.lang.Object");
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
            boolean r1 = r12 instanceof ads_mobile_sdk.b70
            if (r1 == 0) goto L15
            r1 = r12
            ads_mobile_sdk.b70 r1 = (ads_mobile_sdk.b70) r1
            int r2 = r1.e
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.e = r2
            goto L1a
        L15:
            ads_mobile_sdk.b70 r1 = new ads_mobile_sdk.b70
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
            kotlinx.coroutines.sync.Mutex r9 = r8.k
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
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.k70.a(java.lang.String, java.util.UUID, com.google.gson.JsonObject, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00f1, code lost:
    
        if (r2.a("onNetworkRequestError", r14, r15, r0) == r1) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0151, code lost:
    
        if (r2.a("onNetworkResponseBody", r13, r15, r0) == r1) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.h81 r13, java.util.UUID r14, kotlin.coroutines.Continuation r15) {
        /*
            Method dump skipped, instruction units count: 349
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.k70.a(ads_mobile_sdk.h81, java.util.UUID, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c6, code lost:
    
        if (r7 == r1) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.e01
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r7, java.util.Map r8, kotlin.coroutines.Continuation r9) {
        /*
            Method dump skipped, instruction units count: 204
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.k70.a(java.lang.String, java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.e01
    public final Object a(f81 f81Var, Duration duration, ja2 ja2Var) {
        return e01.a((e01) this, f81Var, duration, true, (Continuation) ja2Var, 20);
    }

    @Override // ads_mobile_sdk.e01
    public final Object a(URL url, ss0 ids, Continuation continuation) {
        URL url2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList<Pair> arrayList = new ArrayList();
        URL url3 = us0.a(url, ids, this.b);
        Intrinsics.checkNotNullParameter(url3, "url");
        Intrinsics.checkNotNullParameter(ids, "ids");
        if (arrayList.isEmpty()) {
            url2 = url3;
        } else {
            String string = url3.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            Uri.Builder builderBuildUpon = Uri.parse(string).buildUpon();
            for (Pair pair : arrayList) {
                builderBuildUpon.appendQueryParameter((String) pair.component1(), (String) pair.component2());
            }
            url2 = new URL(builderBuildUpon.build().toString());
        }
        return e01.a((e01) this, new f81(url2, C3746nc.a, MapsKt__MapsKt.toMap(linkedHashMap), null, ids, null), (Duration) null, false, continuation, 14);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00d2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    @Override // ads_mobile_sdk.e01
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.net.URL r8, kotlin.coroutines.Continuation r9) {
        /*
            Method dump skipped, instruction units count: 211
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.k70.a(java.net.URL, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:74:0x01bf, code lost:
    
        if (r2 != r4) goto L76;
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    @Override // ads_mobile_sdk.e01
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.f81 r24, kotlin.time.Duration r25, java.util.Map r26, boolean r27, boolean r28, kotlin.coroutines.Continuation r29) {
        /*
            Method dump skipped, instruction units count: 499
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.k70.a(ads_mobile_sdk.f81, kotlin.time.Duration, java.util.Map, boolean, boolean, kotlin.coroutines.Continuation):java.lang.Object");
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

    /* JADX WARN: Code restructure failed: missing block: B:119:0x0373, code lost:
    
        if (r15.a(r1, r8, r2) == r3) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x015b, code lost:
    
        if (r7 == r3) goto L120;
     */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0387  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x03a6  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01cc A[LOOP:2: B:57:0x01c6->B:59:0x01cc, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:68:0x0212 -> B:69:0x021b). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.f81 r24, org.chromium.net.CronetEngine r25, boolean r26, boolean r27, kotlin.coroutines.Continuation r28) {
        /*
            Method dump skipped, instruction units count: 969
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.k70.a(ads_mobile_sdk.f81, org.chromium.net.CronetEngine, boolean, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.e01
    public final void a(uv chromeVariationsProvider) {
        Intrinsics.checkNotNullParameter(chromeVariationsProvider, "chromeVariationsProvider");
        this.i = chromeVariationsProvider;
    }

    @Override // ads_mobile_sdk.e01
    public final void a(vk0 debugModeProvider) {
        Intrinsics.checkNotNullParameter(debugModeProvider, "debugModeProvider");
        this.j = debugModeProvider;
    }
}
