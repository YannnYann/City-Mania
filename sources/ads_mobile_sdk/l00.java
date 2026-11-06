package ads_mobile_sdk;

import java.io.Closeable;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class l00 extends SuspendLambda implements Function2 {
    public Object a;
    public Closeable b;
    public Closeable c;
    public int d;
    public final /* synthetic */ o00 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l00(o00 o00Var, Continuation continuation) {
        super(2, continuation);
        this.e = o00Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new l00(this.e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new l00(this.e, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x02a8, code lost:
    
        if (r4 == r0) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x017e, code lost:
    
        if (r4 == r0) goto L107;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0220 A[Catch: all -> 0x0041, PHI: r2 r5 r10 r11
      0x0220: PHI (r2v19 ??) = (r2v31 ??), (r2v32 ??) binds: [B:99:0x021c, B:13:0x003d] A[DONT_GENERATE, DONT_INLINE]
      0x0220: PHI (r5v12 java.lang.Object) = (r5v11 java.lang.Object), (r5v17 java.lang.Object) binds: [B:99:0x021c, B:13:0x003d] A[DONT_GENERATE, DONT_INLINE]
      0x0220: PHI (r10v28 ??) = (r10v39 ??), (r10v40 ??) binds: [B:99:0x021c, B:13:0x003d] A[DONT_GENERATE, DONT_INLINE]
      0x0220: PHI (r11v18 ads_mobile_sdk.o00) = (r11v15 ads_mobile_sdk.o00), (r11v21 ads_mobile_sdk.o00) binds: [B:99:0x021c, B:13:0x003d] A[DONT_GENERATE, DONT_INLINE], TryCatch #1 {all -> 0x0041, blocks: (B:12:0x003a, B:101:0x0220, B:103:0x022f, B:105:0x0274, B:17:0x004e, B:98:0x020a), top: B:149:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:103:0x022f A[Catch: all -> 0x0041, TryCatch #1 {all -> 0x0041, blocks: (B:12:0x003a, B:101:0x0220, B:103:0x022f, B:105:0x0274, B:17:0x004e, B:98:0x020a), top: B:149:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0274 A[Catch: all -> 0x0041, TRY_LEAVE, TryCatch #1 {all -> 0x0041, blocks: (B:12:0x003a, B:101:0x0220, B:103:0x022f, B:105:0x0274, B:17:0x004e, B:98:0x020a), top: B:149:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x02ce A[Catch: all -> 0x02da, TryCatch #8 {all -> 0x02da, blocks: (B:121:0x02c7, B:123:0x02ce, B:125:0x02d2, B:127:0x02d6, B:130:0x02dd, B:132:0x02e1, B:134:0x02e5, B:136:0x02e9, B:137:0x02ea, B:138:0x02ef, B:139:0x02f0, B:140:0x02f7, B:141:0x02f8, B:142:0x02ff, B:143:0x0300), top: B:160:0x02c7 }] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0300 A[Catch: all -> 0x02da, TRY_LEAVE, TryCatch #8 {all -> 0x02da, blocks: (B:121:0x02c7, B:123:0x02ce, B:125:0x02d2, B:127:0x02d6, B:130:0x02dd, B:132:0x02e1, B:134:0x02e5, B:136:0x02e9, B:137:0x02ea, B:138:0x02ef, B:139:0x02f0, B:140:0x02f7, B:141:0x02f8, B:142:0x02ff, B:143:0x0300), top: B:160:0x02c7 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00f6 A[Catch: all -> 0x0076, PHI: r2 r5 r10 r11
      0x00f6: PHI (r2v10 ??) = (r2v40 ??), (r2v41 ??) binds: [B:43:0x00f2, B:26:0x0072] A[DONT_GENERATE, DONT_INLINE]
      0x00f6: PHI (r5v4 java.lang.Object) = (r5v3 java.lang.Object), (r5v9 java.lang.Object) binds: [B:43:0x00f2, B:26:0x0072] A[DONT_GENERATE, DONT_INLINE]
      0x00f6: PHI (r10v18 ??) = (r10v46 ??), (r10v47 ??) binds: [B:43:0x00f2, B:26:0x0072] A[DONT_GENERATE, DONT_INLINE]
      0x00f6: PHI (r11v11 ads_mobile_sdk.o00) = (r11v8 ads_mobile_sdk.o00), (r11v14 ads_mobile_sdk.o00) binds: [B:43:0x00f2, B:26:0x0072] A[DONT_GENERATE, DONT_INLINE], TryCatch #5 {all -> 0x0076, blocks: (B:25:0x006f, B:45:0x00f6, B:47:0x0105, B:49:0x014a, B:30:0x0083, B:42:0x00e0), top: B:149:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0105 A[Catch: all -> 0x0076, TryCatch #5 {all -> 0x0076, blocks: (B:25:0x006f, B:45:0x00f6, B:47:0x0105, B:49:0x014a, B:30:0x0083, B:42:0x00e0), top: B:149:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x014a A[Catch: all -> 0x0076, TRY_LEAVE, TryCatch #5 {all -> 0x0076, blocks: (B:25:0x006f, B:45:0x00f6, B:47:0x0105, B:49:0x014a, B:30:0x0083, B:42:0x00e0), top: B:149:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01a4 A[Catch: all -> 0x01b0, TryCatch #0 {all -> 0x01b0, blocks: (B:63:0x019d, B:65:0x01a4, B:67:0x01a8, B:69:0x01ac, B:72:0x01b3, B:74:0x01b7, B:76:0x01bb, B:78:0x01bf, B:79:0x01c0, B:80:0x01c5, B:81:0x01c6, B:82:0x01cd, B:83:0x01ce, B:84:0x01d5, B:85:0x01d6), top: B:148:0x019d }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01d6 A[Catch: all -> 0x01b0, TRY_LEAVE, TryCatch #0 {all -> 0x01b0, blocks: (B:63:0x019d, B:65:0x01a4, B:67:0x01a8, B:69:0x01ac, B:72:0x01b3, B:74:0x01b7, B:76:0x01bb, B:78:0x01bf, B:79:0x01c0, B:80:0x01c5, B:81:0x01c6, B:82:0x01cd, B:83:0x01ce, B:84:0x01d5, B:85:0x01d6), top: B:148:0x019d }] */
    /* JADX WARN: Type inference failed for: r10v0, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r10v1, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v15, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r10v18, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v22 */
    /* JADX WARN: Type inference failed for: r10v23 */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v25, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r10v28, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v31 */
    /* JADX WARN: Type inference failed for: r10v32 */
    /* JADX WARN: Type inference failed for: r10v33 */
    /* JADX WARN: Type inference failed for: r10v34 */
    /* JADX WARN: Type inference failed for: r10v35 */
    /* JADX WARN: Type inference failed for: r10v36 */
    /* JADX WARN: Type inference failed for: r10v37 */
    /* JADX WARN: Type inference failed for: r10v38 */
    /* JADX WARN: Type inference failed for: r10v39 */
    /* JADX WARN: Type inference failed for: r10v40 */
    /* JADX WARN: Type inference failed for: r10v41 */
    /* JADX WARN: Type inference failed for: r10v42 */
    /* JADX WARN: Type inference failed for: r10v43 */
    /* JADX WARN: Type inference failed for: r10v44 */
    /* JADX WARN: Type inference failed for: r10v45 */
    /* JADX WARN: Type inference failed for: r10v46 */
    /* JADX WARN: Type inference failed for: r10v47 */
    /* JADX WARN: Type inference failed for: r10v48 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v17, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v19, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v39 */
    /* JADX WARN: Type inference failed for: r2v40 */
    /* JADX WARN: Type inference failed for: r2v41 */
    /* JADX WARN: Type inference failed for: r2v42 */
    /* JADX WARN: Type inference failed for: r2v43 */
    /* JADX WARN: Type inference failed for: r2v6, types: [ads_mobile_sdk.rr3, java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v7, types: [ads_mobile_sdk.tu2, java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v13, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v27, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r24) {
        /*
            Method dump skipped, instruction units count: 794
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.l00.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
