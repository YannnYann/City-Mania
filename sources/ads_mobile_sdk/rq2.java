package ads_mobile_sdk;

import com.ironsource.C3522b4;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class rq2 implements ai1 {
    public final tq2 a;
    public final CoroutineScope b;
    public final j53 c;
    public final ex0 d;
    public final AtomicBoolean e;
    public final Mutex f;
    public Job g;
    public final boolean h;

    public rq2(tq2 adCloseManager, CoroutineScope backgroundScope, j53 requestType, ex0 flags, g83 rootTraceCreator) {
        Intrinsics.checkNotNullParameter(adCloseManager, "adCloseManager");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        this.a = adCloseManager;
        this.b = backgroundScope;
        this.c = requestType;
        this.d = flags;
        boolean z = false;
        this.e = new AtomicBoolean(false);
        this.f = MutexKt.Mutex$default(false, 1, null);
        if (flags.H() && SetsKt__SetsKt.setOf((Object[]) new j53[]{j53.h, j53.j, j53.k, j53.e}).contains(requestType)) {
            z = true;
        }
        this.h = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.ai1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object h(kotlin.coroutines.Continuation r12) {
        /*
            r11 = this;
            boolean r0 = r12 instanceof ads_mobile_sdk.nq2
            if (r0 == 0) goto L13
            r0 = r12
            ads_mobile_sdk.nq2 r0 = (ads_mobile_sdk.nq2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.nq2 r0 = new ads_mobile_sdk.nq2
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
            ads_mobile_sdk.rq2 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r12)
            goto L5a
        L2e:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L36:
            kotlin.ResultKt.throwOnFailure(r12)
            boolean r12 = r11.h
            if (r12 != 0) goto L40
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        L40:
            java.util.concurrent.atomic.AtomicBoolean r12 = r11.e
            r2 = 0
            boolean r12 = r12.compareAndSet(r2, r3)
            if (r12 == 0) goto L94
            kotlinx.coroutines.sync.Mutex r12 = r11.f
            r0.a = r11
            r0.b = r12
            r0.e = r3
            java.lang.Object r0 = r12.lock(r4, r0)
            if (r0 != r1) goto L58
            return r1
        L58:
            r0 = r11
            r1 = r12
        L5a:
            kotlinx.coroutines.Job r12 = r0.g     // Catch: java.lang.Throwable -> L62
            if (r12 == 0) goto L65
            kotlinx.coroutines.Job.DefaultImpls.cancel$default(r12, r4, r3, r4)     // Catch: java.lang.Throwable -> L62
            goto L65
        L62:
            r0 = move-exception
            r12 = r0
            goto L90
        L65:
            r0.g = r4     // Catch: java.lang.Throwable -> L62
            kotlin.Unit r12 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L62
            r1.unlock(r4)
            kotlinx.coroutines.CoroutineScope r5 = r0.b
            ads_mobile_sdk.oq2 r12 = new ads_mobile_sdk.oq2
            r12.<init>(r0, r4)
            kotlin.coroutines.EmptyCoroutineContext r6 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = "block"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r0)
            ads_mobile_sdk.ws3 r8 = new ads_mobile_sdk.ws3
            r8.<init>(r12, r4)
            r9 = 2
            r10 = 0
            r7 = 0
            kotlinx.coroutines.BuildersKt.launch$default(r5, r6, r7, r8, r9, r10)
            goto L94
        L90:
            r1.unlock(r4)
            throw r12
        L94:
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.rq2.h(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.ai1
    public final Unit e() {
        long jM2906unboximpl;
        if (!this.h) {
            return Unit.INSTANCE;
        }
        int iOrdinal = this.c.ordinal();
        if (iOrdinal == 1) {
            ex0 ex0Var = this.d;
            ex0Var.getClass();
            Duration.Companion companion = Duration.Companion;
            jM2906unboximpl = ((Duration) ex0Var.a("gads:app_open_ad_close_timeout", wm2.a(3, DurationUnit.MINUTES, "gads:app_open_ad_close_timeout", C3522b4.i.W), yr.j)).m2906unboximpl();
        } else if (iOrdinal == 4) {
            ex0 ex0Var2 = this.d;
            ex0Var2.getClass();
            Duration.Companion companion2 = Duration.Companion;
            jM2906unboximpl = ((Duration) ex0Var2.a("gads:interstitial_ad_close_timeout", wm2.a(3, DurationUnit.MINUTES, "gads:interstitial_ad_close_timeout", C3522b4.i.W), yr.j)).m2906unboximpl();
        } else if (iOrdinal == 6) {
            ex0 ex0Var3 = this.d;
            ex0Var3.getClass();
            Duration.Companion companion3 = Duration.Companion;
            jM2906unboximpl = ((Duration) ex0Var3.a("gads:rewarded_ad_close_timeout", wm2.a(3, DurationUnit.MINUTES, "gads:rewarded_ad_close_timeout", C3522b4.i.W), yr.j)).m2906unboximpl();
        } else if (iOrdinal != 7) {
            jM2906unboximpl = Duration.Companion.m2911getZEROUwyO8pc();
        } else {
            ex0 ex0Var4 = this.d;
            ex0Var4.getClass();
            Duration.Companion companion4 = Duration.Companion;
            jM2906unboximpl = ((Duration) ex0Var4.a("gads:rewarded_interstitial_ad_close_timeout", wm2.a(3, DurationUnit.MINUTES, "gads:rewarded_interstitial_ad_close_timeout", C3522b4.i.W), yr.j)).m2906unboximpl();
        }
        if (Duration.m2895isPositiveimpl(jM2906unboximpl)) {
            CoroutineScope coroutineScope = this.b;
            qq2 block = new qq2(jM2906unboximpl, this, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
        return Unit.INSTANCE;
    }
}
