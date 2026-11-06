package io.bidmachine.util.taskmanager.coroutine;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: CoroutineTaskManager.kt */
/* JADX INFO: loaded from: classes5.dex */
@DebugMetadata(c = "io.bidmachine.util.taskmanager.coroutine.CoroutineTaskManager$scheduleTask$job$1", f = "CoroutineTaskManager.kt", l = {25, 29}, m = "invokeSuspend")
public final class CoroutineTaskManager$scheduleTask$job$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ long $delayMs;
    public final /* synthetic */ Runnable $task;
    public /* synthetic */ Object L$0;
    public int label;
    public final /* synthetic */ CoroutineTaskManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineTaskManager$scheduleTask$job$1(long j, Runnable runnable, CoroutineTaskManager coroutineTaskManager, Continuation<? super CoroutineTaskManager$scheduleTask$job$1> continuation) {
        super(2, continuation);
        this.$delayMs = j;
        this.$task = runnable;
        this.this$0 = coroutineTaskManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        CoroutineTaskManager$scheduleTask$job$1 coroutineTaskManager$scheduleTask$job$1 = new CoroutineTaskManager$scheduleTask$job$1(this.$delayMs, this.$task, this.this$0, continuation);
        coroutineTaskManager$scheduleTask$job$1.L$0 = obj;
        return coroutineTaskManager$scheduleTask$job$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CoroutineTaskManager$scheduleTask$job$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:0|2|(1:42)|(1:(1:(8:6|7|29|30|44|31|32|33)(2:9|10))(2:11|12))(8:16|17|(3:19|(1:21)|27)|30|44|31|32|33)|22|23|(1:25)(1:28)|29|30|44|31|32|33|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0057, code lost:
    
        if (((io.bidmachine.util.taskmanager.SuspendCancellableTask) r9).runSuspend(r3, r8) == r0) goto L27;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object, kotlinx.coroutines.CoroutineScope] */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r8.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L28
            if (r1 == r3) goto L1e
            if (r1 != r2) goto L16
            java.lang.Object r0 = r8.L$0
            kotlinx.coroutines.CoroutineScope r0 = (kotlinx.coroutines.CoroutineScope) r0
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L5f
            goto L5d
        L16:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L1e:
            java.lang.Object r1 = r8.L$0
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L26
            goto L43
        L26:
            r9 = move-exception
            goto L6b
        L28:
            kotlin.ResultKt.throwOnFailure(r9)
            java.lang.Object r9 = r8.L$0
            r1 = r9
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            long r4 = r8.$delayMs     // Catch: java.lang.Throwable -> L26
            r6 = 0
            int r9 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r9 <= 0) goto L43
            r8.L$0 = r1     // Catch: java.lang.Throwable -> L26
            r8.label = r3     // Catch: java.lang.Throwable -> L26
            java.lang.Object r9 = kotlinx.coroutines.DelayKt.delay(r4, r8)     // Catch: java.lang.Throwable -> L26
            if (r9 != r0) goto L43
            goto L59
        L43:
            java.lang.Runnable r9 = r8.$task     // Catch: java.lang.Throwable -> L26
            boolean r3 = r9 instanceof io.bidmachine.util.taskmanager.SuspendCancellableTask     // Catch: java.lang.Throwable -> L5f
            if (r3 == 0) goto L5a
            io.bidmachine.util.taskmanager.SuspendCancellableTask r9 = (io.bidmachine.util.taskmanager.SuspendCancellableTask) r9     // Catch: java.lang.Throwable -> L5f
            kotlin.coroutines.CoroutineContext r3 = r1.getCoroutineContext()     // Catch: java.lang.Throwable -> L5f
            r8.L$0 = r1     // Catch: java.lang.Throwable -> L5f
            r8.label = r2     // Catch: java.lang.Throwable -> L5f
            java.lang.Object r9 = r9.runSuspend(r3, r8)     // Catch: java.lang.Throwable -> L5f
            if (r9 != r0) goto L5d
        L59:
            return r0
        L5a:
            r9.run()     // Catch: java.lang.Throwable -> L5f
        L5d:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L5f
        L5f:
            io.bidmachine.util.taskmanager.coroutine.CoroutineTaskManager r9 = r8.this$0
            java.lang.Runnable r0 = r8.$task
            r9.cancelTask(r0)     // Catch: java.lang.Throwable -> L68
            kotlin.Unit r9 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L68
        L68:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        L6b:
            io.bidmachine.util.taskmanager.coroutine.CoroutineTaskManager r0 = r8.this$0
            java.lang.Runnable r2 = r8.$task
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1     // Catch: java.lang.Throwable -> L76
            r0.cancelTask(r2)     // Catch: java.lang.Throwable -> L76
            kotlin.Unit r0 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L76
        L76:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.util.taskmanager.coroutine.CoroutineTaskManager$scheduleTask$job$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
