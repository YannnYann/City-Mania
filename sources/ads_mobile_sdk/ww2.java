package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class ww2 extends SuspendLambda implements Function2 {
    public rr3 a;
    public rr3 b;
    public int c;
    public final /* synthetic */ px2 d;
    public final /* synthetic */ ei1 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ww2(px2 px2Var, ei1 ei1Var, Continuation continuation) {
        super(2, continuation);
        this.d = px2Var;
        this.e = ei1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ww2(this.d, this.e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new ww2(this.d, this.e, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0147 A[Catch: all -> 0x0153, TryCatch #1 {all -> 0x0153, blocks: (B:101:0x0140, B:103:0x0147, B:105:0x014b, B:107:0x014f, B:110:0x0155, B:112:0x0159, B:114:0x015d, B:116:0x0161, B:117:0x0162, B:118:0x0167, B:119:0x0168, B:120:0x016f, B:121:0x0170, B:122:0x0177, B:123:0x0178), top: B:130:0x0140 }] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0178 A[Catch: all -> 0x0153, TRY_LEAVE, TryCatch #1 {all -> 0x0153, blocks: (B:101:0x0140, B:103:0x0147, B:105:0x014b, B:107:0x014f, B:110:0x0155, B:112:0x0159, B:114:0x015d, B:116:0x0161, B:117:0x0162, B:118:0x0167, B:119:0x0168, B:120:0x016f, B:121:0x0170, B:122:0x0177, B:123:0x0178), top: B:130:0x0140 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00af A[Catch: all -> 0x00bb, TryCatch #5 {all -> 0x00bb, blocks: (B:46:0x00a8, B:48:0x00af, B:50:0x00b3, B:52:0x00b7, B:55:0x00bd, B:57:0x00c1, B:59:0x00c5, B:61:0x00c9, B:62:0x00ca, B:63:0x00cf, B:64:0x00d0, B:65:0x00d7, B:66:0x00d8, B:67:0x00df, B:68:0x00e0), top: B:137:0x00a8 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00e0 A[Catch: all -> 0x00bb, TRY_LEAVE, TryCatch #5 {all -> 0x00bb, blocks: (B:46:0x00a8, B:48:0x00af, B:50:0x00b3, B:52:0x00b7, B:55:0x00bd, B:57:0x00c1, B:59:0x00c5, B:61:0x00c9, B:62:0x00ca, B:63:0x00cf, B:64:0x00d0, B:65:0x00d7, B:66:0x00d8, B:67:0x00df, B:68:0x00e0), top: B:137:0x00a8 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            Method dump skipped, instruction units count: 383
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ww2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
