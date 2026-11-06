package ads_mobile_sdk;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class yf3 {
    public final g83 a;
    public final tx b;
    public final long c;
    public final Mutex d;
    public final ArrayList e;
    public final nq0 f;

    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r14, com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest r15, com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals r16, java.lang.String r17, kotlin.coroutines.Continuation r18) {
        /*
            r13 = this;
            r0 = r18
            boolean r1 = r0 instanceof ads_mobile_sdk.uf3
            if (r1 == 0) goto L15
            r1 = r0
            ads_mobile_sdk.uf3 r1 = (ads_mobile_sdk.uf3) r1
            int r2 = r1.i
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.i = r2
            goto L1a
        L15:
            ads_mobile_sdk.uf3 r1 = new ads_mobile_sdk.uf3
            r1.<init>(r13, r0)
        L1a:
            java.lang.Object r0 = r1.g
            java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r3 = r1.i
            r4 = 1
            r5 = 0
            if (r3 == 0) goto L44
            if (r3 != r4) goto L3c
            kotlinx.coroutines.sync.Mutex r14 = r1.f
            java.lang.String r15 = r1.e
            com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals r2 = r1.d
            com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest r3 = r1.c
            java.lang.String r4 = r1.b
            ads_mobile_sdk.yf3 r1 = r1.a
            kotlin.ResultKt.throwOnFailure(r0)
            r12 = r15
            r11 = r2
            r10 = r3
            r9 = r4
            goto L68
        L3c:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r15 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r15)
            throw r14
        L44:
            kotlin.ResultKt.throwOnFailure(r0)
            kotlinx.coroutines.sync.Mutex r0 = r13.d
            r1.a = r13
            r1.b = r14
            r1.c = r15
            r3 = r16
            r1.d = r3
            r6 = r17
            r1.e = r6
            r1.f = r0
            r1.i = r4
            java.lang.Object r1 = r0.lock(r5, r1)
            if (r1 != r2) goto L62
            return r2
        L62:
            r1 = r13
            r9 = r14
            r10 = r15
            r14 = r0
            r11 = r3
            r12 = r6
        L68:
            ads_mobile_sdk.nq0 r15 = r1.f     // Catch: java.lang.Throwable -> L8f
            ads_mobile_sdk.tf3 r6 = new ads_mobile_sdk.tf3     // Catch: java.lang.Throwable -> L8f
            kotlin.time.Duration$Companion r0 = kotlin.time.Duration.Companion     // Catch: java.lang.Throwable -> L8f
            ads_mobile_sdk.tx r0 = r1.b     // Catch: java.lang.Throwable -> L8f
            r0.getClass()     // Catch: java.lang.Throwable -> L8f
            long r2 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L8f
            kotlin.time.DurationUnit r0 = kotlin.time.DurationUnit.MILLISECONDS     // Catch: java.lang.Throwable -> L8f
            long r7 = kotlin.time.DurationKt.toDuration(r2, r0)     // Catch: java.lang.Throwable -> L8f
            r6.<init>(r7, r9, r10, r11, r12)     // Catch: java.lang.Throwable -> L8f
            r15.put(r9, r6)     // Catch: java.lang.Throwable -> L8f
            r1.a()     // Catch: java.lang.Throwable -> L8f
            r1.b()     // Catch: java.lang.Throwable -> L8f
            kotlin.Unit r15 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L8f
            r14.unlock(r5)
            return r15
        L8f:
            r0 = move-exception
            r15 = r0
            r14.unlock(r5)
            throw r15
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.yf3.a(java.lang.String, com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest, com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public yf3(ex0 flags, g83 rootTraceCreator, tx clock) {
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = rootTraceCreator;
        this.b = clock;
        int iI0 = flags.I0();
        this.c = flags.J0();
        this.d = MutexKt.Mutex$default(false, 1, null);
        ArrayList arrayList = new ArrayList();
        this.e = arrayList;
        this.f = new nq0(iI0, arrayList);
    }

    public final void b() {
        if (this.e.isEmpty()) {
            return;
        }
        da3 builder = ea3.v();
        Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
        Intrinsics.checkNotNullParameter(builder, "builder");
        for (Pair pair : this.e) {
            aa3 value = (aa3) pair.component1();
            tf3 tf3Var = (tf3) pair.component2();
            List listH = builder.h();
            Intrinsics.checkNotNullExpressionValue(listH, "getEvictionsList(...)");
            lo0 lo0Var = new lo0(listH);
            z93 builder2 = ba3.v();
            Intrinsics.checkNotNullExpressionValue(builder2, "newBuilder(...)");
            Intrinsics.checkNotNullParameter(builder2, "builder");
            Intrinsics.checkNotNullParameter(value, "value");
            builder2.a(value);
            String value2 = tf3Var.c.requestId;
            String value3 = "";
            if (value2 == null) {
                value2 = "";
            }
            Intrinsics.checkNotNullParameter(value2, "value");
            builder2.b(value2);
            String str = tf3Var.c.requestAgent;
            if (str != null) {
                value3 = str;
            }
            Intrinsics.checkNotNullParameter(value3, "value");
            builder2.a(value3);
            x11 value4 = tf3Var.b.a();
            Intrinsics.checkNotNullParameter(value4, "value");
            builder2.a(value4);
            vz0 vz0VarB = builder2.b();
            Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
            ba3 value5 = (ba3) vz0VarB;
            Intrinsics.checkNotNullParameter(lo0Var, "<this>");
            Intrinsics.checkNotNullParameter(value5, "value");
            builder.a(value5);
        }
        vz0 vz0VarB2 = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB2, "build(...)");
        ea3 ea3Var = (ea3) vz0VarB2;
        g83 g83Var = this.a;
        s11 s11Var = s11.CUI_NAME_SCAR_CACHE_EVICTION;
        ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
        List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                hs3.a().e().u = ea3Var;
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(tu2VarA, null);
            } catch (Throwable th) {
                try {
                    tu2VarA.b(th);
                    if (!(th instanceof v24)) {
                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                            tu2VarA.a(th);
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            if (!(th instanceof CancellationException)) {
                                if (!(th instanceof w01)) {
                                    throw new b01(th);
                                }
                                throw th;
                            }
                            throw new wz0(th);
                        }
                        throw new i21(th);
                    }
                    throw th;
                } finally {
                }
            }
        } else {
            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt__CollectionsKt.emptyList(), true);
            try {
                hs3.a().e().u = ea3Var;
                Unit unit2 = Unit.INSTANCE;
                CloseableKt.closeFinally(rr3VarA, null);
            } catch (Throwable th2) {
                try {
                    rr3VarA.b(th2);
                    if (!(th2 instanceof v24)) {
                        if (!(th2 instanceof TimeoutCancellationException) && !(th2 instanceof CancellationException)) {
                            rr3VarA.a(th2);
                        }
                        if (!(th2 instanceof TimeoutCancellationException)) {
                            if (!(th2 instanceof CancellationException)) {
                                if (!(th2 instanceof w01)) {
                                    throw new b01(th2);
                                }
                                throw th2;
                            }
                            throw new wz0(th2);
                        }
                        throw new i21(th2);
                    }
                    throw th2;
                } finally {
                }
            }
        }
        this.e.clear();
    }

    public final void a() {
        Duration.Companion companion = Duration.Companion;
        this.b.getClass();
        long duration = DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS);
        Iterator it = this.f.entrySet().iterator();
        while (it.hasNext()) {
            tf3 tf3Var = (tf3) ((Map.Entry) it.next()).getValue();
            if (Duration.m2871compareToLRDsOJo(duration, Duration.m2897plusLRDsOJo(tf3Var.a, this.c)) <= 0) {
                return;
            }
            it.remove();
            this.e.add(new Pair(aa3.EVICTION_REASON_EXPIRED, tf3Var));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r6, kotlin.coroutines.Continuation r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof ads_mobile_sdk.vf3
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.vf3 r0 = (ads_mobile_sdk.vf3) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.vf3 r0 = new ads_mobile_sdk.vf3
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            kotlinx.coroutines.sync.Mutex r6 = r0.c
            java.lang.String r1 = r0.b
            ads_mobile_sdk.yf3 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            r7 = r6
            r6 = r1
            goto L4f
        L32:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3a:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.sync.Mutex r7 = r5.d
            r0.a = r5
            r0.b = r6
            r0.c = r7
            r0.f = r3
            java.lang.Object r0 = r7.lock(r4, r0)
            if (r0 != r1) goto L4e
            return r1
        L4e:
            r0 = r5
        L4f:
            ads_mobile_sdk.nq0 r0 = r0.f     // Catch: java.lang.Throwable -> L5b
            java.lang.Object r6 = r0.get(r6)     // Catch: java.lang.Throwable -> L5b
            ads_mobile_sdk.tf3 r6 = (ads_mobile_sdk.tf3) r6     // Catch: java.lang.Throwable -> L5b
            r7.unlock(r4)
            return r6
        L5b:
            r6 = move-exception
            r7.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.yf3.a(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r6, java.lang.String r7, kotlin.coroutines.Continuation r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof ads_mobile_sdk.wf3
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.wf3 r0 = (ads_mobile_sdk.wf3) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            ads_mobile_sdk.wf3 r0 = new ads_mobile_sdk.wf3
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.g
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L34
            kotlinx.coroutines.sync.Mutex r6 = r0.d
            java.lang.String r7 = r0.c
            java.lang.String r1 = r0.b
            ads_mobile_sdk.yf3 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r6
            r6 = r1
            goto L53
        L34:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3c:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r5.d
            r0.a = r5
            r0.b = r6
            r0.c = r7
            r0.d = r8
            r0.g = r3
            java.lang.Object r0 = r8.lock(r4, r0)
            if (r0 != r1) goto L52
            return r1
        L52:
            r0 = r5
        L53:
            r1 = 0
            if (r7 != 0) goto L60
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r1)     // Catch: java.lang.Throwable -> L5e
            r8.unlock(r4)
            return r6
        L5e:
            r6 = move-exception
            goto L7a
        L60:
            ads_mobile_sdk.nq0 r0 = r0.f     // Catch: java.lang.Throwable -> L5e
            java.lang.Object r6 = r0.get(r6)     // Catch: java.lang.Throwable -> L5e
            ads_mobile_sdk.tf3 r6 = (ads_mobile_sdk.tf3) r6     // Catch: java.lang.Throwable -> L5e
            if (r6 == 0) goto L72
            java.util.LinkedHashSet r6 = r6.e     // Catch: java.lang.Throwable -> L5e
            if (r6 == 0) goto L72
            boolean r1 = r6.contains(r7)     // Catch: java.lang.Throwable -> L5e
        L72:
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r1)     // Catch: java.lang.Throwable -> L5e
            r8.unlock(r4)
            return r6
        L7a:
            r8.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.yf3.a(java.lang.String, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r6, java.lang.String r7, ads_mobile_sdk.tf3 r8, int r9, kotlin.coroutines.Continuation r10) {
        /*
            r5 = this;
            boolean r0 = r10 instanceof ads_mobile_sdk.xf3
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.xf3 r0 = (ads_mobile_sdk.xf3) r0
            int r1 = r0.i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.i = r1
            goto L18
        L13:
            ads_mobile_sdk.xf3 r0 = new ads_mobile_sdk.xf3
            r0.<init>(r5, r10)
        L18:
            java.lang.Object r10 = r0.g
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.i
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L40
            if (r2 != r3) goto L38
            int r9 = r0.f
            kotlinx.coroutines.sync.Mutex r6 = r0.e
            ads_mobile_sdk.tf3 r8 = r0.d
            java.lang.String r7 = r0.c
            java.lang.String r1 = r0.b
            ads_mobile_sdk.yf3 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            r10 = r6
            r6 = r1
            goto L5b
        L38:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L40:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.sync.Mutex r10 = r5.d
            r0.a = r5
            r0.b = r6
            r0.c = r7
            r0.d = r8
            r0.e = r10
            r0.f = r9
            r0.i = r3
            java.lang.Object r0 = r10.lock(r4, r0)
            if (r0 != r1) goto L5a
            return r1
        L5a:
            r0 = r5
        L5b:
            if (r7 != 0) goto L6a
            ads_mobile_sdk.nq0 r7 = r0.f     // Catch: java.lang.Throwable -> L68
            r7.remove(r6)     // Catch: java.lang.Throwable -> L68
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L68
            r10.unlock(r4)
            return r6
        L68:
            r6 = move-exception
            goto L82
        L6a:
            java.util.LinkedHashSet r1 = r8.e     // Catch: java.lang.Throwable -> L68
            r1.add(r7)     // Catch: java.lang.Throwable -> L68
            java.util.LinkedHashSet r7 = r8.e     // Catch: java.lang.Throwable -> L68
            int r7 = r7.size()     // Catch: java.lang.Throwable -> L68
            if (r7 < r9) goto L7c
            ads_mobile_sdk.nq0 r7 = r0.f     // Catch: java.lang.Throwable -> L68
            r7.remove(r6)     // Catch: java.lang.Throwable -> L68
        L7c:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L68
            r10.unlock(r4)
            return r6
        L82:
            r10.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.yf3.a(java.lang.String, java.lang.String, ads_mobile_sdk.tf3, int, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
