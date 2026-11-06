package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.ironsource.C3522b4;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class ek2 implements zj2, ox0 {
    public final CoroutineScope a;
    public final cw2 b;
    public final cl2 c;
    public final g83 d;
    public final tx e;
    public final Mutex f;
    public final ConcurrentHashMap g;
    public boolean h;
    public CompletableJob i;

    public ek2(CoroutineScope backgroundScope, dw2 persistentCacheFillManager, cl2 flags, g83 rootTraceCreator, tx clock) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(persistentCacheFillManager, "persistentCacheFillManager");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.a = backgroundScope;
        this.b = persistentCacheFillManager;
        this.c = flags;
        this.d = rootTraceCreator;
        this.e = clock;
        this.f = MutexKt.Mutex$default(false, 1, null);
        this.g = new ConcurrentHashMap();
        this.h = true;
        CompletableJob completableJobJob$default = JobKt__JobKt.Job$default(null, 1, null);
        if (this.h || !flags.b()) {
            completableJobJob$default.complete();
        }
        this.i = completableJobJob$default;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object b(ads_mobile_sdk.ek2 r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof ads_mobile_sdk.bk2
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.bk2 r0 = (ads_mobile_sdk.bk2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.bk2 r0 = new ads_mobile_sdk.bk2
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
            ads_mobile_sdk.ek2 r0 = r0.a
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
            kotlinx.coroutines.sync.Mutex r6 = r5.f
            r0.a = r5
            r0.b = r6
            r0.e = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L4a
            return r1
        L4a:
            r0 = 0
            r5.h = r0     // Catch: java.lang.Throwable -> L64
            ads_mobile_sdk.cl2 r0 = r5.c     // Catch: java.lang.Throwable -> L64
            boolean r0 = r0.b()     // Catch: java.lang.Throwable -> L64
            if (r0 == 0) goto L66
            kotlinx.coroutines.CompletableJob r0 = r5.i     // Catch: java.lang.Throwable -> L64
            boolean r0 = r0.isCompleted()     // Catch: java.lang.Throwable -> L64
            if (r0 == 0) goto L66
            kotlinx.coroutines.CompletableJob r0 = kotlinx.coroutines.JobKt.Job$default(r4, r3, r4)     // Catch: java.lang.Throwable -> L64
            r5.i = r0     // Catch: java.lang.Throwable -> L64
            goto L66
        L64:
            r5 = move-exception
            goto L6c
        L66:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L64
            r6.unlock(r4)
            return r5
        L6c:
            r6.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ek2.b(ads_mobile_sdk.ek2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object c(ads_mobile_sdk.ek2 r6, kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof ads_mobile_sdk.ck2
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.ck2 r0 = (ads_mobile_sdk.ck2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.ck2 r0 = new ads_mobile_sdk.ck2
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            kotlinx.coroutines.sync.Mutex r6 = r0.b
            ads_mobile_sdk.ek2 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            r7 = r6
            r6 = r0
            goto L4a
        L30:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L38:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.sync.Mutex r7 = r6.f
            r0.a = r6
            r0.b = r7
            r0.e = r3
            java.lang.Object r0 = r7.lock(r4, r0)
            if (r0 != r1) goto L4a
            return r1
        L4a:
            ads_mobile_sdk.cl2 r0 = r6.c     // Catch: java.lang.Throwable -> L6a
            r0.getClass()     // Catch: java.lang.Throwable -> L6a
            java.lang.String r1 = "gads:pc:reschedule_auto_refresh_on_app_foreground"
            java.lang.String r2 = "key"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r2)     // Catch: java.lang.Throwable -> L6a
            java.lang.Boolean r2 = java.lang.Boolean.FALSE     // Catch: java.lang.Throwable -> L6a
            ads_mobile_sdk.ir r5 = ads_mobile_sdk.yr.b     // Catch: java.lang.Throwable -> L6a
            java.lang.Object r0 = r0.a(r1, r2, r5)     // Catch: java.lang.Throwable -> L6a
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L6a
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L6a
            if (r0 == 0) goto L6c
            r6.a()     // Catch: java.lang.Throwable -> L6a
            goto L6c
        L6a:
            r6 = move-exception
            goto L79
        L6c:
            r6.h = r3     // Catch: java.lang.Throwable -> L6a
            kotlinx.coroutines.CompletableJob r6 = r6.i     // Catch: java.lang.Throwable -> L6a
            r6.complete()     // Catch: java.lang.Throwable -> L6a
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L6a
            r7.unlock(r4)
            return r6
        L79:
            r7.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ek2.c(ads_mobile_sdk.ek2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.ox0
    public final Object d(long j, Continuation continuation) {
        return b(this, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0079, code lost:
    
        if (r6.join(r0) == r1) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.ek2 r6, kotlin.coroutines.Continuation r7) {
        /*
            r6.getClass()
            boolean r0 = r7 instanceof ads_mobile_sdk.dk2
            if (r0 == 0) goto L16
            r0 = r7
            ads_mobile_sdk.dk2 r0 = (ads_mobile_sdk.dk2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.e = r1
            goto L1b
        L16:
            ads_mobile_sdk.dk2 r0 = new ads_mobile_sdk.dk2
            r0.<init>(r6, r7)
        L1b:
            java.lang.Object r7 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L42
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            kotlin.ResultKt.throwOnFailure(r7)
            goto L7c
        L30:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L38:
            kotlinx.coroutines.sync.Mutex r6 = r0.b
            ads_mobile_sdk.ek2 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            r7 = r6
            r6 = r2
            goto L54
        L42:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.sync.Mutex r7 = r6.f
            r0.a = r6
            r0.b = r7
            r0.e = r4
            java.lang.Object r2 = r7.lock(r5, r0)
            if (r2 != r1) goto L54
            goto L7b
        L54:
            ads_mobile_sdk.cl2 r2 = r6.c     // Catch: java.lang.Throwable -> L67
            boolean r2 = r2.b()     // Catch: java.lang.Throwable -> L67
            if (r2 == 0) goto L69
            kotlinx.coroutines.CompletableJob r2 = r6.i     // Catch: java.lang.Throwable -> L67
            boolean r2 = r2.isCompleted()     // Catch: java.lang.Throwable -> L67
            if (r2 != 0) goto L69
            kotlinx.coroutines.CompletableJob r6 = r6.i     // Catch: java.lang.Throwable -> L67
            goto L6a
        L67:
            r6 = move-exception
            goto L7f
        L69:
            r6 = r5
        L6a:
            r7.unlock(r5)
            if (r6 == 0) goto L7c
            r0.a = r5
            r0.b = r5
            r0.e = r3
            java.lang.Object r6 = r6.join(r0)
            if (r6 != r1) goto L7c
        L7b:
            return r1
        L7c:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L7f:
            r7.unlock(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ek2.a(ads_mobile_sdk.ek2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.ox0
    public final Object b(long j, Continuation continuation) {
        return c(this, continuation);
    }

    public final void a(String filename) {
        Job job;
        Intrinsics.checkNotNullParameter(filename, "filename");
        ko koVar = (ko) this.g.remove(filename);
        if (koVar == null || (job = koVar.h) == null) {
            return;
        }
        Job.DefaultImpls.cancel$default(job, null, 1, null);
    }

    public final Job a(ko koVar, long j) {
        CoroutineScope coroutineScope = this.a;
        ak2 block = new ak2(j, this, koVar, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        return BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    public final void a() {
        long duration;
        this.e.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        for (ko koVar : this.g.values()) {
            if (koVar.h.isActive()) {
                long j = koVar.g - jCurrentTimeMillis;
                if (j <= 0) {
                    duration = Duration.Companion.m2911getZEROUwyO8pc();
                } else {
                    Duration.Companion companion = Duration.Companion;
                    duration = DurationKt.toDuration(j, DurationUnit.MILLISECONDS);
                }
                Job.DefaultImpls.cancel$default(koVar.h, null, 1, null);
                Intrinsics.checkNotNull(koVar);
                Job jobA = a(koVar, duration);
                Intrinsics.checkNotNullParameter(jobA, "<set-?>");
                koVar.h = jobA;
            }
        }
    }

    public final void a(AdRequest adRequest, j53 format, int i, om2 token) {
        long jM2906unboximpl;
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(format, "requestType");
        Intrinsics.checkNotNullParameter(token, "token");
        cl2 cl2Var = this.c;
        cl2Var.getClass();
        Intrinsics.checkNotNullParameter("gads:pc:enable_auto_refresh", C3522b4.i.W);
        if (((Boolean) cl2Var.a("gads:pc:enable_auto_refresh", Boolean.FALSE, yr.b)).booleanValue()) {
            Intrinsics.checkNotNullParameter(format, "format");
            int iOrdinal = format.ordinal();
            if (iOrdinal == 1) {
                cl2 cl2Var2 = this.c;
                cl2Var2.getClass();
                Duration.Companion companion = Duration.Companion;
                jM2906unboximpl = ((Duration) cl2Var2.a("gads:pc:app_open_ad_auto_refresh_interval_millis", wm2.a(6, DurationUnit.HOURS, "gads:pc:app_open_ad_auto_refresh_interval_millis", C3522b4.i.W), yr.j)).m2906unboximpl();
            } else if (iOrdinal == 3) {
                cl2 cl2Var3 = this.c;
                cl2Var3.getClass();
                Duration.Companion companion2 = Duration.Companion;
                jM2906unboximpl = ((Duration) cl2Var3.a("gads:pc:icon_ad_auto_refresh_interval_millis", wm2.a(12, DurationUnit.HOURS, "gads:pc:icon_ad_auto_refresh_interval_millis", C3522b4.i.W), yr.j)).m2906unboximpl();
            } else if (iOrdinal != 5) {
                jM2906unboximpl = Duration.Companion.m2911getZEROUwyO8pc();
            } else {
                cl2 cl2Var4 = this.c;
                cl2Var4.getClass();
                Duration.Companion companion3 = Duration.Companion;
                jM2906unboximpl = ((Duration) cl2Var4.a("gads:pc:native_ad_auto_refresh_interval_millis", wm2.a(6, DurationUnit.HOURS, "gads:pc:native_ad_auto_refresh_interval_millis", C3522b4.i.W), yr.j)).m2906unboximpl();
            }
            long j = jM2906unboximpl;
            if (Duration.m2871compareToLRDsOJo(j, Duration.Companion.m2911getZEROUwyO8pc()) <= 0) {
                return;
            }
            a(token.a);
            m21 m21Var = o21.f;
            String strC = m21.c(adRequest.getAdUnitId());
            if (strC == null) {
                strC = adRequest.getAdUnitId();
            }
            this.e.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            ko koVar = new ko(strC, adRequest, format, i, token, jCurrentTimeMillis, Duration.m2881getInWholeMillisecondsimpl(j) + jCurrentTimeMillis, JobKt__JobKt.Job$default(null, 1, null));
            Job jobA = a(koVar, j);
            Intrinsics.checkNotNullParameter(jobA, "<set-?>");
            koVar.h = jobA;
            this.g.put(token.a, koVar);
        }
    }
}
