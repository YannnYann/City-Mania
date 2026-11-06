package ads_mobile_sdk;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class b93 {
    public final Context a;
    public final tx b;
    public final pn c;
    public final f0 d;
    public final rv1 e;
    public final CoroutineScope f;
    public final g83 g;
    public final hf h;
    public final BaseRequest i;
    public final m13 j;
    public final long k;
    public final long l;
    public final Mutex m;
    public final ArrayList n;

    public b93(ex0 flags, Context context, tx clock, pn appState, f0 activityTracker, rv1 mediationAdapterProxyFactory, CoroutineScope backgroundScope, g83 rootTraceCreator, hf adapterInitializer, BaseRequest baseRequest, m13 recursiveAdData) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(appState, "appState");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(mediationAdapterProxyFactory, "mediationAdapterProxyFactory");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(adapterInitializer, "adapterInitializer");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(recursiveAdData, "recursiveAdData");
        this.a = context;
        this.b = clock;
        this.c = appState;
        this.d = activityTracker;
        this.e = mediationAdapterProxyFactory;
        this.f = backgroundScope;
        this.g = rootTraceCreator;
        this.h = adapterInitializer;
        this.i = baseRequest;
        this.j = recursiveAdData;
        this.k = flags.B0();
        this.l = Duration.m2898timesUwyO8pc(kj3.e.d(), flags.C0());
        this.m = MutexKt.Mutex$default(false, 1, null);
        this.n = new ArrayList();
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(com.google.android.libraries.ads.mobile.sdk.banner.AdSize r15, ads_mobile_sdk.j53 r16, com.google.android.libraries.ads.mobile.sdk.common.BaseRequest r17, kotlin.coroutines.Continuation r18) {
        /*
            r14 = this;
            r0 = r18
            boolean r2 = r0 instanceof ads_mobile_sdk.v83
            if (r2 == 0) goto L16
            r2 = r0
            ads_mobile_sdk.v83 r2 = (ads_mobile_sdk.v83) r2
            int r3 = r2.e
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L16
            int r3 = r3 - r4
            r2.e = r3
        L14:
            r6 = r2
            goto L1c
        L16:
            ads_mobile_sdk.v83 r2 = new ads_mobile_sdk.v83
            r2.<init>(r14, r0)
            goto L14
        L1c:
            java.lang.Object r0 = r6.c
            java.lang.Object r7 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r6.e
            r8 = 2
            r9 = 1
            r10 = 0
            if (r2 == 0) goto L43
            if (r2 == r9) goto L3d
            if (r2 != r8) goto L35
            kotlinx.coroutines.sync.Mutex r2 = r6.b
            ads_mobile_sdk.b93 r3 = r6.a
            kotlin.ResultKt.throwOnFailure(r0)
            goto L73
        L35:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r2)
            throw r0
        L3d:
            ads_mobile_sdk.b93 r2 = r6.a
            kotlin.ResultKt.throwOnFailure(r0)
            goto L62
        L43:
            kotlin.ResultKt.throwOnFailure(r0)
            ads_mobile_sdk.m21 r11 = ads_mobile_sdk.o21.f
            long r12 = r14.l
            ads_mobile_sdk.x83 r0 = new ads_mobile_sdk.x83
            r5 = 0
            r1 = r14
            r4 = r15
            r3 = r16
            r2 = r17
            r0.<init>(r1, r2, r3, r4, r5)
            r6.a = r14
            r6.e = r9
            java.lang.Object r0 = r11.a(r12, r0, r6)
            if (r0 != r7) goto L61
            goto L70
        L61:
            r2 = r14
        L62:
            kotlinx.coroutines.sync.Mutex r0 = r2.m
            r6.a = r2
            r6.b = r0
            r6.e = r8
            java.lang.Object r3 = r0.lock(r10, r6)
            if (r3 != r7) goto L71
        L70:
            return r7
        L71:
            r3 = r2
            r2 = r0
        L73:
            java.util.ArrayList r0 = r3.n     // Catch: java.lang.Throwable -> L79
            r2.unlock(r10)
            return r0
        L79:
            r0 = move-exception
            r2.unlock(r10)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.b93.a(com.google.android.libraries.ads.mobile.sdk.banner.AdSize, ads_mobile_sdk.j53, com.google.android.libraries.ads.mobile.sdk.common.BaseRequest, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00ec, code lost:
    
        if (r1.lock(null, r8) == r9) goto L48;
     */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(android.os.Bundle r22, android.os.Bundle r23, com.google.android.libraries.ads.mobile.sdk.banner.AdSize r24, java.lang.String r25, java.lang.String r26, kotlin.coroutines.Continuation r27) {
        /*
            Method dump skipped, instruction units count: 255
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.b93.a(android.os.Bundle, android.os.Bundle, com.google.android.libraries.ads.mobile.sdk.banner.AdSize, java.lang.String, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x024a A[Catch: all -> 0x02eb, TRY_LEAVE, TryCatch #6 {all -> 0x02eb, blocks: (B:102:0x0242, B:104:0x024a, B:107:0x0270, B:109:0x0283, B:110:0x0288, B:112:0x0296, B:114:0x029c, B:115:0x02a4, B:117:0x02aa, B:118:0x02c0, B:119:0x02c2), top: B:167:0x0242 }] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0270 A[Catch: all -> 0x02eb, TRY_ENTER, TryCatch #6 {all -> 0x02eb, blocks: (B:102:0x0242, B:104:0x024a, B:107:0x0270, B:109:0x0283, B:110:0x0288, B:112:0x0296, B:114:0x029c, B:115:0x02a4, B:117:0x02aa, B:118:0x02c0, B:119:0x02c2), top: B:167:0x0242 }] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x02f7 A[Catch: all -> 0x0303, TryCatch #1 {all -> 0x0303, blocks: (B:131:0x02f0, B:133:0x02f7, B:135:0x02fb, B:137:0x02ff, B:140:0x0306, B:142:0x030a, B:144:0x030e, B:146:0x0312, B:147:0x0313, B:148:0x0318, B:149:0x0319, B:150:0x0320, B:151:0x0321, B:152:0x0328, B:153:0x0329), top: B:160:0x02f0 }] */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0329 A[Catch: all -> 0x0303, TRY_LEAVE, TryCatch #1 {all -> 0x0303, blocks: (B:131:0x02f0, B:133:0x02f7, B:135:0x02fb, B:137:0x02ff, B:140:0x0306, B:142:0x030a, B:144:0x030e, B:146:0x0312, B:147:0x0313, B:148:0x0318, B:149:0x0319, B:150:0x0320, B:151:0x0321, B:152:0x0328, B:153:0x0329), top: B:160:0x02f0 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0111 A[Catch: all -> 0x01b6, TRY_LEAVE, TryCatch #3 {all -> 0x01b6, blocks: (B:41:0x0109, B:43:0x0111, B:46:0x0137, B:48:0x014a, B:49:0x014f, B:51:0x015d, B:53:0x0163, B:54:0x016b, B:56:0x0171, B:57:0x0187, B:58:0x0189), top: B:162:0x0109 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0137 A[Catch: all -> 0x01b6, TRY_ENTER, TryCatch #3 {all -> 0x01b6, blocks: (B:41:0x0109, B:43:0x0111, B:46:0x0137, B:48:0x014a, B:49:0x014f, B:51:0x015d, B:53:0x0163, B:54:0x016b, B:56:0x0171, B:57:0x0187, B:58:0x0189), top: B:162:0x0109 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01c3 A[Catch: all -> 0x01cf, TryCatch #9 {all -> 0x01cf, blocks: (B:70:0x01bc, B:72:0x01c3, B:74:0x01c7, B:76:0x01cb, B:79:0x01d2, B:81:0x01d6, B:83:0x01da, B:85:0x01de, B:86:0x01df, B:87:0x01e4, B:88:0x01e5, B:89:0x01ec, B:90:0x01ed, B:91:0x01f4, B:92:0x01f5), top: B:172:0x01bc }] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01f5 A[Catch: all -> 0x01cf, TRY_LEAVE, TryCatch #9 {all -> 0x01cf, blocks: (B:70:0x01bc, B:72:0x01c3, B:74:0x01c7, B:76:0x01cb, B:79:0x01d2, B:81:0x01d6, B:83:0x01da, B:85:0x01de, B:86:0x01df, B:87:0x01e4, B:88:0x01e5, B:89:0x01ec, B:90:0x01ed, B:91:0x01f4, B:92:0x01f5), top: B:172:0x01bc }] */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.android.libraries.ads.mobile.sdk.common.BaseRequest] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15, types: [com.google.android.libraries.ads.mobile.sdk.common.BaseRequest] */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v33, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v34, types: [com.google.android.libraries.ads.mobile.sdk.common.BaseRequest] */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v43, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v45 */
    /* JADX WARN: Type inference failed for: r2v49 */
    /* JADX WARN: Type inference failed for: r2v53 */
    /* JADX WARN: Type inference failed for: r2v54 */
    /* JADX WARN: Type inference failed for: r2v55 */
    /* JADX WARN: Type inference failed for: r2v56 */
    /* JADX WARN: Type inference failed for: r2v57 */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v13, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r3v23, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r3v31 */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v38 */
    /* JADX WARN: Type inference failed for: r3v39 */
    /* JADX WARN: Type inference failed for: r3v40 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r6v10, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9, types: [ads_mobile_sdk.j53, ads_mobile_sdk.rr3, com.google.android.libraries.ads.mobile.sdk.banner.AdSize, com.google.android.libraries.ads.mobile.sdk.common.BaseRequest, java.lang.Throwable, java.util.Map] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v27 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.util.Map.Entry r19, com.google.android.libraries.ads.mobile.sdk.common.BaseRequest r20, java.util.Map r21, ads_mobile_sdk.j53 r22, com.google.android.libraries.ads.mobile.sdk.banner.AdSize r23, kotlin.coroutines.Continuation r24) {
        /*
            Method dump skipped, instruction units count: 816
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.b93.a(java.util.Map$Entry, com.google.android.libraries.ads.mobile.sdk.common.BaseRequest, java.util.Map, ads_mobile_sdk.j53, com.google.android.libraries.ads.mobile.sdk.banner.AdSize, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
