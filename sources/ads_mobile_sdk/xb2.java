package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class xb2 extends SuspendLambda implements Function2 {
    public Mutex a;
    public Function2 b;
    public ac2 c;
    public int d;
    public final /* synthetic */ ac2 e;
    public final /* synthetic */ Function2 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xb2(ac2 ac2Var, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.e = ac2Var;
        this.f = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new xb2(this.e, this.f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new xb2(this.e, this.f, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:0|2|35|(1:(1:(6:6|37|7|29|30|31)(2:13|14))(1:15))(3:16|(1:19)|22)|39|20|(4:23|29|30|31)|22|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0066, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0068, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0069, code lost:
    
        r0 = r8;
        r8 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x008f, code lost:
    
        r8.unlock(null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0092, code lost:
    
        throw r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v11, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r8v6, types: [kotlinx.coroutines.sync.Mutex] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) throws java.lang.Throwable {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r7.d
            r2 = 2
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L2e
            if (r1 == r3) goto L23
            if (r1 != r2) goto L1b
            kotlinx.coroutines.sync.Mutex r0 = r7.a
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L16 java.lang.Exception -> L19
            goto L86
        L16:
            r8 = move-exception
            goto L8c
        L19:
            r8 = move-exception
            goto L6c
        L1b:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L23:
            ads_mobile_sdk.ac2 r1 = r7.c
            kotlin.jvm.functions.Function2 r3 = r7.b
            kotlinx.coroutines.sync.Mutex r5 = r7.a
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r5
            goto L4c
        L2e:
            kotlin.ResultKt.throwOnFailure(r8)
            ads_mobile_sdk.ac2 r8 = r7.e
            kotlinx.coroutines.sync.Mutex r8 = ads_mobile_sdk.ac2.a(r8)
            kotlin.jvm.functions.Function2 r1 = r7.f
            ads_mobile_sdk.ac2 r5 = r7.e
            r7.a = r8
            r7.b = r1
            r7.c = r5
            r7.d = r3
            java.lang.Object r3 = r8.lock(r4, r7)
            if (r3 != r0) goto L4a
            goto L63
        L4a:
            r3 = r1
            r1 = r5
        L4c:
            android.database.sqlite.SQLiteDatabase r1 = r1.getWritableDatabase()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            java.lang.String r5 = "getWritableDatabase(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r5)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r7.a = r8     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r7.b = r4     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r7.c = r4     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r7.d = r2     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            java.lang.Object r1 = r3.invoke(r1, r7)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            if (r1 != r0) goto L64
        L63:
            return r0
        L64:
            r0 = r8
            goto L86
        L66:
            r0 = move-exception
            goto L8f
        L68:
            r0 = move-exception
            r6 = r0
            r0 = r8
            r8 = r6
        L6c:
            com.google.common.base.Splitter r1 = ads_mobile_sdk.f01.a     // Catch: java.lang.Throwable -> L16
            java.lang.String r8 = r8.getMessage()     // Catch: java.lang.Throwable -> L16
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L16
            r1.<init>()     // Catch: java.lang.Throwable -> L16
            java.lang.String r2 = "Error interacting with offline buffered ping database: "
            r1.append(r2)     // Catch: java.lang.Throwable -> L16
            r1.append(r8)     // Catch: java.lang.Throwable -> L16
            java.lang.String r8 = r1.toString()     // Catch: java.lang.Throwable -> L16
            ads_mobile_sdk.f01.a(r8)     // Catch: java.lang.Throwable -> L16
        L86:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L16
            r0.unlock(r4)
            return r8
        L8c:
            r6 = r0
            r0 = r8
            r8 = r6
        L8f:
            r8.unlock(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.xb2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
