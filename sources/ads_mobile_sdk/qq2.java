package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class qq2 extends SuspendLambda implements Function2 {
    public Mutex a;
    public rq2 b;
    public long c;
    public int d;
    public /* synthetic */ Object e;
    public final /* synthetic */ rq2 f;
    public final /* synthetic */ long g;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        qq2 qq2Var = new qq2(this.g, this.f, continuation);
        qq2Var.e = obj;
        return qq2Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((qq2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0071 A[Catch: all -> 0x0079, TryCatch #0 {all -> 0x0079, blocks: (B:21:0x0069, B:23:0x0071, B:25:0x0075, B:28:0x007c, B:29:0x00a0), top: B:34:0x0069 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            r12 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r12.d
            r2 = 2
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L2e
            if (r1 == r3) goto L25
            if (r1 != r2) goto L1d
            long r0 = r12.c
            ads_mobile_sdk.rq2 r2 = r12.b
            kotlinx.coroutines.sync.Mutex r5 = r12.a
            java.lang.Object r6 = r12.e
            kotlinx.coroutines.CoroutineScope r6 = (kotlinx.coroutines.CoroutineScope) r6
            kotlin.ResultKt.throwOnFailure(r13)
            goto L69
        L1d:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r0)
            throw r13
        L25:
            java.lang.Object r1 = r12.e
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            kotlin.ResultKt.throwOnFailure(r13)
            r6 = r1
            goto L50
        L2e:
            kotlin.ResultKt.throwOnFailure(r13)
            java.lang.Object r13 = r12.e
            kotlinx.coroutines.CoroutineScope r13 = (kotlinx.coroutines.CoroutineScope) r13
            ads_mobile_sdk.rq2 r1 = r12.f
            ads_mobile_sdk.tq2 r1 = r1.a
            r12.e = r13
            r12.d = r3
            ads_mobile_sdk.pt2 r1 = (ads_mobile_sdk.pt2) r1
            java.lang.Object r1 = r1.w(r12)
            java.lang.Object r5 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r1 != r5) goto L4a
            goto L4c
        L4a:
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
        L4c:
            if (r1 != r0) goto L4f
            goto L66
        L4f:
            r6 = r13
        L50:
            ads_mobile_sdk.rq2 r13 = r12.f
            kotlinx.coroutines.sync.Mutex r5 = r13.f
            long r7 = r12.g
            r12.e = r6
            r12.a = r5
            r12.b = r13
            r12.c = r7
            r12.d = r2
            java.lang.Object r1 = r5.lock(r4, r12)
            if (r1 != r0) goto L67
        L66:
            return r0
        L67:
            r2 = r13
            r0 = r7
        L69:
            java.util.concurrent.atomic.AtomicBoolean r13 = r2.e     // Catch: java.lang.Throwable -> L79
            boolean r13 = r13.get()     // Catch: java.lang.Throwable -> L79
            if (r13 != 0) goto La0
            kotlinx.coroutines.Job r13 = r2.g     // Catch: java.lang.Throwable -> L79
            if (r13 == 0) goto L7c
            kotlinx.coroutines.Job.DefaultImpls.cancel$default(r13, r4, r3, r4)     // Catch: java.lang.Throwable -> L79
            goto L7c
        L79:
            r0 = move-exception
            r13 = r0
            goto La6
        L7c:
            ads_mobile_sdk.pq2 r13 = new ads_mobile_sdk.pq2     // Catch: java.lang.Throwable -> L79
            r13.<init>(r0, r2, r4)     // Catch: java.lang.Throwable -> L79
            kotlin.coroutines.EmptyCoroutineContext r7 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE     // Catch: java.lang.Throwable -> L79
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)     // Catch: java.lang.Throwable -> L79
            java.lang.String r0 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)     // Catch: java.lang.Throwable -> L79
            java.lang.String r0 = "block"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r0)     // Catch: java.lang.Throwable -> L79
            ads_mobile_sdk.ws3 r9 = new ads_mobile_sdk.ws3     // Catch: java.lang.Throwable -> L79
            r9.<init>(r13, r4)     // Catch: java.lang.Throwable -> L79
            r10 = 2
            r11 = 0
            r8 = 0
            kotlinx.coroutines.Job r13 = kotlinx.coroutines.BuildersKt.launch$default(r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L79
            r2.g = r13     // Catch: java.lang.Throwable -> L79
        La0:
            kotlin.Unit r13 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L79
            r5.unlock(r4)
            return r13
        La6:
            r5.unlock(r4)
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.qq2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qq2(long j, rq2 rq2Var, Continuation continuation) {
        super(2, continuation);
        this.f = rq2Var;
        this.g = j;
    }
}
