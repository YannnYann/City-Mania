package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class g20 extends SuspendLambda implements Function1 {
    public Object a;
    public Object b;
    public g30 c;
    public int d;
    public final /* synthetic */ g30 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g20(g30 g30Var, Continuation continuation) {
        super(1, continuation);
        this.e = g30Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new g20(this.e, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new g20(this.e, (Continuation) obj).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x0192 A[Catch: all -> 0x016d, TRY_LEAVE, TryCatch #7 {all -> 0x016d, blocks: (B:87:0x015a, B:89:0x0161, B:91:0x0165, B:93:0x0169, B:96:0x016f, B:98:0x0173, B:100:0x0177, B:102:0x017b, B:103:0x017c, B:104:0x0181, B:105:0x0182, B:106:0x0189, B:107:0x018a, B:108:0x0191, B:109:0x0192), top: B:127:0x015a }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0097 A[Catch: all -> 0x0046, TRY_LEAVE, TryCatch #3 {all -> 0x0046, blocks: (B:16:0x0042, B:27:0x0091, B:29:0x0097), top: B:120:0x0042 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00af A[Catch: all -> 0x00bb, TryCatch #6 {all -> 0x00bb, blocks: (B:35:0x00a8, B:37:0x00af, B:39:0x00b3, B:41:0x00b7, B:44:0x00bd, B:46:0x00c1, B:48:0x00c5, B:50:0x00c9, B:51:0x00ca, B:52:0x00cf, B:53:0x00d0, B:54:0x00d7, B:55:0x00d8, B:56:0x00df, B:57:0x00e0), top: B:126:0x00a8 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00e0 A[Catch: all -> 0x00bb, TRY_LEAVE, TryCatch #6 {all -> 0x00bb, blocks: (B:35:0x00a8, B:37:0x00af, B:39:0x00b3, B:41:0x00b7, B:44:0x00bd, B:46:0x00c1, B:48:0x00c5, B:50:0x00c9, B:51:0x00ca, B:52:0x00cf, B:53:0x00d0, B:54:0x00d7, B:55:0x00d8, B:56:0x00df, B:57:0x00e0), top: B:126:0x00a8 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x010b A[Catch: all -> 0x0037, TRY_LEAVE, TryCatch #4 {all -> 0x0037, blocks: (B:11:0x0032, B:67:0x0105, B:69:0x010b), top: B:122:0x0032 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0161 A[Catch: all -> 0x016d, TryCatch #7 {all -> 0x016d, blocks: (B:87:0x015a, B:89:0x0161, B:91:0x0165, B:93:0x0169, B:96:0x016f, B:98:0x0173, B:100:0x0177, B:102:0x017b, B:103:0x017c, B:104:0x0181, B:105:0x0182, B:106:0x0189, B:107:0x018a, B:108:0x0191, B:109:0x0192), top: B:127:0x015a }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instruction units count: 409
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g20.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
