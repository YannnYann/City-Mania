package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class f14 extends SuspendLambda implements Function2 {
    public Mutex a;
    public r14 b;
    public int c;
    public final /* synthetic */ r14 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f14(r14 r14Var, Continuation continuation) {
        super(2, continuation);
        this.d = r14Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new f14(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new f14(this.d, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0088 A[Catch: all -> 0x0041, TryCatch #0 {all -> 0x0041, blocks: (B:12:0x0031, B:14:0x0035, B:16:0x0039, B:21:0x0045, B:23:0x004d, B:26:0x0088, B:27:0x00b9), top: B:32:0x0031 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            r12 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r12.c
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L1c
            if (r1 != r2) goto L14
            ads_mobile_sdk.r14 r0 = r12.b
            kotlinx.coroutines.sync.Mutex r1 = r12.a
            kotlin.ResultKt.throwOnFailure(r13)
            goto L31
        L14:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r0)
            throw r13
        L1c:
            kotlin.ResultKt.throwOnFailure(r13)
            ads_mobile_sdk.r14 r13 = r12.d
            kotlinx.coroutines.sync.Mutex r1 = r13.o
            r12.a = r1
            r12.b = r13
            r12.c = r2
            java.lang.Object r4 = r1.lock(r3, r12)
            if (r4 != r0) goto L30
            return r0
        L30:
            r0 = r13
        L31:
            androidx.webkit.Profile r13 = r0.m     // Catch: java.lang.Throwable -> L41
            if (r13 == 0) goto Lb9
            kotlinx.coroutines.Job r13 = r0.r     // Catch: java.lang.Throwable -> L41
            if (r13 == 0) goto L45
            boolean r13 = r13.isActive()     // Catch: java.lang.Throwable -> L41
            if (r13 != r2) goto L45
            goto Lb9
        L41:
            r0 = move-exception
            r13 = r0
            goto Lbf
        L45:
            long r4 = r0.q     // Catch: java.lang.Throwable -> L41
            r6 = 0
            int r13 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r13 == 0) goto L88
            ads_mobile_sdk.tx r13 = r0.k     // Catch: java.lang.Throwable -> L41
            r13.getClass()     // Catch: java.lang.Throwable -> L41
            long r4 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L41
            long r6 = r0.q     // Catch: java.lang.Throwable -> L41
            long r4 = r4 - r6
            ads_mobile_sdk.ex0 r13 = r0.c     // Catch: java.lang.Throwable -> L41
            r13.getClass()     // Catch: java.lang.Throwable -> L41
            java.lang.String r2 = "gads:webview_optimize_profile_throttle_duration"
            kotlin.time.Duration$Companion r6 = kotlin.time.Duration.Companion     // Catch: java.lang.Throwable -> L41
            kotlin.time.DurationUnit r6 = kotlin.time.DurationUnit.SECONDS     // Catch: java.lang.Throwable -> L41
            r7 = 30
            long r6 = kotlin.time.DurationKt.toDuration(r7, r6)     // Catch: java.lang.Throwable -> L41
            java.lang.String r8 = "key"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r8)     // Catch: java.lang.Throwable -> L41
            kotlin.time.Duration r6 = kotlin.time.Duration.m2870boximpl(r6)     // Catch: java.lang.Throwable -> L41
            ads_mobile_sdk.ur r7 = ads_mobile_sdk.yr.l     // Catch: java.lang.Throwable -> L41
            java.lang.Object r13 = r13.a(r2, r6, r7)     // Catch: java.lang.Throwable -> L41
            kotlin.time.Duration r13 = (kotlin.time.Duration) r13     // Catch: java.lang.Throwable -> L41
            long r6 = r13.m2906unboximpl()     // Catch: java.lang.Throwable -> L41
            long r6 = kotlin.time.Duration.m2881getInWholeMillisecondsimpl(r6)     // Catch: java.lang.Throwable -> L41
            int r13 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r13 >= 0) goto L88
            goto Lb9
        L88:
            ads_mobile_sdk.tx r13 = r0.k     // Catch: java.lang.Throwable -> L41
            r13.getClass()     // Catch: java.lang.Throwable -> L41
            long r4 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L41
            r0.q = r4     // Catch: java.lang.Throwable -> L41
            kotlinx.coroutines.CoroutineScope r6 = r0.e     // Catch: java.lang.Throwable -> L41
            ads_mobile_sdk.e14 r13 = new ads_mobile_sdk.e14     // Catch: java.lang.Throwable -> L41
            r13.<init>(r0, r3)     // Catch: java.lang.Throwable -> L41
            kotlin.coroutines.EmptyCoroutineContext r7 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE     // Catch: java.lang.Throwable -> L41
            java.lang.String r2 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r2)     // Catch: java.lang.Throwable -> L41
            java.lang.String r2 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r2)     // Catch: java.lang.Throwable -> L41
            java.lang.String r2 = "block"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r2)     // Catch: java.lang.Throwable -> L41
            ads_mobile_sdk.ws3 r9 = new ads_mobile_sdk.ws3     // Catch: java.lang.Throwable -> L41
            r9.<init>(r13, r3)     // Catch: java.lang.Throwable -> L41
            r10 = 2
            r11 = 0
            r8 = 0
            kotlinx.coroutines.Job r13 = kotlinx.coroutines.BuildersKt.launch$default(r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L41
            r0.r = r13     // Catch: java.lang.Throwable -> L41
        Lb9:
            kotlin.Unit r13 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L41
            r1.unlock(r3)
            return r13
        Lbf:
            r1.unlock(r3)
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.f14.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
