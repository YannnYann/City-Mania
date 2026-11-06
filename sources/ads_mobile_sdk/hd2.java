package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class hd2 extends SuspendLambda implements Function2 {
    public rr3 a;
    public rr3 b;
    public int c;
    public final /* synthetic */ kd2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hd2(kd2 kd2Var, Continuation continuation) {
        super(2, continuation);
        this.d = kd2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new hd2(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new hd2(this.d, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x007c A[Catch: all -> 0x0088, TryCatch #3 {all -> 0x0088, blocks: (B:29:0x0075, B:31:0x007c, B:33:0x0080, B:35:0x0084, B:38:0x008a, B:40:0x008e, B:42:0x0092, B:44:0x0096, B:45:0x0097, B:46:0x009c, B:47:0x009d, B:48:0x00a4, B:49:0x00a5, B:50:0x00ac, B:51:0x00ad), top: B:99:0x0075 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ad A[Catch: all -> 0x0088, TRY_LEAVE, TryCatch #3 {all -> 0x0088, blocks: (B:29:0x0075, B:31:0x007c, B:33:0x0080, B:35:0x0084, B:38:0x008a, B:40:0x008e, B:42:0x0092, B:44:0x0096, B:45:0x0097, B:46:0x009c, B:47:0x009d, B:48:0x00a4, B:49:0x00a5, B:50:0x00ac, B:51:0x00ad), top: B:99:0x0075 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00db A[Catch: all -> 0x00e7, TryCatch #2 {all -> 0x00e7, blocks: (B:67:0x00d4, B:69:0x00db, B:71:0x00df, B:73:0x00e3, B:76:0x00e9, B:78:0x00ed, B:80:0x00f1, B:82:0x00f5, B:83:0x00f6, B:84:0x00fb, B:85:0x00fc, B:86:0x0103, B:87:0x0104, B:88:0x010b, B:89:0x010c), top: B:98:0x00d4 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x010c A[Catch: all -> 0x00e7, TRY_LEAVE, TryCatch #2 {all -> 0x00e7, blocks: (B:67:0x00d4, B:69:0x00db, B:71:0x00df, B:73:0x00e3, B:76:0x00e9, B:78:0x00ed, B:80:0x00f1, B:82:0x00f5, B:83:0x00f6, B:84:0x00fb, B:85:0x00fc, B:86:0x0103, B:87:0x0104, B:88:0x010b, B:89:0x010c), top: B:98:0x00d4 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            Method dump skipped, instruction units count: 275
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.hd2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
