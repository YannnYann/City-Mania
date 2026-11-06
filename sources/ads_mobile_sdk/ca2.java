package ads_mobile_sdk;

import android.content.Context;
import android.net.ConnectivityManager;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class ca2 implements pa2 {
    public final Context a;
    public final CoroutineScope b;
    public final tx c;
    public final ur3 d;
    public final Set e;
    public ConnectivityManager f;
    public w92 g;
    public final Mutex h;
    public boolean i;
    public long j;
    public un3 k;
    public final AtomicBoolean l;
    public final AtomicInteger m;
    public final AtomicInteger n;

    public ca2(Context context, CoroutineScope backgroundScope, tx clock, ur3 traceLogger, Set networkChangeListeners) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(networkChangeListeners, "networkChangeListeners");
        this.a = context;
        this.b = backgroundScope;
        this.c = clock;
        this.d = traceLogger;
        this.e = networkChangeListeners;
        this.h = MutexKt.Mutex$default(false, 1, null);
        this.i = true;
        this.j = Duration.m2896minusLRDsOJo(Duration.Companion.m2911getZEROUwyO8pc(), DurationKt.toDuration(1, DurationUnit.SECONDS));
        this.l = new AtomicBoolean(true);
        this.m = new AtomicInteger(0);
        this.n = new AtomicInteger(-1);
    }

    public final boolean c() {
        return this.l.get();
    }

    public final int a() {
        return this.m.get();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation r13) {
        /*
            r12 = this;
            boolean r0 = r13 instanceof ads_mobile_sdk.o92
            if (r0 == 0) goto L13
            r0 = r13
            ads_mobile_sdk.o92 r0 = (ads_mobile_sdk.o92) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.o92 r0 = new ads_mobile_sdk.o92
            r0.<init>(r12, r13)
        L18:
            java.lang.Object r13 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            kotlinx.coroutines.sync.Mutex r1 = r0.b
            ads_mobile_sdk.ca2 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r13)
            goto L4a
        L2e:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r0)
            throw r13
        L36:
            kotlin.ResultKt.throwOnFailure(r13)
            kotlinx.coroutines.sync.Mutex r13 = r12.h
            r0.a = r12
            r0.b = r13
            r0.e = r3
            java.lang.Object r0 = r13.lock(r4, r0)
            if (r0 != r1) goto L48
            return r1
        L48:
            r0 = r12
            r1 = r13
        L4a:
            ads_mobile_sdk.un3 r13 = r0.k     // Catch: java.lang.Throwable -> L7c
            r1.unlock(r4)
            if (r13 != 0) goto L7b
            ads_mobile_sdk.un3 r5 = new ads_mobile_sdk.un3
            android.content.Context r13 = r0.a
            java.lang.String r6 = ads_mobile_sdk.db2.b(r13)
            android.content.Context r13 = r0.a
            int r7 = ads_mobile_sdk.db2.a(r13, r4)
            android.content.Context r13 = r0.a
            int r8 = ads_mobile_sdk.db2.c(r13)
            android.content.Context r13 = r0.a
            int r9 = ads_mobile_sdk.db2.d(r13)
            android.content.Context r13 = r0.a
            boolean r10 = ads_mobile_sdk.db2.e(r13)
            android.content.Context r13 = r0.a
            int r11 = ads_mobile_sdk.db2.a(r13)
            r5.<init>(r6, r7, r8, r9, r10, r11)
            return r5
        L7b:
            return r13
        L7c:
            r0 = move-exception
            r13 = r0
            r1.unlock(r4)
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ca2.a(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final int b() {
        return this.n.get();
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(kotlin.coroutines.Continuation r10) {
        /*
            Method dump skipped, instruction units count: 236
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ca2.b(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x015e A[Catch: all -> 0x0164, TRY_LEAVE, TryCatch #1 {all -> 0x0164, blocks: (B:61:0x0156, B:63:0x015e, B:68:0x0166, B:70:0x018a, B:76:0x0197), top: B:107:0x0156 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0166 A[Catch: all -> 0x0164, TRY_ENTER, TryCatch #1 {all -> 0x0164, blocks: (B:61:0x0156, B:63:0x015e, B:68:0x0166, B:70:0x018a, B:76:0x0197), top: B:107:0x0156 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01e3 A[Catch: all -> 0x01e8, TryCatch #2 {all -> 0x01e8, blocks: (B:84:0x01d4, B:86:0x01e3, B:90:0x01eb, B:92:0x01f4, B:94:0x01fa), top: B:108:0x01d4 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01f4 A[Catch: all -> 0x01e8, TryCatch #2 {all -> 0x01e8, blocks: (B:84:0x01d4, B:86:0x01e3, B:90:0x01eb, B:92:0x01f4, B:94:0x01fa), top: B:108:0x01d4 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x020f A[LOOP:0: B:97:0x0209->B:99:0x020f, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(long r24, android.net.Network r26, android.net.NetworkCapabilities r27, boolean r28, kotlin.coroutines.Continuation r29) {
        /*
            Method dump skipped, instruction units count: 571
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ca2.a(long, android.net.Network, android.net.NetworkCapabilities, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
