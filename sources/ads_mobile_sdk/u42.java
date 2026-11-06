package ads_mobile_sdk;

import java.io.Closeable;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class u42 extends SuspendLambda implements Function1 {
    public Object a;
    public Closeable b;
    public Object c;
    public int d;
    public final /* synthetic */ v42 e;
    public final /* synthetic */ String f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u42(v42 v42Var, String str, Continuation continuation) {
        super(1, continuation);
        this.e = v42Var;
        this.f = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new u42(this.e, this.f, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new u42(this.e, this.f, (Continuation) obj).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0193 A[Catch: all -> 0x019c, TRY_LEAVE, TryCatch #9 {all -> 0x019c, blocks: (B:98:0x018d, B:100:0x0193, B:105:0x019e, B:107:0x01a2, B:126:0x01e3, B:127:0x01e8), top: B:171:0x018d }] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x019e A[Catch: all -> 0x019c, TRY_ENTER, TryCatch #9 {all -> 0x019c, blocks: (B:98:0x018d, B:100:0x0193, B:105:0x019e, B:107:0x01a2, B:126:0x01e3, B:127:0x01e8), top: B:171:0x018d }] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x01c7 A[Catch: all -> 0x01d4, TRY_ENTER, TryCatch #1 {all -> 0x01d4, blocks: (B:111:0x01bd, B:115:0x01c7, B:117:0x01cb, B:122:0x01d7, B:123:0x01dc), top: B:159:0x01bd }] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01f3 A[Catch: all -> 0x01ff, TryCatch #12 {all -> 0x01ff, blocks: (B:130:0x01ec, B:132:0x01f3, B:134:0x01f7, B:136:0x01fb, B:139:0x0202, B:141:0x0206, B:143:0x020a, B:145:0x020e, B:146:0x020f, B:147:0x0214, B:148:0x0215, B:149:0x021c, B:150:0x021d, B:151:0x0224, B:152:0x0225), top: B:175:0x01ec }] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0225 A[Catch: all -> 0x01ff, TRY_LEAVE, TryCatch #12 {all -> 0x01ff, blocks: (B:130:0x01ec, B:132:0x01f3, B:134:0x01f7, B:136:0x01fb, B:139:0x0202, B:141:0x0206, B:143:0x020a, B:145:0x020e, B:146:0x020f, B:147:0x0214, B:148:0x0215, B:149:0x021c, B:150:0x021d, B:151:0x0224, B:152:0x0225), top: B:175:0x01ec }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d4 A[Catch: all -> 0x00dd, TRY_LEAVE, TryCatch #10 {all -> 0x00dd, blocks: (B:35:0x00ce, B:37:0x00d4, B:42:0x00df, B:44:0x00e3, B:62:0x0121, B:63:0x0126), top: B:172:0x00ce }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00df A[Catch: all -> 0x00dd, TRY_ENTER, TryCatch #10 {all -> 0x00dd, blocks: (B:35:0x00ce, B:37:0x00d4, B:42:0x00df, B:44:0x00e3, B:62:0x0121, B:63:0x0126), top: B:172:0x00ce }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0108 A[Catch: all -> 0x0115, TRY_ENTER, TryCatch #2 {all -> 0x0115, blocks: (B:48:0x00fe, B:52:0x0108, B:54:0x010c, B:59:0x0118, B:60:0x011d), top: B:160:0x00fe }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0130 A[Catch: all -> 0x013c, TryCatch #8 {all -> 0x013c, blocks: (B:66:0x0129, B:68:0x0130, B:70:0x0134, B:72:0x0138, B:75:0x013f, B:77:0x0143, B:79:0x0147, B:81:0x014b, B:82:0x014c, B:83:0x0151, B:84:0x0152, B:85:0x0159, B:86:0x015a, B:87:0x0161, B:88:0x0162), top: B:170:0x0129 }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0162 A[Catch: all -> 0x013c, TRY_LEAVE, TryCatch #8 {all -> 0x013c, blocks: (B:66:0x0129, B:68:0x0130, B:70:0x0134, B:72:0x0138, B:75:0x013f, B:77:0x0143, B:79:0x0147, B:81:0x014b, B:82:0x014c, B:83:0x0151, B:84:0x0152, B:85:0x0159, B:86:0x015a, B:87:0x0161, B:88:0x0162), top: B:170:0x0129 }] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v27, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v33 */
    /* JADX WARN: Type inference failed for: r1v41, types: [ads_mobile_sdk.tu2, java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v39 */
    /* JADX WARN: Type inference failed for: r2v8, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v2, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r3v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r9v7, types: [java.io.Closeable] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r17) {
        /*
            Method dump skipped, instruction units count: 556
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.u42.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
