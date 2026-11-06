package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class ko2 extends SuspendLambda implements Function2 {
    public rr3 a;
    public rr3 b;
    public int c;
    public final /* synthetic */ mo2 d;
    public final /* synthetic */ s11 e;
    public final /* synthetic */ boolean f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ko2(mo2 mo2Var, s11 s11Var, boolean z, Continuation continuation) {
        super(2, continuation);
        this.d = mo2Var;
        this.e = s11Var;
        this.f = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ko2(this.d, this.e, this.f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ko2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x007e A[Catch: all -> 0x008a, TryCatch #6 {all -> 0x008a, blocks: (B:29:0x0077, B:31:0x007e, B:33:0x0082, B:35:0x0086, B:38:0x008c, B:40:0x0090, B:42:0x0094, B:44:0x0098, B:45:0x0099, B:46:0x009e, B:47:0x009f, B:48:0x00a6, B:49:0x00a7, B:50:0x00ae, B:51:0x00af), top: B:105:0x0077 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00af A[Catch: all -> 0x008a, TRY_LEAVE, TryCatch #6 {all -> 0x008a, blocks: (B:29:0x0077, B:31:0x007e, B:33:0x0082, B:35:0x0086, B:38:0x008c, B:40:0x0090, B:42:0x0094, B:44:0x0098, B:45:0x0099, B:46:0x009e, B:47:0x009f, B:48:0x00a6, B:49:0x00a7, B:50:0x00ae, B:51:0x00af), top: B:105:0x0077 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00dd A[Catch: all -> 0x00e9, TryCatch #5 {all -> 0x00e9, blocks: (B:67:0x00d6, B:69:0x00dd, B:71:0x00e1, B:73:0x00e5, B:76:0x00eb, B:78:0x00ef, B:80:0x00f3, B:82:0x00f7, B:83:0x00f8, B:84:0x00fd, B:85:0x00fe, B:86:0x0105, B:87:0x0106, B:88:0x010d, B:89:0x010e), top: B:104:0x00d6 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x010e A[Catch: all -> 0x00e9, TRY_LEAVE, TryCatch #5 {all -> 0x00e9, blocks: (B:67:0x00d6, B:69:0x00dd, B:71:0x00e1, B:73:0x00e5, B:76:0x00eb, B:78:0x00ef, B:80:0x00f3, B:82:0x00f7, B:83:0x00f8, B:84:0x00fd, B:85:0x00fe, B:86:0x0105, B:87:0x0106, B:88:0x010d, B:89:0x010e), top: B:104:0x00d6 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            Method dump skipped, instruction units count: 277
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ko2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
