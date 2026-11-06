package ads_mobile_sdk;

import android.content.Context;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class gl2 extends nc1 {
    public final r1 c;
    public final e9 d;
    public final Context e;
    public final cl2 f;
    public im2 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gl2(r1 dataStore, e9 fileStore, Context context, xw0 flagValueProvider, cl2 flags) {
        super((s11) null, false);
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        Intrinsics.checkNotNullParameter(fileStore, "fileStore");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(flagValueProvider, "flagValueProvider");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.c = dataStore;
        this.d = fileStore;
        this.e = context;
        this.f = flags;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.gl2 r7, kotlin.coroutines.Continuation r8) {
        /*
            Method dump skipped, instruction units count: 243
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.gl2.a(ads_mobile_sdk.gl2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:0|2|(2:4|(1:6)(1:7))(0)|8|(1:155)|(1:(1:(1:(10:13|157|14|94|(1:96)(1:97)|98|102|(3:104|105|106)|107|108)(2:20|21))(10:22|23|77|78|87|88|89|90|(8:93|94|(0)(0)|98|102|(0)|107|108)|92))(3:29|30|31))(2:32|(2:34|35)(4:145|36|(1:38)(1:39)|(5:46|153|47|(1:49)|58)(2:42|43)))|141|59|(5:61|102|(0)|107|108)(6:66|(3:68|(6:70|147|71|72|73|(8:76|77|78|87|88|89|90|(0)))(5:87|88|89|90|(0))|92)(0)|102|(0)|107|108)|(2:(1:144)|(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00dc, code lost:
    
        if (ads_mobile_sdk.im2.b(r2, r0) == r1) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0105, code lost:
    
        r11 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0106, code lost:
    
        r10 = r12;
        r12 = r11;
        r11 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0133, code lost:
    
        r0 = r12;
        r12 = r11;
        r11 = r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0174 A[Catch: all -> 0x0100, TRY_LEAVE, TryCatch #1 {all -> 0x0100, blocks: (B:102:0x0170, B:104:0x0174, B:87:0x013d, B:89:0x0143, B:59:0x00eb, B:61:0x00f7, B:66:0x010a, B:68:0x0112, B:70:0x0116, B:72:0x011c), top: B:141:0x00eb }] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x018e A[Catch: all -> 0x019a, TryCatch #10 {all -> 0x019a, blocks: (B:112:0x0187, B:114:0x018e, B:116:0x0192, B:118:0x0196, B:121:0x019c, B:123:0x01a0, B:125:0x01a4, B:127:0x01a8, B:128:0x01a9, B:129:0x01ae, B:130:0x01af, B:131:0x01b6, B:132:0x01b7, B:133:0x01be, B:134:0x01bf), top: B:150:0x0187 }] */
    /* JADX WARN: Removed duplicated region for block: B:134:0x01bf A[Catch: all -> 0x019a, TRY_LEAVE, TryCatch #10 {all -> 0x019a, blocks: (B:112:0x0187, B:114:0x018e, B:116:0x0192, B:118:0x0196, B:121:0x019c, B:123:0x01a0, B:125:0x01a4, B:127:0x01a8, B:128:0x01a9, B:129:0x01ae, B:130:0x01af, B:131:0x01b6, B:132:0x01b7, B:133:0x01be, B:134:0x01bf), top: B:150:0x0187 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x013d A[Catch: all -> 0x0100, Exception -> 0x0105, PHI: r2 r11 r12
      0x013d: PHI (r2v25 ??) = (r2v38 ??), (r2v39 ??), (r2v40 ??) binds: [B:67:0x0110, B:69:0x0114, B:78:0x012b] A[DONT_GENERATE, DONT_INLINE]
      0x013d: PHI (r11v34 ??) = (r11v51 ??), (r11v52 ??), (r11v38 ??) binds: [B:67:0x0110, B:69:0x0114, B:78:0x012b] A[DONT_GENERATE, DONT_INLINE]
      0x013d: PHI (r12v41 ??) = (r12v60 ??), (r12v61 ??), (r12v45 ??) binds: [B:67:0x0110, B:69:0x0114, B:78:0x012b] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0100, blocks: (B:102:0x0170, B:104:0x0174, B:87:0x013d, B:89:0x0143, B:59:0x00eb, B:61:0x00f7, B:66:0x010a, B:68:0x0112, B:70:0x0116, B:72:0x011c), top: B:141:0x00eb }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x015a A[Catch: all -> 0x0038, Exception -> 0x003b, TRY_LEAVE, TryCatch #12 {Exception -> 0x003b, all -> 0x0038, blocks: (B:14:0x0033, B:94:0x0153, B:97:0x015a), top: B:157:0x0033 }] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v24, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r11v0, types: [ads_mobile_sdk.gl2, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v28, types: [ads_mobile_sdk.gl2, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v30 */
    /* JADX WARN: Type inference failed for: r11v31 */
    /* JADX WARN: Type inference failed for: r11v34, types: [ads_mobile_sdk.gl2, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v36 */
    /* JADX WARN: Type inference failed for: r11v37 */
    /* JADX WARN: Type inference failed for: r11v38 */
    /* JADX WARN: Type inference failed for: r11v39 */
    /* JADX WARN: Type inference failed for: r11v40 */
    /* JADX WARN: Type inference failed for: r11v42 */
    /* JADX WARN: Type inference failed for: r11v45 */
    /* JADX WARN: Type inference failed for: r11v48, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r11v49 */
    /* JADX WARN: Type inference failed for: r11v50 */
    /* JADX WARN: Type inference failed for: r11v51 */
    /* JADX WARN: Type inference failed for: r11v52 */
    /* JADX WARN: Type inference failed for: r11v53 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v14, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r12v22 */
    /* JADX WARN: Type inference failed for: r12v23 */
    /* JADX WARN: Type inference failed for: r12v24, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v37, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v40 */
    /* JADX WARN: Type inference failed for: r12v41, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v45 */
    /* JADX WARN: Type inference failed for: r12v48 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v53 */
    /* JADX WARN: Type inference failed for: r12v54 */
    /* JADX WARN: Type inference failed for: r12v55 */
    /* JADX WARN: Type inference failed for: r12v56 */
    /* JADX WARN: Type inference failed for: r12v57 */
    /* JADX WARN: Type inference failed for: r12v58 */
    /* JADX WARN: Type inference failed for: r12v59 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v60 */
    /* JADX WARN: Type inference failed for: r12v61 */
    /* JADX WARN: Type inference failed for: r12v62 */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v23, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v39 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v40 */
    /* JADX WARN: Type inference failed for: r2v41 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object b(ads_mobile_sdk.gl2 r11, kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 460
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.gl2.b(ads_mobile_sdk.gl2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.nc1
    public final Object u(Continuation continuation) {
        return b(this, continuation);
    }
}
