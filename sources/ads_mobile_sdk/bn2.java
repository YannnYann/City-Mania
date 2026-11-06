package ads_mobile_sdk;

import com.ironsource.C3522b4;
import java.lang.ref.ReferenceQueue;
import java.util.LinkedHashMap;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class bn2 extends nc1 {
    public final CoroutineScope c;
    public final ex0 d;
    public boolean e;
    public final Mutex f;
    public final LinkedHashMap g;
    public final ReferenceQueue h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bn2(CoroutineScope backgroundScope, ex0 flags) {
        super((s11) null, 3);
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.c = backgroundScope;
        this.d = flags;
        this.f = MutexKt.Mutex$default(false, 1, null);
        this.g = new LinkedHashMap();
        this.h = new ReferenceQueue();
    }

    @Override // ads_mobile_sdk.nc1
    public final Object u(Continuation continuation) {
        ex0 ex0Var = this.d;
        ex0Var.getClass();
        boolean z = Duration.m2871compareToLRDsOJo(((Duration) ex0Var.a("gads:phantom_reference_interval:seconds", wm2.a(2, DurationUnit.MINUTES, "gads:phantom_reference_interval:seconds", C3522b4.i.W), yr.l)).m2906unboximpl(), Duration.Companion.m2911getZEROUwyO8pc()) > 0;
        this.e = z;
        if (z) {
            CoroutineScope coroutineScope = this.c;
            an2 block = new an2(this, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
        return new q01(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0065, code lost:
    
        if (r14.lock(null, r0) == r1) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00d4, code lost:
    
        if (kotlinx.coroutines.DelayKt.m2937delayVtjQ1oo(r6, r0) == r1) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00a0 -> B:21:0x0054). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a3 -> B:22:0x0055). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00d4 -> B:17:0x0046). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.bn2 r13, kotlin.coroutines.Continuation r14) {
        /*
            Method dump skipped, instruction units count: 215
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.bn2.a(ads_mobile_sdk.bn2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.bn2 r5, java.lang.Object r6, ads_mobile_sdk.vm2 r7, kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof ads_mobile_sdk.zm2
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.zm2 r0 = (ads_mobile_sdk.zm2) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            ads_mobile_sdk.zm2 r0 = new ads_mobile_sdk.zm2
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
            ads_mobile_sdk.vm2 r7 = r0.c
            java.lang.Object r6 = r0.b
            ads_mobile_sdk.bn2 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r5
            r5 = r0
            goto L59
        L34:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3c:
            kotlin.ResultKt.throwOnFailure(r8)
            boolean r8 = r5.e
            if (r8 != 0) goto L46
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L46:
            kotlinx.coroutines.sync.Mutex r8 = r5.f
            r0.a = r5
            r0.b = r6
            r0.c = r7
            r0.d = r8
            r0.g = r3
            java.lang.Object r0 = r8.lock(r4, r0)
            if (r0 != r1) goto L59
            return r1
        L59:
            java.util.LinkedHashMap r0 = r5.g     // Catch: java.lang.Throwable -> L6f
            ads_mobile_sdk.g01 r1 = new ads_mobile_sdk.g01     // Catch: java.lang.Throwable -> L6f
            java.lang.ref.ReferenceQueue r5 = r5.h     // Catch: java.lang.Throwable -> L6f
            r1.<init>(r7, r6, r5)     // Catch: java.lang.Throwable -> L6f
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)     // Catch: java.lang.Throwable -> L6f
            r0.put(r1, r5)     // Catch: java.lang.Throwable -> L6f
            kotlin.Unit r5 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L6f
            r8.unlock(r4)
            return r5
        L6f:
            r5 = move-exception
            r8.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.bn2.a(ads_mobile_sdk.bn2, java.lang.Object, ads_mobile_sdk.vm2, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
