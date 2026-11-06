package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class sq extends SuspendLambda implements Function2 {
    public Object a;
    public int b;
    public final /* synthetic */ hr c;
    public final /* synthetic */ CoroutineScope d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sq(hr hrVar, CoroutineScope coroutineScope, Continuation continuation) {
        super(2, continuation);
        this.c = hrVar;
        this.d = coroutineScope;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new sq(this.c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new sq(this.c, this.d, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:96:0x02a2, code lost:
    
        if (r0.b(r25) == r2) goto L97;
     */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0204 A[Catch: all -> 0x0126, TryCatch #4 {all -> 0x0126, blocks: (B:93:0x0239, B:87:0x0222, B:89:0x0226, B:50:0x010a, B:52:0x0115, B:58:0x012a, B:59:0x012e, B:67:0x016a, B:70:0x019c, B:72:0x01c7, B:74:0x01cb, B:80:0x01ef, B:81:0x01f4, B:84:0x0204, B:62:0x0141, B:64:0x0159, B:65:0x0161, B:47:0x00f7, B:76:0x01e2), top: B:111:0x00f7, inners: #0, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0226 A[Catch: all -> 0x0126, TryCatch #4 {all -> 0x0126, blocks: (B:93:0x0239, B:87:0x0222, B:89:0x0226, B:50:0x010a, B:52:0x0115, B:58:0x012a, B:59:0x012e, B:67:0x016a, B:70:0x019c, B:72:0x01c7, B:74:0x01cb, B:80:0x01ef, B:81:0x01f4, B:84:0x0204, B:62:0x0141, B:64:0x0159, B:65:0x0161, B:47:0x00f7, B:76:0x01e2), top: B:111:0x00f7, inners: #0, #6 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r26) {
        /*
            Method dump skipped, instruction units count: 735
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.sq.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
