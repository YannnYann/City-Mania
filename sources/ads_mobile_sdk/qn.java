package ads_mobile_sdk;

import java.util.LinkedHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class qn {
    public final qs1 a;
    public final Mutex b;
    public final LinkedHashMap c;
    public final ConcurrentHashMap d;
    public final ConcurrentHashMap e;
    public final AtomicInteger f;
    public final AtomicReference g;
    public final AtomicBoolean h;

    public qn(jw0 flagDataStore, qs1 liveWebViewManager) {
        Intrinsics.checkNotNullParameter(flagDataStore, "flagDataStore");
        Intrinsics.checkNotNullParameter(liveWebViewManager, "liveWebViewManager");
        this.a = liveWebViewManager;
        this.b = MutexKt.Mutex$default(false, 1, null);
        this.c = new LinkedHashMap();
        this.d = new ConcurrentHashMap();
        this.e = new ConcurrentHashMap();
        this.f = new AtomicInteger(0);
        this.g = new AtomicReference("");
        this.h = new AtomicBoolean(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.qn r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof ads_mobile_sdk.cn
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.cn r0 = (ads_mobile_sdk.cn) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.cn r0 = new ads_mobile_sdk.cn
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            kotlinx.coroutines.sync.Mutex r5 = r0.b
            ads_mobile_sdk.qn r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4a
        L2e:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L36:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.sync.Mutex r6 = r5.b
            r0.a = r5
            r0.b = r6
            r0.e = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L48
            return r1
        L48:
            r0 = r5
            r5 = r6
        L4a:
            java.util.LinkedHashMap r6 = r0.c     // Catch: java.lang.Throwable -> L54
            r5.unlock(r4)
            java.util.Map r5 = kotlin.collections.MapsKt__MapsKt.toMap(r6)
            return r5
        L54:
            r6 = move-exception
            r5.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.qn.a(ads_mobile_sdk.qn, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void b(j53 requestType) {
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        ConcurrentHashMap concurrentHashMap = this.e;
        final gn gnVar = gn.a;
        ((AtomicInteger) concurrentHashMap.computeIfAbsent(requestType, new Function() { // from class: ads_mobile_sdk.qn$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return qn.b(gnVar, obj);
            }
        })).incrementAndGet();
    }

    public static final AtomicInteger b(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (AtomicInteger) tmp0.invoke(obj);
    }

    public final void a(j53 requestType) {
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        ConcurrentHashMap concurrentHashMap = this.d;
        final fn fnVar = fn.a;
        ((AtomicInteger) concurrentHashMap.computeIfAbsent(requestType, new Function() { // from class: ads_mobile_sdk.qn$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return qn.a(fnVar, obj);
            }
        })).incrementAndGet();
    }

    public static final AtomicInteger a(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (AtomicInteger) tmp0.invoke(obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.qn r5, java.lang.String r6, java.lang.String r7, kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof ads_mobile_sdk.nn
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.nn r0 = (ads_mobile_sdk.nn) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            ads_mobile_sdk.nn r0 = new ads_mobile_sdk.nn
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.g
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L34
            kotlinx.coroutines.sync.Mutex r5 = r0.d
            java.lang.String r7 = r0.c
            java.lang.String r6 = r0.b
            ads_mobile_sdk.qn r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r5
            r5 = r0
            goto L52
        L34:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3c:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r5.b
            r0.a = r5
            r0.b = r6
            r0.c = r7
            r0.d = r8
            r0.g = r3
            java.lang.Object r0 = r8.lock(r4, r0)
            if (r0 != r1) goto L52
            return r1
        L52:
            if (r7 == 0) goto L65
            int r0 = r7.length()     // Catch: java.lang.Throwable -> L63
            if (r0 != 0) goto L5b
            goto L65
        L5b:
            java.util.LinkedHashMap r5 = r5.c     // Catch: java.lang.Throwable -> L63
            r5.put(r6, r7)     // Catch: java.lang.Throwable -> L63
            kotlin.Unit r5 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L63
            goto L6a
        L63:
            r5 = move-exception
            goto L70
        L65:
            java.util.LinkedHashMap r5 = r5.c     // Catch: java.lang.Throwable -> L63
            r5.remove(r6)     // Catch: java.lang.Throwable -> L63
        L6a:
            r8.unlock(r4)
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L70:
            r8.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.qn.a(ads_mobile_sdk.qn, java.lang.String, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
