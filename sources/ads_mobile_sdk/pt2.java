package ads_mobile_sdk;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.coroutines.Continuation;
import kotlin.enums.EnumEntries;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class pt2 extends nc1 implements tq2, ox0, n92 {
    public final LinkedHashMap A;
    public final LinkedHashMap B;
    public final LinkedHashMap C;
    public final LinkedHashMap D;
    public final LinkedHashMap E;
    public boolean F;
    public final LinkedHashMap G;
    public boolean H;
    public final CoroutineScope c;
    public final ur3 d;
    public final g83 e;
    public final tx f;
    public final ex0 g;
    public final f13 h;
    public final cw2 i;
    public final cw2 j;
    public final cw2 k;
    public final cw2 l;
    public final cw2 m;
    public final cw2 n;
    public final zd3 o;
    public final k6 p;
    public final Mutex q;
    public Job r;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public long w;
    public boolean x;
    public long y;
    public final LinkedHashMap z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pt2(CoroutineScope backgroundScope, ur3 traceLogger, g83 rootTraceCreator, tx clock, ex0 flags, f13 randomGenerator, dw2 appOpenComponentProvider, dw2 bannerComponentProvider, dw2 interstitialComponentProvider, dw2 nativeComponentProvider, dw2 rewardedComponentProvider, dw2 swipeableInterstitialComponentProvider, zd3 sharedSettingsDataStore, k6 adPreloadingValidator) {
        super((s11) null, 3);
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(randomGenerator, "randomGenerator");
        Intrinsics.checkNotNullParameter(appOpenComponentProvider, "appOpenComponentProvider");
        Intrinsics.checkNotNullParameter(bannerComponentProvider, "bannerComponentProvider");
        Intrinsics.checkNotNullParameter(interstitialComponentProvider, "interstitialComponentProvider");
        Intrinsics.checkNotNullParameter(nativeComponentProvider, "nativeComponentProvider");
        Intrinsics.checkNotNullParameter(rewardedComponentProvider, "rewardedComponentProvider");
        Intrinsics.checkNotNullParameter(swipeableInterstitialComponentProvider, "swipeableInterstitialComponentProvider");
        Intrinsics.checkNotNullParameter(sharedSettingsDataStore, "sharedSettingsDataStore");
        Intrinsics.checkNotNullParameter(adPreloadingValidator, "adPreloadingValidator");
        this.c = backgroundScope;
        this.d = traceLogger;
        this.e = rootTraceCreator;
        this.f = clock;
        this.g = flags;
        this.h = randomGenerator;
        this.i = appOpenComponentProvider;
        this.j = bannerComponentProvider;
        this.k = interstitialComponentProvider;
        this.l = nativeComponentProvider;
        this.m = rewardedComponentProvider;
        this.n = swipeableInterstitialComponentProvider;
        this.o = sharedSettingsDataStore;
        this.p = adPreloadingValidator;
        this.q = MutexKt.Mutex$default(false, 1, null);
        CompletableJob completableJobJob$default = JobKt__JobKt.Job$default(null, 1, null);
        completableJobJob$default.complete();
        this.r = completableJobJob$default;
        this.s = true;
        this.t = true;
        this.u = true;
        this.v = true;
        Duration.Companion companion = Duration.Companion;
        this.w = companion.m2911getZEROUwyO8pc();
        this.x = true;
        this.y = companion.m2911getZEROUwyO8pc();
        this.z = new LinkedHashMap();
        this.A = new LinkedHashMap();
        this.B = new LinkedHashMap();
        this.C = new LinkedHashMap();
        this.D = new LinkedHashMap();
        this.E = new LinkedHashMap();
        this.G = new LinkedHashMap();
    }

    public final List g() {
        EnumEntries enumEntries = j53.n;
        ArrayList arrayList = new ArrayList();
        Iterator<E> it = enumEntries.iterator();
        while (it.hasNext()) {
            LinkedHashMap linkedHashMapA = a((j53) it.next());
            Collection collectionValues = linkedHashMapA != null ? linkedHashMapA.values() : null;
            if (collectionValues != null) {
                arrayList.add(collectionValues);
            }
        }
        return CollectionsKt__IterablesKt.flatten(arrayList);
    }

    @Override // ads_mobile_sdk.nc1
    public final Object u(Continuation continuation) {
        return b(this, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object v(kotlin.coroutines.Continuation r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof ads_mobile_sdk.gr2
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.gr2 r0 = (ads_mobile_sdk.gr2) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.gr2 r0 = new ads_mobile_sdk.gr2
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            ads_mobile_sdk.pt2 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L47
        L2b:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L33:
            kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.zd3 r7 = r6.o
            r0.a = r6
            r0.d = r3
            r7.getClass()
            java.lang.Object r7 = ads_mobile_sdk.zd3.d(r7, r0)
            if (r7 != r1) goto L46
            return r1
        L46:
            r0 = r6
        L47:
            java.lang.Number r7 = (java.lang.Number) r7
            int r7 = r7.intValue()
            ads_mobile_sdk.ex0 r1 = r0.g
            r1.getClass()
            java.lang.String r2 = "gads:use_server_provided_total_ad_limit:enabled"
            java.lang.String r3 = "key"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r3)
            java.lang.Boolean r4 = java.lang.Boolean.TRUE
            ads_mobile_sdk.ir r5 = ads_mobile_sdk.yr.b
            java.lang.Object r1 = r1.a(r2, r4, r5)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L6c
            if (r7 <= 0) goto L6c
            goto L82
        L6c:
            ads_mobile_sdk.ex0 r7 = r0.g
            r0 = 15
            java.lang.String r1 = "gads:preloaded_ads:upper_bound"
            java.lang.Integer r0 = ads_mobile_sdk.by0.a(r7, r1, r3, r0)
            ads_mobile_sdk.nr r2 = ads_mobile_sdk.yr.f
            java.lang.Object r7 = r7.a(r1, r0, r2)
            java.lang.Number r7 = (java.lang.Number) r7
            int r7 = r7.intValue()
        L82:
            java.lang.Integer r7 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pt2.v(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0220 A[Catch: all -> 0x022c, TryCatch #8 {all -> 0x022c, blocks: (B:120:0x0219, B:122:0x0220, B:124:0x0224, B:126:0x0228, B:129:0x022f, B:131:0x0233, B:133:0x0237, B:135:0x023b, B:136:0x023c, B:137:0x0241, B:138:0x0242, B:139:0x0249, B:140:0x024a, B:141:0x0251, B:142:0x0252), top: B:164:0x0219, outer: #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0252 A[Catch: all -> 0x022c, TRY_LEAVE, TryCatch #8 {all -> 0x022c, blocks: (B:120:0x0219, B:122:0x0220, B:124:0x0224, B:126:0x0228, B:129:0x022f, B:131:0x0233, B:133:0x0237, B:135:0x023b, B:136:0x023c, B:137:0x0241, B:138:0x0242, B:139:0x0249, B:140:0x024a, B:141:0x0251, B:142:0x0252), top: B:164:0x0219, outer: #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0172 A[Catch: all -> 0x017e, TryCatch #14 {all -> 0x017e, blocks: (B:72:0x016b, B:74:0x0172, B:76:0x0176, B:78:0x017a, B:81:0x0181, B:83:0x0185, B:85:0x0189, B:87:0x018d, B:88:0x018e, B:89:0x0193, B:90:0x0194, B:91:0x019b, B:92:0x019c, B:93:0x01a3, B:94:0x01a4), top: B:174:0x016b, outer: #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01a4 A[Catch: all -> 0x017e, TRY_LEAVE, TryCatch #14 {all -> 0x017e, blocks: (B:72:0x016b, B:74:0x0172, B:76:0x0176, B:78:0x017a, B:81:0x0181, B:83:0x0185, B:85:0x0189, B:87:0x018d, B:88:0x018e, B:89:0x0193, B:90:0x0194, B:91:0x019b, B:92:0x019c, B:93:0x01a3, B:94:0x01a4), top: B:174:0x016b, outer: #7 }] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v10, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v20 */
    /* JADX WARN: Type inference failed for: r11v21 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v23 */
    /* JADX WARN: Type inference failed for: r11v3, types: [java.lang.Object, kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v3, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r5v31, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r5v34, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r5v36 */
    /* JADX WARN: Type inference failed for: r5v37 */
    /* JADX WARN: Type inference failed for: r5v38 */
    /* JADX WARN: Type inference failed for: r5v39 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v40 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object w(kotlin.coroutines.Continuation r18) {
        /*
            Method dump skipped, instruction units count: 606
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pt2.w(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object x(kotlin.coroutines.Continuation r12) {
        /*
            r11 = this;
            boolean r0 = r12 instanceof ads_mobile_sdk.nt2
            if (r0 == 0) goto L13
            r0 = r12
            ads_mobile_sdk.nt2 r0 = (ads_mobile_sdk.nt2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.nt2 r0 = new ads_mobile_sdk.nt2
            r0.<init>(r11, r12)
        L18:
            java.lang.Object r12 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            kotlinx.coroutines.sync.Mutex r1 = r0.b
            ads_mobile_sdk.pt2 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r12)
            goto L51
        L2e:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L36:
            kotlin.ResultKt.throwOnFailure(r12)
            boolean r12 = r11.H
            if (r12 != 0) goto L40
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        L40:
            kotlinx.coroutines.sync.Mutex r12 = r11.q
            r0.a = r11
            r0.b = r12
            r0.e = r3
            java.lang.Object r0 = r12.lock(r4, r0)
            if (r0 != r1) goto L4f
            return r1
        L4f:
            r0 = r11
            r1 = r12
        L51:
            kotlinx.coroutines.Job r12 = r0.r     // Catch: java.lang.Throwable -> L80
            boolean r12 = r12.isActive()     // Catch: java.lang.Throwable -> L80
            if (r12 != 0) goto L83
            kotlinx.coroutines.CoroutineScope r5 = r0.c     // Catch: java.lang.Throwable -> L80
            ads_mobile_sdk.ot2 r12 = new ads_mobile_sdk.ot2     // Catch: java.lang.Throwable -> L80
            r12.<init>(r0, r4)     // Catch: java.lang.Throwable -> L80
            kotlin.coroutines.EmptyCoroutineContext r6 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE     // Catch: java.lang.Throwable -> L80
            java.lang.String r2 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r2)     // Catch: java.lang.Throwable -> L80
            java.lang.String r2 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r2)     // Catch: java.lang.Throwable -> L80
            java.lang.String r2 = "block"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r2)     // Catch: java.lang.Throwable -> L80
            ads_mobile_sdk.ws3 r8 = new ads_mobile_sdk.ws3     // Catch: java.lang.Throwable -> L80
            r8.<init>(r12, r4)     // Catch: java.lang.Throwable -> L80
            r9 = 2
            r10 = 0
            r7 = 0
            kotlinx.coroutines.Job r12 = kotlinx.coroutines.BuildersKt.launch$default(r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L80
            r0.r = r12     // Catch: java.lang.Throwable -> L80
            goto L83
        L80:
            r0 = move-exception
            r12 = r0
            goto L89
        L83:
            kotlin.Unit r12 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L80
            r1.unlock(r4)
            return r12
        L89:
            r1.unlock(r4)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pt2.x(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Path cross not found for [B:34:0x00dc, B:69:0x017f], limit reached: 169 */
    /* JADX WARN: Path cross not found for [B:69:0x017f, B:34:0x00dc], limit reached: 169 */
    /* JADX WARN: Removed duplicated region for block: B:115:0x027a A[Catch: all -> 0x0254, TRY_LEAVE, TryCatch #3 {all -> 0x0254, blocks: (B:93:0x0241, B:95:0x0248, B:97:0x024c, B:99:0x0250, B:102:0x0257, B:104:0x025b, B:106:0x025f, B:108:0x0263, B:109:0x0264, B:110:0x0269, B:111:0x026a, B:112:0x0271, B:113:0x0272, B:114:0x0279, B:115:0x027a), top: B:170:0x0241 }] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x02bf A[Catch: all -> 0x02cb, TryCatch #6 {all -> 0x02cb, blocks: (B:129:0x02b8, B:131:0x02bf, B:133:0x02c3, B:135:0x02c7, B:138:0x02ce, B:140:0x02d2, B:142:0x02d6, B:144:0x02da, B:145:0x02db, B:146:0x02e0, B:147:0x02e1, B:148:0x02e8, B:149:0x02e9, B:150:0x02f0, B:151:0x02f1), top: B:175:0x02b8 }] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x02f1 A[Catch: all -> 0x02cb, TRY_LEAVE, TryCatch #6 {all -> 0x02cb, blocks: (B:129:0x02b8, B:131:0x02bf, B:133:0x02c3, B:135:0x02c7, B:138:0x02ce, B:140:0x02d2, B:142:0x02d6, B:144:0x02da, B:145:0x02db, B:146:0x02e0, B:147:0x02e1, B:148:0x02e8, B:149:0x02e9, B:150:0x02f0, B:151:0x02f1), top: B:175:0x02b8 }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004a A[PHI: r0 r2 r14 r15
      0x004a: PHI (r0v21 ads_mobile_sdk.cs2) = (r0v2 ads_mobile_sdk.cs2), (r0v27 ads_mobile_sdk.cs2) binds: [B:14:0x003f, B:58:0x0158] A[DONT_GENERATE, DONT_INLINE]
      0x004a: PHI (r2v29 ads_mobile_sdk.pt2) = (r2v17 ads_mobile_sdk.pt2), (r2v31 ads_mobile_sdk.pt2) binds: [B:14:0x003f, B:58:0x0158] A[DONT_GENERATE, DONT_INLINE]
      0x004a: PHI (r14v46 java.util.List) = (r14v18 java.util.List), (r14v48 java.util.List) binds: [B:14:0x003f, B:58:0x0158] A[DONT_GENERATE, DONT_INLINE]
      0x004a: PHI (r15v45 java.lang.Object) = (r15v1 java.lang.Object), (r15v50 java.lang.Object) binds: [B:14:0x003f, B:58:0x0158] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0112 A[EXC_TOP_SPLITTER, PHI: r0 r5 r14 r15
      0x0112: PHI (r0v29 ads_mobile_sdk.cs2) = (r0v2 ads_mobile_sdk.cs2), (r0v31 ads_mobile_sdk.cs2) binds: [B:31:0x00bb, B:42:0x010e] A[DONT_GENERATE, DONT_INLINE]
      0x0112: PHI (r5v13 ads_mobile_sdk.pt2) = (r5v2 ads_mobile_sdk.pt2), (r5v14 ads_mobile_sdk.pt2) binds: [B:31:0x00bb, B:42:0x010e] A[DONT_GENERATE, DONT_INLINE]
      0x0112: PHI (r14v50 kotlinx.coroutines.sync.Mutex) = (r14v5 kotlinx.coroutines.sync.Mutex), (r14v55 kotlinx.coroutines.sync.Mutex) binds: [B:31:0x00bb, B:42:0x010e] A[DONT_GENERATE, DONT_INLINE]
      0x0112: PHI (r15v57 java.util.List) = (r15v2 java.util.List), (r15v61 java.util.List) binds: [B:31:0x00bb, B:42:0x010e] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01ac A[PHI: r0 r5 r15
      0x01ac: PHI (r0v20 ads_mobile_sdk.cs2) = (r0v28 ads_mobile_sdk.cs2), (r0v29 ads_mobile_sdk.cs2) binds: [B:53:0x0136, B:46:0x0117] A[DONT_GENERATE, DONT_INLINE]
      0x01ac: PHI (r5v9 ads_mobile_sdk.pt2) = (r5v12 ads_mobile_sdk.pt2), (r5v13 ads_mobile_sdk.pt2) binds: [B:53:0x0136, B:46:0x0117] A[DONT_GENERATE, DONT_INLINE]
      0x01ac: PHI (r15v43 java.util.List) = (r15v56 java.util.List), (r15v57 java.util.List) binds: [B:53:0x0136, B:46:0x0117] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0248 A[Catch: all -> 0x0254, TryCatch #3 {all -> 0x0254, blocks: (B:93:0x0241, B:95:0x0248, B:97:0x024c, B:99:0x0250, B:102:0x0257, B:104:0x025b, B:106:0x025f, B:108:0x0263, B:109:0x0264, B:110:0x0269, B:111:0x026a, B:112:0x0271, B:113:0x0272, B:114:0x0279, B:115:0x027a), top: B:170:0x0241 }] */
    /* JADX WARN: Type inference failed for: r2v18, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v21, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v43 */
    /* JADX WARN: Type inference failed for: r2v45 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:68:0x017d -> B:34:0x00dc). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:0x01a8 -> B:34:0x00dc). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.pt2 r14, kotlin.coroutines.Continuation r15) {
        /*
            Method dump skipped, instruction units count: 804
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pt2.a(ads_mobile_sdk.pt2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x006e A[PHI: r9
      0x006e: PHI (r9v8 java.util.Iterator) = (r9v3 java.util.Iterator), (r9v10 java.util.Iterator) binds: [B:25:0x006a, B:43:0x00b4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00a6 -> B:38:0x00a7). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object c(java.util.List r9, ads_mobile_sdk.h6 r10, kotlin.coroutines.Continuation r11) {
        /*
            r8 = this;
            boolean r0 = r11 instanceof ads_mobile_sdk.ir2
            if (r0 == 0) goto L13
            r0 = r11
            ads_mobile_sdk.ir2 r0 = (ads_mobile_sdk.ir2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.ir2 r0 = new ads_mobile_sdk.ir2
            r0.<init>(r8, r11)
        L18:
            java.lang.Object r11 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L40
            if (r2 == r5) goto L38
            if (r2 != r4) goto L30
            java.util.Iterator r9 = r0.a
            kotlin.ResultKt.throwOnFailure(r11)
            goto La7
        L30:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L38:
            ads_mobile_sdk.h6 r9 = r0.b
            java.util.Iterator r10 = r0.a
            kotlin.ResultKt.throwOnFailure(r11)
            goto L8d
        L40:
            kotlin.ResultKt.throwOnFailure(r11)
            java.util.ArrayList r11 = new java.util.ArrayList
            r11.<init>()
            java.util.Iterator r9 = r9.iterator()
        L4c:
            boolean r2 = r9.hasNext()
            if (r2 == 0) goto L63
            java.lang.Object r2 = r9.next()
            r6 = r2
            ads_mobile_sdk.h6 r6 = (ads_mobile_sdk.h6) r6
            boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r10)
            if (r6 != 0) goto L4c
            r11.add(r2)
            goto L4c
        L63:
            boolean r9 = r11.isEmpty()
            if (r9 == 0) goto L6a
            goto Lb7
        L6a:
            java.util.Iterator r9 = r11.iterator()
        L6e:
            boolean r10 = r9.hasNext()
            if (r10 == 0) goto Lb7
            java.lang.Object r10 = r9.next()
            ads_mobile_sdk.h6 r10 = (ads_mobile_sdk.h6) r10
            r0.a = r9
            r0.b = r10
            r0.e = r5
            r10.getClass()
            java.lang.Object r11 = ads_mobile_sdk.h6.f(r10, r0)
            if (r11 != r1) goto L8a
            goto La5
        L8a:
            r7 = r10
            r10 = r9
            r9 = r7
        L8d:
            java.lang.Number r11 = (java.lang.Number) r11
            int r11 = r11.intValue()
            if (r11 != 0) goto Lb2
            r0.a = r10
            r11 = 0
            r0.b = r11
            r0.e = r4
            r9.getClass()
            java.lang.Object r11 = ads_mobile_sdk.h6.d(r9, r0)
            if (r11 != r1) goto La6
        La5:
            return r1
        La6:
            r9 = r10
        La7:
            java.lang.Boolean r11 = (java.lang.Boolean) r11
            boolean r10 = r11.booleanValue()
            if (r10 == 0) goto Lb1
            r10 = r5
            goto Lb4
        Lb1:
            r10 = r9
        Lb2:
            r9 = r10
            r10 = r3
        Lb4:
            if (r10 == 0) goto L6e
            r3 = r5
        Lb7:
            java.lang.Boolean r9 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pt2.c(java.util.List, ads_mobile_sdk.h6, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.ox0
    public final Object d(long j, Continuation continuation) {
        return a(this, j, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x006a, code lost:
    
        if (r13.lock(null, r0) == r1) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object d(ads_mobile_sdk.pt2 r10, long r11, kotlin.coroutines.Continuation r13) {
        /*
            boolean r0 = r13 instanceof ads_mobile_sdk.rr2
            if (r0 == 0) goto L13
            r0 = r13
            ads_mobile_sdk.rr2 r0 = (ads_mobile_sdk.rr2) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            ads_mobile_sdk.rr2 r0 = new ads_mobile_sdk.rr2
            r0.<init>(r10, r13)
        L18:
            java.lang.Object r13 = r0.e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.g
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L4b
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            long r10 = r0.d
            java.lang.Object r12 = r0.a
            java.util.Iterator r12 = (java.util.Iterator) r12
            kotlin.ResultKt.throwOnFailure(r13)
            goto L96
        L33:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L3b:
            long r11 = r0.d
            kotlinx.coroutines.sync.Mutex r10 = r0.c
            java.util.ArrayList r2 = r0.b
            java.lang.Object r4 = r0.a
            ads_mobile_sdk.pt2 r4 = (ads_mobile_sdk.pt2) r4
            kotlin.ResultKt.throwOnFailure(r13)
            r13 = r10
            r10 = r4
            goto L6d
        L4b:
            kotlin.ResultKt.throwOnFailure(r13)
            boolean r13 = r10.s
            if (r13 != 0) goto L55
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        L55:
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            kotlinx.coroutines.sync.Mutex r13 = r10.q
            r0.a = r10
            r0.b = r2
            r0.c = r13
            r0.d = r11
            r0.g = r4
            java.lang.Object r4 = r13.lock(r5, r0)
            if (r4 != r1) goto L6d
            goto Lb5
        L6d:
            long r6 = r10.y     // Catch: java.lang.Throwable -> Lb9
            int r4 = kotlin.time.Duration.m2871compareToLRDsOJo(r11, r6)     // Catch: java.lang.Throwable -> Lb9
            if (r4 <= 0) goto Lbb
            boolean r4 = r10.x     // Catch: java.lang.Throwable -> Lb9
            if (r4 != 0) goto L7a
            goto Lbb
        L7a:
            r4 = 0
            r10.x = r4     // Catch: java.lang.Throwable -> Lb9
            r10.y = r11     // Catch: java.lang.Throwable -> Lb9
            java.util.ArrayList r10 = r10.a(r5)     // Catch: java.lang.Throwable -> Lb9
            r2.addAll(r10)     // Catch: java.lang.Throwable -> Lb9
            r13.unlock(r5)
            boolean r10 = r2.isEmpty()
            if (r10 != 0) goto Lb6
            java.util.Iterator r10 = r2.iterator()
            r8 = r11
            r12 = r10
            r10 = r8
        L96:
            boolean r13 = r12.hasNext()
            if (r13 == 0) goto Lb6
            java.lang.Object r13 = r12.next()
            ads_mobile_sdk.h6 r13 = (ads_mobile_sdk.h6) r13
            r0.a = r12
            r0.b = r5
            r0.c = r5
            r0.d = r10
            r0.g = r3
            r13.getClass()
            java.lang.Object r13 = ads_mobile_sdk.h6.j(r13, r0)
            if (r13 != r1) goto L96
        Lb5:
            return r1
        Lb6:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        Lb9:
            r10 = move-exception
            goto Lc1
        Lbb:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> Lb9
            r13.unlock(r5)
            return r10
        Lc1:
            r13.unlock(r5)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pt2.d(ads_mobile_sdk.pt2, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0092 -> B:28:0x0097). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(java.util.List r13, ads_mobile_sdk.h6 r14, kotlin.coroutines.Continuation r15) {
        /*
            Method dump skipped, instruction units count: 243
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pt2.b(java.util.List, ads_mobile_sdk.h6, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.ox0
    public final Object b(long j, Continuation continuation) {
        return b(this, j, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0074, code lost:
    
        if (r12.lock(null, r0) == r1) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00d0, code lost:
    
        if (r2.x(r0) == r1) goto L41;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00c4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object b(ads_mobile_sdk.pt2 r9, long r10, kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 229
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pt2.b(ads_mobile_sdk.pt2, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0074, code lost:
    
        if (r12.lock(null, r0) == r1) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00cb, code lost:
    
        if (r2.x(r0) == r1) goto L41;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00bf A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object c(ads_mobile_sdk.pt2 r9, long r10, kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 224
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pt2.c(ads_mobile_sdk.pt2, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0261 A[Catch: all -> 0x026d, TryCatch #2 {all -> 0x026d, blocks: (B:122:0x025a, B:124:0x0261, B:126:0x0265, B:128:0x0269, B:131:0x0270, B:133:0x0274, B:135:0x0278, B:137:0x027c, B:138:0x027d, B:139:0x0282, B:140:0x0283, B:141:0x028a, B:142:0x028b, B:143:0x0292, B:144:0x0293), top: B:153:0x025a }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0293 A[Catch: all -> 0x026d, TRY_LEAVE, TryCatch #2 {all -> 0x026d, blocks: (B:122:0x025a, B:124:0x0261, B:126:0x0265, B:128:0x0269, B:131:0x0270, B:133:0x0274, B:135:0x0278, B:137:0x027c, B:138:0x027d, B:139:0x0282, B:140:0x0283, B:141:0x028a, B:142:0x028b, B:143:0x0292, B:144:0x0293), top: B:153:0x025a }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00f7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01a4 A[Catch: all -> 0x01b0, TryCatch #5 {all -> 0x01b0, blocks: (B:74:0x019d, B:76:0x01a4, B:78:0x01a8, B:80:0x01ac, B:83:0x01b3, B:85:0x01b7, B:87:0x01bb, B:89:0x01bf, B:90:0x01c0, B:91:0x01c5, B:92:0x01c6, B:93:0x01cd, B:94:0x01ce, B:95:0x01d5, B:96:0x01d6), top: B:158:0x019d }] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01d6 A[Catch: all -> 0x01b0, TRY_LEAVE, TryCatch #5 {all -> 0x01b0, blocks: (B:74:0x019d, B:76:0x01a4, B:78:0x01a8, B:80:0x01ac, B:83:0x01b3, B:85:0x01b7, B:87:0x01bb, B:89:0x01bf, B:90:0x01c0, B:91:0x01c5, B:92:0x01c6, B:93:0x01cd, B:94:0x01ce, B:95:0x01d5, B:96:0x01d6), top: B:158:0x019d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(java.util.List r17, kotlin.coroutines.Continuation r18) {
        /*
            Method dump skipped, instruction units count: 686
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pt2.b(java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.n92
    public final Object c(long j, Continuation continuation) {
        return d(this, j, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x008b, code lost:
    
        if (r12 == r1) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0119 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x008b -> B:24:0x008f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00fb -> B:42:0x00fe). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object c(java.util.List r11, kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 282
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pt2.c(java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object b(ads_mobile_sdk.pt2 r8, kotlin.coroutines.Continuation r9) {
        /*
            boolean r0 = r9 instanceof ads_mobile_sdk.fs2
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.fs2 r0 = (ads_mobile_sdk.fs2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.fs2 r0 = new ads_mobile_sdk.fs2
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            kotlinx.coroutines.sync.Mutex r8 = r0.b
            ads_mobile_sdk.pt2 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = r8
            r8 = r0
            goto La8
        L30:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L38:
            kotlin.ResultKt.throwOnFailure(r9)
            ads_mobile_sdk.ex0 r9 = r8.g
            r9.getClass()
            java.lang.String r2 = "gads:preload:bind_to_online:enabled"
            java.lang.String r5 = "key"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r5)
            java.lang.Boolean r6 = java.lang.Boolean.FALSE
            ads_mobile_sdk.ir r7 = ads_mobile_sdk.yr.b
            java.lang.Object r9 = r9.a(r2, r6, r7)
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            r8.s = r9
            ads_mobile_sdk.ex0 r9 = r8.g
            r9.getClass()
            java.lang.String r2 = "gads:preload:bind_on_foreground"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r5)
            java.lang.Object r9 = r9.a(r2, r6, r7)
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            r8.t = r9
            ads_mobile_sdk.ex0 r9 = r8.g
            r9.getClass()
            java.lang.String r2 = "gads:preload_app_open_in_background"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r5)
            java.lang.Object r9 = r9.a(r2, r6, r7)
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            r8.u = r9
            ads_mobile_sdk.ex0 r9 = r8.g
            r9.getClass()
            java.lang.String r2 = "gads:centralized_preload_manager:enabled"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r5)
            java.lang.Object r9 = r9.a(r2, r6, r7)
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            r8.H = r9
            kotlinx.coroutines.sync.Mutex r9 = r8.q
            r0.a = r8
            r0.b = r9
            r0.e = r3
            java.lang.Object r0 = r9.lock(r4, r0)
            if (r0 != r1) goto La8
            return r1
        La8:
            boolean r0 = r8.s     // Catch: java.lang.Throwable -> Laf
            if (r0 != 0) goto Lb1
            r8.x = r3     // Catch: java.lang.Throwable -> Laf
            goto Lb1
        Laf:
            r8 = move-exception
            goto Lc2
        Lb1:
            boolean r0 = r8.t     // Catch: java.lang.Throwable -> Laf
            if (r0 != 0) goto Lb7
            r8.v = r3     // Catch: java.lang.Throwable -> Laf
        Lb7:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> Laf
            r9.unlock(r4)
            ads_mobile_sdk.q01 r9 = new ads_mobile_sdk.q01
            r9.<init>(r8)
            return r9
        Lc2:
            r9.unlock(r4)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pt2.b(ads_mobile_sdk.pt2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0081, code lost:
    
        if (((java.lang.Boolean) r8).booleanValue() == false) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0078 -> B:29:0x007b). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.util.List r6, ads_mobile_sdk.h6 r7, kotlin.coroutines.Continuation r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof ads_mobile_sdk.br2
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.br2 r0 = (ads_mobile_sdk.br2) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.br2 r0 = new ads_mobile_sdk.br2
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            java.util.Iterator r6 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L7b
        L2b:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L33:
            kotlin.ResultKt.throwOnFailure(r8)
            java.util.ArrayList r8 = new java.util.ArrayList
            r8.<init>()
            java.util.Iterator r6 = r6.iterator()
        L3f:
            boolean r2 = r6.hasNext()
            if (r2 == 0) goto L56
            java.lang.Object r2 = r6.next()
            r4 = r2
            ads_mobile_sdk.h6 r4 = (ads_mobile_sdk.h6) r4
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r7)
            if (r4 != 0) goto L3f
            r8.add(r2)
            goto L3f
        L56:
            boolean r6 = r8.isEmpty()
            if (r6 == 0) goto L5d
            goto L84
        L5d:
            java.util.Iterator r6 = r8.iterator()
        L61:
            boolean r7 = r6.hasNext()
            if (r7 == 0) goto L84
            java.lang.Object r7 = r6.next()
            ads_mobile_sdk.h6 r7 = (ads_mobile_sdk.h6) r7
            r0.a = r6
            r0.d = r3
            r7.getClass()
            java.lang.Object r8 = ads_mobile_sdk.h6.d(r7, r0)
            if (r8 != r1) goto L7b
            return r1
        L7b:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r7 = r8.booleanValue()
            if (r7 == 0) goto L61
            goto L85
        L84:
            r3 = 0
        L85:
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pt2.a(java.util.List, ads_mobile_sdk.h6, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.h6 r10, java.util.List r11, int r12, java.lang.Integer r13, java.lang.Boolean r14, kotlin.coroutines.Continuation r15) {
        /*
            Method dump skipped, instruction units count: 414
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pt2.a(ads_mobile_sdk.h6, java.util.List, int, java.lang.Integer, java.lang.Boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final LinkedHashMap a(j53 j53Var) {
        switch (j53Var.ordinal()) {
            case 1:
                return this.z;
            case 2:
                return this.A;
            case 3:
            default:
                return null;
            case 4:
                return this.B;
            case 5:
                return this.C;
            case 6:
                return this.D;
            case 7:
                return this.E;
            case 8:
                return this.G;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0055 -> B:20:0x0058). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.util.List r5, kotlin.coroutines.Continuation r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof ads_mobile_sdk.hr2
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.hr2 r0 = (ads_mobile_sdk.hr2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.hr2 r0 = new ads_mobile_sdk.hr2
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            int r5 = r0.b
            java.util.Iterator r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L58
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r6)
            java.util.Iterator r5 = r5.iterator()
            r6 = 0
            r2 = r5
            r5 = r6
        L3f:
            boolean r6 = r2.hasNext()
            if (r6 == 0) goto L60
            java.lang.Object r6 = r2.next()
            ads_mobile_sdk.h6 r6 = (ads_mobile_sdk.h6) r6
            r0.a = r2
            r0.b = r5
            r0.e = r3
            java.lang.Object r6 = r6.b(r0)
            if (r6 != r1) goto L58
            return r1
        L58:
            java.lang.Number r6 = (java.lang.Number) r6
            int r6 = r6.intValue()
            int r5 = r5 + r6
            goto L3f
        L60:
            java.lang.Integer r5 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pt2.a(java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0074, code lost:
    
        if (r12.lock(null, r0) == r1) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00d1, code lost:
    
        if (r2.x(r0) == r1) goto L41;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00c5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.pt2 r9, long r10, kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 230
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pt2.a(ads_mobile_sdk.pt2, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.n92
    public final Object a(long j, Continuation continuation) {
        return c(this, j, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x0233, code lost:
    
        if (r4.x(r7) != r0) goto L112;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x024a A[Catch: all -> 0x0256, TryCatch #8 {all -> 0x0256, blocks: (B:118:0x0243, B:120:0x024a, B:122:0x024e, B:124:0x0252, B:127:0x0259, B:129:0x025d, B:131:0x0261, B:133:0x0265, B:134:0x0266, B:135:0x026b, B:136:0x026c, B:137:0x0273, B:138:0x0274, B:139:0x027b, B:140:0x027c), top: B:164:0x0243, outer: #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x027c A[Catch: all -> 0x0256, TRY_LEAVE, TryCatch #8 {all -> 0x0256, blocks: (B:118:0x0243, B:120:0x024a, B:122:0x024e, B:124:0x0252, B:127:0x0259, B:129:0x025d, B:131:0x0261, B:133:0x0265, B:134:0x0266, B:135:0x026b, B:136:0x026c, B:137:0x0273, B:138:0x0274, B:139:0x027b, B:140:0x027c), top: B:164:0x0243, outer: #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d8 A[Catch: all -> 0x00de, TRY_LEAVE, TryCatch #12 {all -> 0x00de, blocks: (B:41:0x00d4, B:43:0x00d8, B:48:0x00e2, B:50:0x010f, B:98:0x01c1), top: B:169:0x00d4 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00e2 A[Catch: all -> 0x00de, TRY_ENTER, TryCatch #12 {all -> 0x00de, blocks: (B:41:0x00d4, B:43:0x00d8, B:48:0x00e2, B:50:0x010f, B:98:0x01c1), top: B:169:0x00d4 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0182 A[Catch: all -> 0x018e, TryCatch #5 {all -> 0x018e, blocks: (B:68:0x017b, B:70:0x0182, B:72:0x0186, B:74:0x018a, B:77:0x0191, B:79:0x0195, B:81:0x0199, B:83:0x019d, B:84:0x019e, B:85:0x01a3, B:86:0x01a4, B:87:0x01ab, B:88:0x01ac, B:89:0x01b3, B:90:0x01b4), top: B:159:0x017b, outer: #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01b4 A[Catch: all -> 0x018e, TRY_LEAVE, TryCatch #5 {all -> 0x018e, blocks: (B:68:0x017b, B:70:0x0182, B:72:0x0186, B:74:0x018a, B:77:0x0191, B:79:0x0195, B:81:0x0199, B:83:0x019d, B:84:0x019e, B:85:0x01a3, B:86:0x01a4, B:87:0x01ab, B:88:0x01ac, B:89:0x01b3, B:90:0x01b4), top: B:159:0x017b, outer: #11 }] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.s11 r14, kotlin.coroutines.Continuation r15) {
        /*
            Method dump skipped, instruction units count: 668
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pt2.a(ads_mobile_sdk.s11, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final ArrayList a(Function1 function1) {
        Collection collectionValues;
        ArrayList arrayList = new ArrayList();
        for (j53 j53Var : j53.n) {
            if (function1 == null || !((Boolean) function1.invoke(j53Var)).booleanValue()) {
                LinkedHashMap linkedHashMapA = a(j53Var);
                if (linkedHashMapA != null && (collectionValues = linkedHashMapA.values()) != null) {
                    arrayList.addAll(collectionValues);
                }
            }
        }
        return arrayList;
    }
}
