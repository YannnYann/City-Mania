package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class pq2 extends SuspendLambda implements Function2 {
    public Mutex a;
    public rq2 b;
    public int c;
    public /* synthetic */ Object d;
    public final /* synthetic */ long e;
    public final /* synthetic */ rq2 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pq2(long j, rq2 rq2Var, Continuation continuation) {
        super(2, continuation);
        this.e = j;
        this.f = rq2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        pq2 pq2Var = new pq2(this.e, this.f, continuation);
        pq2Var.d = obj;
        return pq2Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((pq2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009b A[Catch: all -> 0x009e, TryCatch #0 {all -> 0x009e, blocks: (B:27:0x0089, B:29:0x009b, B:32:0x00a0), top: B:37:0x0089 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r8.c
            r2 = 3
            r3 = 2
            r4 = 1
            r5 = 0
            if (r1 == 0) goto L37
            if (r1 == r4) goto L2f
            if (r1 == r3) goto L27
            if (r1 != r2) goto L1f
            ads_mobile_sdk.rq2 r0 = r8.b
            kotlinx.coroutines.sync.Mutex r1 = r8.a
            java.lang.Object r2 = r8.d
            kotlinx.coroutines.CoroutineScope r2 = (kotlinx.coroutines.CoroutineScope) r2
            kotlin.ResultKt.throwOnFailure(r9)
            goto L89
        L1f:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L27:
            java.lang.Object r1 = r8.d
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            kotlin.ResultKt.throwOnFailure(r9)
            goto L73
        L2f:
            java.lang.Object r1 = r8.d
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            kotlin.ResultKt.throwOnFailure(r9)
            goto L4c
        L37:
            kotlin.ResultKt.throwOnFailure(r9)
            java.lang.Object r9 = r8.d
            r1 = r9
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            long r6 = r8.e
            r8.d = r1
            r8.c = r4
            java.lang.Object r9 = kotlinx.coroutines.DelayKt.m2937delayVtjQ1oo(r6, r8)
            if (r9 != r0) goto L4c
            goto L85
        L4c:
            ads_mobile_sdk.rq2 r9 = r8.f
            java.util.concurrent.atomic.AtomicBoolean r9 = r9.e
            r6 = 0
            boolean r9 = r9.compareAndSet(r6, r4)
            if (r9 == 0) goto L73
            ads_mobile_sdk.rq2 r9 = r8.f
            ads_mobile_sdk.tq2 r9 = r9.a
            ads_mobile_sdk.s11 r4 = ads_mobile_sdk.s11.CUI_NAME_PRELOAD_AD_CLOSE_TIMEOUT
            r8.d = r1
            r8.c = r3
            ads_mobile_sdk.pt2 r9 = (ads_mobile_sdk.pt2) r9
            java.lang.Object r9 = r9.a(r4, r8)
            java.lang.Object r3 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r9 != r3) goto L6e
            goto L70
        L6e:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
        L70:
            if (r9 != r0) goto L73
            goto L85
        L73:
            ads_mobile_sdk.rq2 r9 = r8.f
            kotlinx.coroutines.sync.Mutex r3 = r9.f
            r8.d = r1
            r8.a = r3
            r8.b = r9
            r8.c = r2
            java.lang.Object r2 = r3.lock(r5, r8)
            if (r2 != r0) goto L86
        L85:
            return r0
        L86:
            r0 = r9
            r2 = r1
            r1 = r3
        L89:
            kotlinx.coroutines.Job r9 = r0.g     // Catch: java.lang.Throwable -> L9e
            kotlin.coroutines.CoroutineContext r2 = r2.getCoroutineContext()     // Catch: java.lang.Throwable -> L9e
            kotlinx.coroutines.Job$Key r3 = kotlinx.coroutines.Job.Key     // Catch: java.lang.Throwable -> L9e
            kotlin.coroutines.CoroutineContext$Element r2 = r2.get(r3)     // Catch: java.lang.Throwable -> L9e
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r2)     // Catch: java.lang.Throwable -> L9e
            if (r9 == 0) goto La0
            r0.g = r5     // Catch: java.lang.Throwable -> L9e
            goto La0
        L9e:
            r9 = move-exception
            goto La6
        La0:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L9e
            r1.unlock(r5)
            return r9
        La6:
            r1.unlock(r5)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pq2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
