package ads_mobile_sdk;

import android.net.Uri;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class sr1 extends SuspendLambda implements Function1 {
    public rr3 a;
    public rr3 b;
    public int c;
    public final /* synthetic */ yr1 d;
    public final /* synthetic */ r41 e;
    public final /* synthetic */ r31 f;
    public final /* synthetic */ Uri g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sr1(yr1 yr1Var, r41 r41Var, r31 r31Var, Uri uri, Continuation continuation) {
        super(1, continuation);
        this.d = yr1Var;
        this.e = r41Var;
        this.f = r31Var;
        this.g = uri;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new sr1(this.d, this.e, this.f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((sr1) create((Continuation) obj)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0086 A[Catch: all -> 0x0092, TryCatch #1 {all -> 0x0092, blocks: (B:29:0x007f, B:31:0x0086, B:33:0x008a, B:35:0x008e, B:38:0x0094, B:40:0x0098, B:42:0x009c, B:44:0x00a0, B:45:0x00a1, B:46:0x00a6, B:47:0x00a7, B:48:0x00ae, B:49:0x00af, B:50:0x00b6, B:51:0x00b7), top: B:96:0x007f }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00b7 A[Catch: all -> 0x0092, TRY_LEAVE, TryCatch #1 {all -> 0x0092, blocks: (B:29:0x007f, B:31:0x0086, B:33:0x008a, B:35:0x008e, B:38:0x0094, B:40:0x0098, B:42:0x009c, B:44:0x00a0, B:45:0x00a1, B:46:0x00a6, B:47:0x00a7, B:48:0x00ae, B:49:0x00af, B:50:0x00b6, B:51:0x00b7), top: B:96:0x007f }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00fc A[Catch: all -> 0x0108, TryCatch #2 {all -> 0x0108, blocks: (B:67:0x00f5, B:69:0x00fc, B:71:0x0100, B:73:0x0104, B:76:0x010a, B:78:0x010e, B:80:0x0112, B:82:0x0116, B:83:0x0117, B:84:0x011c, B:85:0x011d, B:86:0x0124, B:87:0x0125, B:88:0x012c, B:89:0x012d), top: B:97:0x00f5 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x012d A[Catch: all -> 0x0108, TRY_LEAVE, TryCatch #2 {all -> 0x0108, blocks: (B:67:0x00f5, B:69:0x00fc, B:71:0x0100, B:73:0x0104, B:76:0x010a, B:78:0x010e, B:80:0x0112, B:82:0x0116, B:83:0x0117, B:84:0x011c, B:85:0x011d, B:86:0x0124, B:87:0x0125, B:88:0x012c, B:89:0x012d), top: B:97:0x00f5 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            Method dump skipped, instruction units count: 308
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.sr1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
