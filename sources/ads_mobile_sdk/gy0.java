package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class gy0 extends SuspendLambda implements Function2 {
    public Mutex a;
    public yy0 b;
    public int c;
    public final /* synthetic */ yy0 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gy0(yy0 yy0Var, Continuation continuation) {
        super(2, continuation);
        this.d = yy0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new gy0(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new gy0(this.d, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x007b, code lost:
    
        if (r1.b(r10) == r0) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0071 A[Catch: all -> 0x007e, TRY_LEAVE, TryCatch #1 {all -> 0x007e, blocks: (B:22:0x006d, B:24:0x0071), top: B:38:0x006d }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) throws java.lang.Throwable {
        /*
            r10 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r10.c
            r2 = 3
            r3 = 2
            r4 = 1
            r5 = 0
            if (r1 == 0) goto L30
            if (r1 == r4) goto L2c
            if (r1 == r3) goto L23
            if (r1 != r2) goto L1b
            kotlinx.coroutines.sync.Mutex r0 = r10.a
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Throwable -> L18
            goto L81
        L18:
            r11 = move-exception
            goto L87
        L1b:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L23:
            ads_mobile_sdk.yy0 r1 = r10.b
            kotlinx.coroutines.sync.Mutex r3 = r10.a
            kotlin.ResultKt.throwOnFailure(r11)
            r11 = r3
            goto L6d
        L2c:
            kotlin.ResultKt.throwOnFailure(r11)
            goto L5c
        L30:
            kotlin.ResultKt.throwOnFailure(r11)
            ads_mobile_sdk.yy0 r11 = r10.d
            ads_mobile_sdk.ex0 r11 = r11.e
            r11.getClass()
            kotlin.time.Duration$Companion r1 = kotlin.time.Duration.Companion
            kotlin.time.DurationUnit r1 = kotlin.time.DurationUnit.SECONDS
            java.lang.String r6 = "key"
            r7 = 5
            java.lang.String r8 = "gads:ad_overlay:delay_page_close_timeout_ms"
            kotlin.time.Duration r1 = ads_mobile_sdk.wm2.a(r7, r1, r8, r6)
            ads_mobile_sdk.sr r6 = ads_mobile_sdk.yr.j
            java.lang.Object r11 = r11.a(r8, r1, r6)
            kotlin.time.Duration r11 = (kotlin.time.Duration) r11
            long r6 = r11.m2906unboximpl()
            r10.c = r4
            java.lang.Object r11 = kotlinx.coroutines.DelayKt.m2937delayVtjQ1oo(r6, r10)
            if (r11 != r0) goto L5c
            goto L7d
        L5c:
            ads_mobile_sdk.yy0 r1 = r10.d
            kotlinx.coroutines.sync.Mutex r11 = r1.A
            r10.a = r11
            r10.b = r1
            r10.c = r3
            java.lang.Object r3 = r11.lock(r5, r10)
            if (r3 != r0) goto L6d
            goto L7d
        L6d:
            boolean r3 = r1.D     // Catch: java.lang.Throwable -> L7e
            if (r3 != 0) goto L80
            r10.a = r11     // Catch: java.lang.Throwable -> L7e
            r10.b = r5     // Catch: java.lang.Throwable -> L7e
            r10.c = r2     // Catch: java.lang.Throwable -> L7e
            java.lang.Object r1 = r1.b(r10)     // Catch: java.lang.Throwable -> L7e
            if (r1 != r0) goto L80
        L7d:
            return r0
        L7e:
            r0 = move-exception
            goto L8a
        L80:
            r0 = r11
        L81:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L18
            r0.unlock(r5)
            return r11
        L87:
            r9 = r0
            r0 = r11
            r11 = r9
        L8a:
            r11.unlock(r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.gy0.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
