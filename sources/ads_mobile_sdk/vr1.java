package ads_mobile_sdk;

import com.google.gson.JsonObject;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class vr1 extends SuspendLambda implements Function1 {
    public rr3 a;
    public rr3 b;
    public int c;
    public final /* synthetic */ yr1 d;
    public final /* synthetic */ t53 e;
    public final /* synthetic */ JsonObject f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vr1(yr1 yr1Var, t53 t53Var, JsonObject jsonObject, Continuation continuation) {
        super(1, continuation);
        this.d = yr1Var;
        this.e = t53Var;
        this.f = jsonObject;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new vr1(this.d, this.e, this.f, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((vr1) create((Continuation) obj)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x007f A[Catch: all -> 0x008b, TryCatch #5 {all -> 0x008b, blocks: (B:29:0x0078, B:31:0x007f, B:33:0x0083, B:35:0x0087, B:38:0x008d, B:40:0x0091, B:42:0x0095, B:44:0x0099, B:45:0x009a, B:46:0x009f, B:47:0x00a0, B:48:0x00a7, B:49:0x00a8, B:50:0x00af, B:51:0x00b0), top: B:104:0x0078 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00b0 A[Catch: all -> 0x008b, TRY_LEAVE, TryCatch #5 {all -> 0x008b, blocks: (B:29:0x0078, B:31:0x007f, B:33:0x0083, B:35:0x0087, B:38:0x008d, B:40:0x0091, B:42:0x0095, B:44:0x0099, B:45:0x009a, B:46:0x009f, B:47:0x00a0, B:48:0x00a7, B:49:0x00a8, B:50:0x00af, B:51:0x00b0), top: B:104:0x0078 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f0 A[Catch: all -> 0x00fc, TryCatch #7 {all -> 0x00fc, blocks: (B:67:0x00e9, B:69:0x00f0, B:71:0x00f4, B:73:0x00f8, B:76:0x00fe, B:78:0x0102, B:80:0x0106, B:82:0x010a, B:83:0x010b, B:84:0x0110, B:85:0x0111, B:86:0x0118, B:87:0x0119, B:88:0x0120, B:89:0x0121), top: B:107:0x00e9 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0121 A[Catch: all -> 0x00fc, TRY_LEAVE, TryCatch #7 {all -> 0x00fc, blocks: (B:67:0x00e9, B:69:0x00f0, B:71:0x00f4, B:73:0x00f8, B:76:0x00fe, B:78:0x0102, B:80:0x0106, B:82:0x010a, B:83:0x010b, B:84:0x0110, B:85:0x0111, B:86:0x0118, B:87:0x0119, B:88:0x0120, B:89:0x0121), top: B:107:0x00e9 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            Method dump skipped, instruction units count: 296
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.vr1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
