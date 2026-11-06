package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class ro2 {
    public final CoroutineScope a;
    public final tx b;
    public final ex0 c;
    public final eu2 d;
    public final g83 e;
    public final Mutex f;
    public long g;
    public cu2 h;
    public Job i;

    public ro2(CoroutineScope backgroundScope, tx clock, ex0 flags, eu2 prewarmManagerProvider, g83 rootTraceCreator) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(prewarmManagerProvider, "prewarmManagerProvider");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        this.a = backgroundScope;
        this.b = clock;
        this.c = flags;
        this.d = prewarmManagerProvider;
        this.e = rootTraceCreator;
        this.f = MutexKt.Mutex$default(false, 1, null);
        this.g = -1L;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.ro2 r8, kotlin.coroutines.Continuation r9) {
        /*
            r8.getClass()
            boolean r0 = r9 instanceof ads_mobile_sdk.oo2
            if (r0 == 0) goto L16
            r0 = r9
            ads_mobile_sdk.oo2 r0 = (ads_mobile_sdk.oo2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.e = r1
            goto L1b
        L16:
            ads_mobile_sdk.oo2 r0 = new ads_mobile_sdk.oo2
            r0.<init>(r8, r9)
        L1b:
            java.lang.Object r9 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            kotlinx.coroutines.sync.Mutex r8 = r0.b
            ads_mobile_sdk.ro2 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = r8
            r8 = r0
            goto L4d
        L33:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3b:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.sync.Mutex r9 = r8.f
            r0.a = r8
            r0.b = r9
            r0.e = r3
            java.lang.Object r0 = r9.lock(r4, r0)
            if (r0 != r1) goto L4d
            return r1
        L4d:
            ads_mobile_sdk.tx r0 = r8.b     // Catch: java.lang.Throwable -> Lac
            r0.getClass()     // Catch: java.lang.Throwable -> Lac
            long r0 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> Lac
            long r2 = r8.g     // Catch: java.lang.Throwable -> Lac
            long r0 = r0 - r2
            ads_mobile_sdk.ex0 r2 = r8.c     // Catch: java.lang.Throwable -> Lac
            r2.getClass()     // Catch: java.lang.Throwable -> Lac
            java.lang.String r3 = "gads:play_prewarm_manager_connection_duration"
            kotlin.time.Duration$Companion r5 = kotlin.time.Duration.Companion     // Catch: java.lang.Throwable -> Lac
            kotlin.time.DurationUnit r5 = kotlin.time.DurationUnit.SECONDS     // Catch: java.lang.Throwable -> Lac
            r6 = 180(0xb4, float:2.52E-43)
            long r5 = kotlin.time.DurationKt.toDuration(r6, r5)     // Catch: java.lang.Throwable -> Lac
            java.lang.String r7 = "key"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r7)     // Catch: java.lang.Throwable -> Lac
            kotlin.time.Duration r5 = kotlin.time.Duration.m2870boximpl(r5)     // Catch: java.lang.Throwable -> Lac
            ads_mobile_sdk.ur r6 = ads_mobile_sdk.yr.l     // Catch: java.lang.Throwable -> Lac
            java.lang.Object r2 = r2.a(r3, r5, r6)     // Catch: java.lang.Throwable -> Lac
            kotlin.time.Duration r2 = (kotlin.time.Duration) r2     // Catch: java.lang.Throwable -> Lac
            long r2 = r2.m2906unboximpl()     // Catch: java.lang.Throwable -> Lac
            long r2 = kotlin.time.Duration.m2881getInWholeMillisecondsimpl(r2)     // Catch: java.lang.Throwable -> Lac
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 <= 0) goto Lb0
            ads_mobile_sdk.cu2 r0 = r8.h     // Catch: java.lang.Throwable -> Lac
            if (r0 == 0) goto Lae
            ads_mobile_sdk.du2 r0 = (ads_mobile_sdk.du2) r0     // Catch: java.lang.Throwable -> Lac
            ads_mobile_sdk.iu2 r0 = r0.a     // Catch: java.lang.Throwable -> Lac
            ads_mobile_sdk.lc3 r1 = r0.a     // Catch: java.lang.Throwable -> Lac
            if (r1 != 0) goto L94
            goto Lae
        L94:
            ads_mobile_sdk.pt1 r1 = ads_mobile_sdk.iu2.c     // Catch: java.lang.Throwable -> Lac
            java.lang.String r2 = "detach"
            r3 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> Lac
            r1.a(r2, r3)     // Catch: java.lang.Throwable -> Lac
            ads_mobile_sdk.lc3 r0 = r0.a     // Catch: java.lang.Throwable -> Lac
            r0.getClass()     // Catch: java.lang.Throwable -> Lac
            ads_mobile_sdk.gc3 r1 = new ads_mobile_sdk.gc3     // Catch: java.lang.Throwable -> Lac
            r1.<init>(r0)     // Catch: java.lang.Throwable -> Lac
            r0.b(r1)     // Catch: java.lang.Throwable -> Lac
            goto Lae
        Lac:
            r8 = move-exception
            goto Lb6
        Lae:
            r8.h = r4     // Catch: java.lang.Throwable -> Lac
        Lb0:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> Lac
            r9.unlock(r4)
            return r8
        Lb6:
            r9.unlock(r4)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ro2.a(ads_mobile_sdk.ro2, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
