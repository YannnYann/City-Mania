package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class g00 extends SuspendLambda implements Function2 {
    public Object a;
    public Object b;
    public int c;
    public final /* synthetic */ o00 d;
    public final /* synthetic */ boolean e;
    public final /* synthetic */ String f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g00(o00 o00Var, boolean z, String str, Continuation continuation) {
        super(2, continuation);
        this.d = o00Var;
        this.e = z;
        this.f = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new g00(this.d, this.e, this.f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((g00) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x01a2 A[Catch: all -> 0x017d, TRY_LEAVE, TryCatch #9 {all -> 0x017d, blocks: (B:89:0x016a, B:91:0x0171, B:93:0x0175, B:95:0x0179, B:98:0x017f, B:100:0x0183, B:102:0x0187, B:104:0x018b, B:105:0x018c, B:106:0x0191, B:107:0x0192, B:108:0x0199, B:109:0x019a, B:110:0x01a1, B:111:0x01a2), top: B:136:0x016a }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0087 A[Catch: all -> 0x004a, TRY_LEAVE, TryCatch #5 {all -> 0x004a, blocks: (B:21:0x0046, B:34:0x007f, B:36:0x0087, B:39:0x008f), top: B:129:0x0046 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x008f A[Catch: all -> 0x004a, TRY_ENTER, TRY_LEAVE, TryCatch #5 {all -> 0x004a, blocks: (B:21:0x0046, B:34:0x007f, B:36:0x0087, B:39:0x008f), top: B:129:0x0046 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0108 A[Catch: all -> 0x0114, TryCatch #1 {all -> 0x0114, blocks: (B:52:0x0101, B:54:0x0108, B:56:0x010c, B:58:0x0110, B:61:0x0116, B:63:0x011a, B:65:0x011e, B:67:0x0122, B:68:0x0123, B:69:0x0128, B:70:0x0129, B:71:0x0130, B:72:0x0131, B:73:0x0138, B:74:0x0139), top: B:122:0x0101 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0139 A[Catch: all -> 0x0114, TRY_LEAVE, TryCatch #1 {all -> 0x0114, blocks: (B:52:0x0101, B:54:0x0108, B:56:0x010c, B:58:0x0110, B:61:0x0116, B:63:0x011a, B:65:0x011e, B:67:0x0122, B:68:0x0123, B:69:0x0128, B:70:0x0129, B:71:0x0130, B:72:0x0131, B:73:0x0138, B:74:0x0139), top: B:122:0x0101 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0171 A[Catch: all -> 0x017d, TryCatch #9 {all -> 0x017d, blocks: (B:89:0x016a, B:91:0x0171, B:93:0x0175, B:95:0x0179, B:98:0x017f, B:100:0x0183, B:102:0x0187, B:104:0x018b, B:105:0x018c, B:106:0x0191, B:107:0x0192, B:108:0x0199, B:109:0x019a, B:110:0x01a1, B:111:0x01a2), top: B:136:0x016a }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 431
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g00.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
