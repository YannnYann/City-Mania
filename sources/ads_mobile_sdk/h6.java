package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import java.util.Queue;
import java.util.Set;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public abstract class h6 implements ox0, n92 {
    public static final Set K = SetsKt__SetsKt.setOf((Object[]) new LoadAdError.ErrorCode[]{LoadAdError.ErrorCode.INVALID_REQUEST, LoadAdError.ErrorCode.INVALID_AD_RESPONSE, LoadAdError.ErrorCode.REQUEST_ID_MISMATCH, LoadAdError.ErrorCode.APP_ID_MISSING, LoadAdError.ErrorCode.AD_RESPONSE_ALREADY_USED});
    public final Queue C;
    public final CompletableJob E;
    public CompletableJob F;
    public CompletableJob G;
    public CompletableJob H;
    public CompletableJob I;
    public CompletableJob J;
    public final CoroutineScope a;
    public final String b;
    public final g83 e;
    public final tx f;
    public final boolean j;
    public final j53 k;
    public final long m;
    public final boolean n;
    public final int p;
    public final Mutex u;
    public w4 v;
    public boolean y;

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object c(ads_mobile_sdk.h6 r6, kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof ads_mobile_sdk.x4
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.x4 r0 = (ads_mobile_sdk.x4) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.x4 r0 = new ads_mobile_sdk.x4
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L3f
            if (r2 == r4) goto L39
            if (r2 != r3) goto L31
            kotlinx.coroutines.sync.Mutex r6 = r0.b
            ads_mobile_sdk.h6 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L6c
        L31:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L39:
            ads_mobile_sdk.h6 r6 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L50
        L3f:
            kotlin.ResultKt.throwOnFailure(r7)
            r0.a = r6
            r0.e = r4
            r6.getClass()
            java.lang.Object r7 = d(r6, r0)
            if (r7 != r1) goto L50
            goto L69
        L50:
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 != 0) goto L5b
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L5b:
            kotlinx.coroutines.sync.Mutex r7 = r6.u
            r0.a = r6
            r0.b = r7
            r0.e = r3
            java.lang.Object r0 = r7.lock(r5, r0)
            if (r0 != r1) goto L6a
        L69:
            return r1
        L6a:
            r0 = r6
            r6 = r7
        L6c:
            kotlinx.coroutines.CompletableJob r7 = r0.H     // Catch: java.lang.Throwable -> L7b
            r7.complete()     // Catch: java.lang.Throwable -> L7b
            ads_mobile_sdk.w4 r7 = ads_mobile_sdk.w4.b     // Catch: java.lang.Throwable -> L7b
            r0.v = r7     // Catch: java.lang.Throwable -> L7b
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L7b
            r6.unlock(r5)
            return r7
        L7b:
            r7 = move-exception
            r6.unlock(r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.h6.c(ads_mobile_sdk.h6, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object d(ads_mobile_sdk.h6 r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof ads_mobile_sdk.y4
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.y4 r0 = (ads_mobile_sdk.y4) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.y4 r0 = new ads_mobile_sdk.y4
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
            ads_mobile_sdk.h6 r0 = r0.a
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
            kotlinx.coroutines.sync.Mutex r6 = r5.u
            r0.a = r5
            r0.b = r6
            r0.e = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L4a
            return r1
        L4a:
            boolean r0 = r5.y     // Catch: java.lang.Throwable -> L88
            if (r0 != 0) goto L8a
            java.util.Queue r0 = r5.C     // Catch: java.lang.Throwable -> L88
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L88
            int r1 = r5.p     // Catch: java.lang.Throwable -> L88
            if (r0 < r1) goto L59
            goto L8a
        L59:
            ads_mobile_sdk.w4 r0 = r5.v     // Catch: java.lang.Throwable -> L88
            ads_mobile_sdk.w4 r1 = ads_mobile_sdk.w4.c     // Catch: java.lang.Throwable -> L88
            if (r0 == r1) goto L8a
            kotlinx.coroutines.CompletableJob r0 = r5.E     // Catch: java.lang.Throwable -> L88
            boolean r0 = r0.isCompleted()     // Catch: java.lang.Throwable -> L88
            if (r0 == 0) goto L8a
            kotlinx.coroutines.CompletableJob r0 = r5.I     // Catch: java.lang.Throwable -> L88
            boolean r0 = r0.isCompleted()     // Catch: java.lang.Throwable -> L88
            if (r0 == 0) goto L8a
            kotlinx.coroutines.CompletableJob r0 = r5.J     // Catch: java.lang.Throwable -> L88
            boolean r0 = r0.isCompleted()     // Catch: java.lang.Throwable -> L88
            if (r0 == 0) goto L8a
            kotlinx.coroutines.CompletableJob r0 = r5.F     // Catch: java.lang.Throwable -> L88
            boolean r0 = r0.isCompleted()     // Catch: java.lang.Throwable -> L88
            if (r0 == 0) goto L8a
            kotlinx.coroutines.CompletableJob r5 = r5.G     // Catch: java.lang.Throwable -> L88
            boolean r5 = r5.isCompleted()     // Catch: java.lang.Throwable -> L88
            if (r5 == 0) goto L8a
            goto L8b
        L88:
            r5 = move-exception
            goto L93
        L8a:
            r3 = 0
        L8b:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)     // Catch: java.lang.Throwable -> L88
            r6.unlock(r4)
            return r5
        L93:
            r6.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.h6.d(ads_mobile_sdk.h6, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object e(ads_mobile_sdk.h6 r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof ads_mobile_sdk.n5
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.n5 r0 = (ads_mobile_sdk.n5) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.n5 r0 = new ads_mobile_sdk.n5
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
            ads_mobile_sdk.h6 r0 = r0.a
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
            kotlinx.coroutines.sync.Mutex r6 = r5.u
            r0.a = r5
            r0.b = r6
            r0.e = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L4a
            return r1
        L4a:
            ads_mobile_sdk.w4 r5 = r5.v     // Catch: java.lang.Throwable -> L5a
            ads_mobile_sdk.w4 r0 = ads_mobile_sdk.w4.c     // Catch: java.lang.Throwable -> L5a
            if (r5 != r0) goto L51
            goto L52
        L51:
            r3 = 0
        L52:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)     // Catch: java.lang.Throwable -> L5a
            r6.unlock(r4)
            return r5
        L5a:
            r5 = move-exception
            r6.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.h6.e(ads_mobile_sdk.h6, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x006c, code lost:
    
        if (r7.x(r0) == r1) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object h(ads_mobile_sdk.h6 r7, kotlin.coroutines.Continuation r8) throws java.lang.Throwable {
        /*
            boolean r0 = r8 instanceof ads_mobile_sdk.s5
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.s5 r0 = (ads_mobile_sdk.s5) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.s5 r0 = new ads_mobile_sdk.s5
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L47
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r7 = r0.a
            kotlinx.coroutines.sync.Mutex r7 = (kotlinx.coroutines.sync.Mutex) r7
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L31
            goto L72
        L31:
            r8 = move-exception
            goto L78
        L33:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3b:
            kotlinx.coroutines.sync.Mutex r7 = r0.b
            java.lang.Object r2 = r0.a
            ads_mobile_sdk.h6 r2 = (ads_mobile_sdk.h6) r2
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r7
            r7 = r2
            goto L59
        L47:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r7.u
            r0.a = r7
            r0.b = r8
            r0.e = r4
            java.lang.Object r2 = r8.lock(r5, r0)
            if (r2 != r1) goto L59
            goto L6e
        L59:
            kotlinx.coroutines.CompletableJob r2 = r7.J     // Catch: java.lang.Throwable -> L6f
            r2.complete()     // Catch: java.lang.Throwable -> L6f
            boolean r2 = r7.n     // Catch: java.lang.Throwable -> L6f
            if (r2 == 0) goto L71
            r0.a = r8     // Catch: java.lang.Throwable -> L6f
            r0.b = r5     // Catch: java.lang.Throwable -> L6f
            r0.e = r3     // Catch: java.lang.Throwable -> L6f
            java.lang.Object r7 = r7.x(r0)     // Catch: java.lang.Throwable -> L6f
            if (r7 != r1) goto L71
        L6e:
            return r1
        L6f:
            r7 = move-exception
            goto L7b
        L71:
            r7 = r8
        L72:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L31
            r7.unlock(r5)
            return r8
        L78:
            r6 = r8
            r8 = r7
            r7 = r6
        L7b:
            r8.unlock(r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.h6.h(ads_mobile_sdk.h6, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object j(ads_mobile_sdk.h6 r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof ads_mobile_sdk.u5
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.u5 r0 = (ads_mobile_sdk.u5) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.u5 r0 = new ads_mobile_sdk.u5
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
            ads_mobile_sdk.h6 r0 = r0.a
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
            kotlinx.coroutines.sync.Mutex r6 = r5.u
            r0.a = r5
            r0.b = r6
            r0.e = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L4a
            return r1
        L4a:
            kotlinx.coroutines.CompletableJob r0 = r5.I     // Catch: java.lang.Throwable -> L58
            boolean r0 = r0.isCompleted()     // Catch: java.lang.Throwable -> L58
            if (r0 != 0) goto L5a
            kotlin.Unit r5 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L58
            r6.unlock(r4)
            return r5
        L58:
            r5 = move-exception
            goto L7b
        L5a:
            kotlinx.coroutines.CompletableJob r0 = kotlinx.coroutines.JobKt.Job$default(r4, r3, r4)     // Catch: java.lang.Throwable -> L58
            r5.I = r0     // Catch: java.lang.Throwable -> L58
            boolean r0 = r5.j     // Catch: java.lang.Throwable -> L58
            if (r0 != 0) goto L65
            goto L75
        L65:
            ads_mobile_sdk.w4 r0 = r5.v     // Catch: java.lang.Throwable -> L58
            ads_mobile_sdk.w4 r1 = ads_mobile_sdk.w4.b     // Catch: java.lang.Throwable -> L58
            if (r0 != r1) goto L75
            ads_mobile_sdk.w4 r0 = ads_mobile_sdk.w4.a     // Catch: java.lang.Throwable -> L58
            r5.v = r0     // Catch: java.lang.Throwable -> L58
            kotlinx.coroutines.CompletableJob r0 = kotlinx.coroutines.JobKt.Job$default(r4, r3, r4)     // Catch: java.lang.Throwable -> L58
            r5.H = r0     // Catch: java.lang.Throwable -> L58
        L75:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L58
            r6.unlock(r4)
            return r5
        L7b:
            r6.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.h6.j(ads_mobile_sdk.h6, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object x(kotlin.coroutines.Continuation r20) {
        /*
            r19 = this;
            r0 = r19
            r1 = r20
            boolean r2 = r1 instanceof ads_mobile_sdk.y5
            if (r2 == 0) goto L17
            r2 = r1
            ads_mobile_sdk.y5 r2 = (ads_mobile_sdk.y5) r2
            int r3 = r2.f
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L17
            int r3 = r3 - r4
            r2.f = r3
            goto L1c
        L17:
            ads_mobile_sdk.y5 r2 = new ads_mobile_sdk.y5
            r2.<init>(r0, r1)
        L1c:
            java.lang.Object r1 = r2.d
            java.lang.Object r3 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r4 = r2.f
            r5 = 1
            if (r4 == 0) goto L3b
            if (r4 != r5) goto L33
            long r6 = r2.c
            java.util.Iterator r4 = r2.b
            ads_mobile_sdk.h6 r8 = r2.a
            kotlin.ResultKt.throwOnFailure(r1)
            goto L56
        L33:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L3b:
            kotlin.ResultKt.throwOnFailure(r1)
            kotlin.time.Duration$Companion r1 = kotlin.time.Duration.Companion
            ads_mobile_sdk.tx r1 = r0.f
            r1.getClass()
            long r6 = android.os.SystemClock.elapsedRealtime()
            kotlin.time.DurationUnit r1 = kotlin.time.DurationUnit.MILLISECONDS
            long r6 = kotlin.time.DurationKt.toDuration(r6, r1)
            java.util.Queue r1 = r0.C
            java.util.Iterator r4 = r1.iterator()
            r8 = r0
        L56:
            boolean r1 = r4.hasNext()
            if (r1 == 0) goto Lbf
            java.lang.Object r1 = r4.next()
            ads_mobile_sdk.yt2 r1 = (ads_mobile_sdk.yt2) r1
            long r9 = r1.b
            long r11 = r8.m
            long r9 = kotlin.time.Duration.m2897plusLRDsOJo(r9, r11)
            long r9 = kotlin.time.Duration.m2896minusLRDsOJo(r9, r6)
            kotlin.time.Duration$Companion r11 = kotlin.time.Duration.Companion
            long r11 = r11.m2911getZEROUwyO8pc()
            int r11 = kotlin.time.Duration.m2871compareToLRDsOJo(r9, r11)
            if (r11 > 0) goto L8c
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            r2.a = r8
            r2.b = r4
            r2.c = r6
            r2.f = r5
            java.lang.Object r1 = r8.a(r4, r1, r2)
            if (r1 != r3) goto L56
            return r3
        L8c:
            kotlinx.coroutines.Job r11 = r1.c
            r12 = 0
            if (r11 == 0) goto L94
            kotlinx.coroutines.Job.DefaultImpls.cancel$default(r11, r12, r5, r12)
        L94:
            kotlinx.coroutines.CoroutineScope r13 = r8.a
            ads_mobile_sdk.z5 r11 = new ads_mobile_sdk.z5
            r11.<init>(r9, r8, r12)
            kotlin.coroutines.EmptyCoroutineContext r14 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE
            java.lang.String r9 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r9)
            java.lang.String r9 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r14, r9)
            java.lang.String r9 = "block"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r9)
            ads_mobile_sdk.ws3 r9 = new ads_mobile_sdk.ws3
            r9.<init>(r11, r12)
            r17 = 2
            r18 = 0
            r15 = 0
            r16 = r9
            kotlinx.coroutines.Job r9 = kotlinx.coroutines.BuildersKt.launch$default(r13, r14, r15, r16, r17, r18)
            r1.c = r9
            goto L56
        Lbf:
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.h6.x(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006d A[Catch: all -> 0x0036, TryCatch #0 {all -> 0x0036, blocks: (B:13:0x0032, B:25:0x0067, B:27:0x006d, B:29:0x0092, B:32:0x00a4, B:24:0x005f), top: B:37:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v5, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.h6 r13, kotlin.coroutines.Continuation r14) {
        /*
            r13.getClass()
            boolean r0 = r14 instanceof ads_mobile_sdk.z4
            if (r0 == 0) goto L16
            r0 = r14
            ads_mobile_sdk.z4 r0 = (ads_mobile_sdk.z4) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.f = r1
            goto L1b
        L16:
            ads_mobile_sdk.z4 r0 = new ads_mobile_sdk.z4
            r0.<init>(r13, r14)
        L1b:
            java.lang.Object r14 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L4c
            if (r2 == r4) goto L41
            if (r2 != r3) goto L39
            java.util.Iterator r13 = r0.c
            kotlinx.coroutines.sync.Mutex r2 = r0.b
            ads_mobile_sdk.h6 r4 = r0.a
            kotlin.ResultKt.throwOnFailure(r14)     // Catch: java.lang.Throwable -> L36
            goto L67
        L36:
            r13 = move-exception
            goto Laa
        L39:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r14)
            throw r13
        L41:
            kotlinx.coroutines.sync.Mutex r13 = r0.b
            ads_mobile_sdk.h6 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r14)
            r12 = r2
            r2 = r13
            r13 = r12
            goto L5f
        L4c:
            kotlin.ResultKt.throwOnFailure(r14)
            kotlinx.coroutines.sync.Mutex r14 = r13.u
            r0.a = r13
            r0.b = r14
            r0.f = r4
            java.lang.Object r2 = r14.lock(r5, r0)
            if (r2 != r1) goto L5e
            goto La3
        L5e:
            r2 = r14
        L5f:
            java.util.Queue r14 = r13.C     // Catch: java.lang.Throwable -> L36
            java.util.Iterator r14 = r14.iterator()     // Catch: java.lang.Throwable -> L36
            r4 = r13
            r13 = r14
        L67:
            boolean r14 = r13.hasNext()     // Catch: java.lang.Throwable -> L36
            if (r14 == 0) goto La4
            java.lang.Object r14 = r13.next()     // Catch: java.lang.Throwable -> L36
            ads_mobile_sdk.yt2 r14 = (ads_mobile_sdk.yt2) r14     // Catch: java.lang.Throwable -> L36
            kotlin.time.Duration$Companion r6 = kotlin.time.Duration.Companion     // Catch: java.lang.Throwable -> L36
            ads_mobile_sdk.tx r6 = r4.f     // Catch: java.lang.Throwable -> L36
            r6.getClass()     // Catch: java.lang.Throwable -> L36
            long r6 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L36
            kotlin.time.DurationUnit r8 = kotlin.time.DurationUnit.MILLISECONDS     // Catch: java.lang.Throwable -> L36
            long r6 = kotlin.time.DurationKt.toDuration(r6, r8)     // Catch: java.lang.Throwable -> L36
            long r8 = r14.b     // Catch: java.lang.Throwable -> L36
            long r10 = r4.m     // Catch: java.lang.Throwable -> L36
            long r8 = kotlin.time.Duration.m2897plusLRDsOJo(r8, r10)     // Catch: java.lang.Throwable -> L36
            int r6 = kotlin.time.Duration.m2871compareToLRDsOJo(r6, r8)     // Catch: java.lang.Throwable -> L36
            if (r6 < 0) goto L67
            kotlin.jvm.internal.Intrinsics.checkNotNull(r14)     // Catch: java.lang.Throwable -> L36
            r0.a = r4     // Catch: java.lang.Throwable -> L36
            r0.b = r2     // Catch: java.lang.Throwable -> L36
            r0.c = r13     // Catch: java.lang.Throwable -> L36
            r0.f = r3     // Catch: java.lang.Throwable -> L36
            java.lang.Object r14 = r4.a(r13, r14, r0)     // Catch: java.lang.Throwable -> L36
            if (r14 != r1) goto L67
        La3:
            return r1
        La4:
            kotlin.Unit r13 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L36
            r2.unlock(r5)
            return r13
        Laa:
            r2.unlock(r5)
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.h6.a(ads_mobile_sdk.h6, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object g(ads_mobile_sdk.h6 r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof ads_mobile_sdk.r5
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.r5 r0 = (ads_mobile_sdk.r5) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.r5 r0 = new ads_mobile_sdk.r5
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
            ads_mobile_sdk.h6 r0 = r0.a
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
            kotlinx.coroutines.sync.Mutex r6 = r5.u
            r0.a = r5
            r0.b = r6
            r0.e = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L4a
            return r1
        L4a:
            kotlinx.coroutines.CompletableJob r0 = r5.J     // Catch: java.lang.Throwable -> L58
            boolean r0 = r0.isCompleted()     // Catch: java.lang.Throwable -> L58
            if (r0 != 0) goto L5a
            kotlin.Unit r5 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L58
            r6.unlock(r4)
            return r5
        L58:
            r5 = move-exception
            goto L7b
        L5a:
            kotlinx.coroutines.CompletableJob r0 = kotlinx.coroutines.JobKt.Job$default(r4, r3, r4)     // Catch: java.lang.Throwable -> L58
            r5.J = r0     // Catch: java.lang.Throwable -> L58
            boolean r0 = r5.j     // Catch: java.lang.Throwable -> L58
            if (r0 != 0) goto L65
            goto L75
        L65:
            ads_mobile_sdk.w4 r0 = r5.v     // Catch: java.lang.Throwable -> L58
            ads_mobile_sdk.w4 r1 = ads_mobile_sdk.w4.b     // Catch: java.lang.Throwable -> L58
            if (r0 != r1) goto L75
            ads_mobile_sdk.w4 r0 = ads_mobile_sdk.w4.a     // Catch: java.lang.Throwable -> L58
            r5.v = r0     // Catch: java.lang.Throwable -> L58
            kotlinx.coroutines.CompletableJob r0 = kotlinx.coroutines.JobKt.Job$default(r4, r3, r4)     // Catch: java.lang.Throwable -> L58
            r5.H = r0     // Catch: java.lang.Throwable -> L58
        L75:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L58
            r6.unlock(r4)
            return r5
        L7b:
            r6.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.h6.g(ads_mobile_sdk.h6, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object i(ads_mobile_sdk.h6 r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof ads_mobile_sdk.t5
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.t5 r0 = (ads_mobile_sdk.t5) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.t5 r0 = new ads_mobile_sdk.t5
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
            ads_mobile_sdk.h6 r0 = r0.a
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
            kotlinx.coroutines.sync.Mutex r6 = r5.u
            r0.a = r5
            r0.b = r6
            r0.e = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L4a
            return r1
        L4a:
            kotlinx.coroutines.CompletableJob r5 = r5.I     // Catch: java.lang.Throwable -> L55
            r5.complete()     // Catch: java.lang.Throwable -> L55
            kotlin.Unit r5 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L55
            r6.unlock(r4)
            return r5
        L55:
            r5 = move-exception
            r6.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.h6.i(ads_mobile_sdk.h6, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object f(ads_mobile_sdk.h6 r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof ads_mobile_sdk.o5
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.o5 r0 = (ads_mobile_sdk.o5) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.o5 r0 = new ads_mobile_sdk.o5
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
            ads_mobile_sdk.h6 r0 = r0.a
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
            kotlinx.coroutines.sync.Mutex r6 = r5.u
            r0.a = r5
            r0.b = r6
            r0.e = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L4a
            return r1
        L4a:
            java.util.Queue r5 = r5.C     // Catch: java.lang.Throwable -> L58
            int r5 = r5.size()     // Catch: java.lang.Throwable -> L58
            java.lang.Integer r5 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r5)     // Catch: java.lang.Throwable -> L58
            r6.unlock(r4)
            return r5
        L58:
            r5 = move-exception
            r6.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.h6.f(ads_mobile_sdk.h6, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.ox0
    public final Object d(long j, Continuation continuation) {
        return g(this, continuation);
    }

    @Override // ads_mobile_sdk.n92
    public final Object c(long j, Continuation continuation) {
        return j(this, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0099 A[Catch: all -> 0x00a5, TryCatch #3 {all -> 0x00a5, blocks: (B:37:0x0092, B:39:0x0099, B:41:0x009d, B:43:0x00a1, B:46:0x00a7, B:48:0x00ab, B:50:0x00af, B:52:0x00b3, B:53:0x00b4, B:54:0x00b9, B:55:0x00ba, B:56:0x00c1, B:57:0x00c2, B:58:0x00c9, B:59:0x00ca), top: B:105:0x0092 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00ca A[Catch: all -> 0x00a5, TRY_LEAVE, TryCatch #3 {all -> 0x00a5, blocks: (B:37:0x0092, B:39:0x0099, B:41:0x009d, B:43:0x00a1, B:46:0x00a7, B:48:0x00ab, B:50:0x00af, B:52:0x00b3, B:53:0x00b4, B:54:0x00b9, B:55:0x00ba, B:56:0x00c1, B:57:0x00c2, B:58:0x00c9, B:59:0x00ca), top: B:105:0x0092 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00f1 A[Catch: all -> 0x00fd, TryCatch #8 {all -> 0x00fd, blocks: (B:72:0x00ea, B:74:0x00f1, B:76:0x00f5, B:78:0x00f9, B:81:0x00ff, B:83:0x0103, B:85:0x0107, B:87:0x010b, B:88:0x010c, B:89:0x0111, B:90:0x0112, B:91:0x0119, B:92:0x011a, B:93:0x0121, B:94:0x0122), top: B:114:0x00ea }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0122 A[Catch: all -> 0x00fd, TRY_LEAVE, TryCatch #8 {all -> 0x00fd, blocks: (B:72:0x00ea, B:74:0x00f1, B:76:0x00f5, B:78:0x00f9, B:81:0x00ff, B:83:0x0103, B:85:0x0107, B:87:0x010b, B:88:0x010c, B:89:0x0111, B:90:0x0112, B:91:0x0119, B:92:0x011a, B:93:0x0121, B:94:0x0122), top: B:114:0x00ea }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.util.Iterator r9, ads_mobile_sdk.yt2 r10, kotlin.coroutines.Continuation r11) {
        /*
            Method dump skipped, instruction units count: 297
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.h6.a(java.util.Iterator, ads_mobile_sdk.yt2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.n92
    public final Object a(long j, Continuation continuation) {
        return i(this, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(kotlin.coroutines.Continuation r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof ads_mobile_sdk.b5
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.b5 r0 = (ads_mobile_sdk.b5) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.b5 r0 = new ads_mobile_sdk.b5
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            kotlinx.coroutines.sync.Mutex r1 = r0.b
            ads_mobile_sdk.h6 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4a
        L2e:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L36:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.sync.Mutex r6 = r5.u
            r0.a = r5
            r0.b = r6
            r0.e = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L48
            return r1
        L48:
            r0 = r5
            r1 = r6
        L4a:
            java.util.Queue r6 = r0.C     // Catch: java.lang.Throwable -> L5f
            int r6 = r6.size()     // Catch: java.lang.Throwable -> L5f
            int r2 = r6 + (-1)
            ads_mobile_sdk.w4 r0 = r0.v     // Catch: java.lang.Throwable -> L5f
            ads_mobile_sdk.w4 r3 = ads_mobile_sdk.w4.c     // Catch: java.lang.Throwable -> L5f
            if (r0 == r3) goto L61
            ads_mobile_sdk.w4 r3 = ads_mobile_sdk.w4.b     // Catch: java.lang.Throwable -> L5f
            if (r0 != r3) goto L5d
            goto L61
        L5d:
            r6 = r2
            goto L61
        L5f:
            r6 = move-exception
            goto L6e
        L61:
            r0 = 0
            int r6 = java.lang.Math.max(r0, r6)     // Catch: java.lang.Throwable -> L5f
            java.lang.Integer r6 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r6)     // Catch: java.lang.Throwable -> L5f
            r1.unlock(r4)
            return r6
        L6e:
            r1.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.h6.b(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.ox0
    public final Object b(long j, Continuation continuation) {
        return h(this, continuation);
    }
}
