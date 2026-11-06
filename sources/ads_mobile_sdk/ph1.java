package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class ph1 extends SuspendLambda implements Function2 {
    public rr3 a;
    public rr3 b;
    public lh1 c;
    public uj2 d;
    public int e;
    public final /* synthetic */ th1 f;
    public final /* synthetic */ int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ph1(th1 th1Var, int i, Continuation continuation) {
        super(2, continuation);
        this.f = th1Var;
        this.g = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ph1(this.f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new ph1(this.f, this.g, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:124:0x0276, code lost:
    
        if (ads_mobile_sdk.zd3.a(r1, r2, r10) == r11) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x014a, code lost:
    
        if (ads_mobile_sdk.zd3.a(r1, r2, r10) == r11) goto L125;
     */
    /* JADX WARN: Removed duplicated region for block: B:137:0x02b1 A[Catch: all -> 0x02bd, TryCatch #8 {all -> 0x02bd, blocks: (B:135:0x02aa, B:137:0x02b1, B:139:0x02b5, B:141:0x02b9, B:144:0x02c0, B:146:0x02c4, B:148:0x02c8, B:150:0x02cc, B:151:0x02cd, B:152:0x02d2, B:153:0x02d3, B:154:0x02da, B:155:0x02db, B:156:0x02e2, B:157:0x02e3), top: B:177:0x02aa }] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x02e3 A[Catch: all -> 0x02bd, TRY_LEAVE, TryCatch #8 {all -> 0x02bd, blocks: (B:135:0x02aa, B:137:0x02b1, B:139:0x02b5, B:141:0x02b9, B:144:0x02c0, B:146:0x02c4, B:148:0x02c8, B:150:0x02cc, B:151:0x02cd, B:152:0x02d2, B:153:0x02d3, B:154:0x02da, B:155:0x02db, B:156:0x02e2, B:157:0x02e3), top: B:177:0x02aa }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0178 A[Catch: all -> 0x0184, TryCatch #1 {all -> 0x0184, blocks: (B:65:0x0171, B:67:0x0178, B:69:0x017c, B:71:0x0180, B:74:0x0187, B:76:0x018b, B:78:0x018f, B:80:0x0193, B:81:0x0194, B:82:0x0199, B:83:0x019a, B:84:0x01a1, B:85:0x01a2, B:86:0x01a9, B:87:0x01aa), top: B:164:0x0171 }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01aa A[Catch: all -> 0x0184, TRY_LEAVE, TryCatch #1 {all -> 0x0184, blocks: (B:65:0x0171, B:67:0x0178, B:69:0x017c, B:71:0x0180, B:74:0x0187, B:76:0x018b, B:78:0x018f, B:80:0x0193, B:81:0x0194, B:82:0x0199, B:83:0x019a, B:84:0x01a1, B:85:0x01a2, B:86:0x01a9, B:87:0x01aa), top: B:164:0x0171 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r20) {
        /*
            Method dump skipped, instruction units count: 746
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ph1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
