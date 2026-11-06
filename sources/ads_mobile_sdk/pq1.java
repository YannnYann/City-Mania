package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class pq1 extends SuspendLambda implements Function2 {
    public Object a;
    public Object b;
    public Object c;
    public Object d;
    public int e;
    public int f;
    public final /* synthetic */ String g;
    public final /* synthetic */ boolean h;
    public final /* synthetic */ yq1 i;
    public final /* synthetic */ boolean j;
    public final /* synthetic */ Ref$ObjectRef k;
    public final /* synthetic */ String l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pq1(String str, boolean z, yq1 yq1Var, boolean z2, Ref$ObjectRef ref$ObjectRef, String str2, Continuation continuation) {
        super(2, continuation);
        this.g = str;
        this.h = z;
        this.i = yq1Var;
        this.j = z2;
        this.k = ref$ObjectRef;
        this.l = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new pq1(this.g, this.h, this.i, this.j, this.k, this.l, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((pq1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:105:0x02bd A[Catch: all -> 0x02c9, TryCatch #7 {all -> 0x02c9, blocks: (B:103:0x02b6, B:105:0x02bd, B:107:0x02c1, B:109:0x02c5, B:112:0x02cc, B:114:0x02d0, B:116:0x02d4, B:118:0x02d8, B:119:0x02d9, B:120:0x02de, B:121:0x02df, B:122:0x02e6, B:123:0x02e7, B:124:0x02ee, B:125:0x02ef), top: B:232:0x02b6 }] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x02ef A[Catch: all -> 0x02c9, TRY_LEAVE, TryCatch #7 {all -> 0x02c9, blocks: (B:103:0x02b6, B:105:0x02bd, B:107:0x02c1, B:109:0x02c5, B:112:0x02cc, B:114:0x02d0, B:116:0x02d4, B:118:0x02d8, B:119:0x02d9, B:120:0x02de, B:121:0x02df, B:122:0x02e6, B:123:0x02e7, B:124:0x02ee, B:125:0x02ef), top: B:232:0x02b6 }] */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0322 A[Catch: all -> 0x0329, TRY_LEAVE, TryCatch #6 {all -> 0x0329, blocks: (B:135:0x031c, B:137:0x0322), top: B:230:0x031c }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0337  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0349  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x03b1  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x03b8  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x03d1 A[Catch: all -> 0x03dd, TryCatch #13 {all -> 0x03dd, blocks: (B:162:0x03ca, B:164:0x03d1, B:166:0x03d5, B:168:0x03d9, B:171:0x03e0, B:173:0x03e4, B:175:0x03e8, B:177:0x03ec, B:178:0x03ed, B:179:0x03f2, B:180:0x03f3, B:181:0x03fa, B:182:0x03fb, B:183:0x0402, B:184:0x0403), top: B:243:0x03ca }] */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0403 A[Catch: all -> 0x03dd, TRY_LEAVE, TryCatch #13 {all -> 0x03dd, blocks: (B:162:0x03ca, B:164:0x03d1, B:166:0x03d5, B:168:0x03d9, B:171:0x03e0, B:173:0x03e4, B:175:0x03e8, B:177:0x03ec, B:178:0x03ed, B:179:0x03f2, B:180:0x03f3, B:181:0x03fa, B:182:0x03fb, B:183:0x0402, B:184:0x0403), top: B:243:0x03ca }] */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0419 A[Catch: all -> 0x0425, TryCatch #0 {all -> 0x0425, blocks: (B:192:0x0412, B:194:0x0419, B:196:0x041d, B:198:0x0421, B:201:0x0428, B:203:0x042c, B:205:0x0430, B:207:0x0434, B:208:0x0435, B:209:0x043a, B:210:0x043b, B:211:0x0442, B:212:0x0443, B:213:0x044a, B:214:0x044b), top: B:219:0x0412 }] */
    /* JADX WARN: Removed duplicated region for block: B:214:0x044b A[Catch: all -> 0x0425, TRY_LEAVE, TryCatch #0 {all -> 0x0425, blocks: (B:192:0x0412, B:194:0x0419, B:196:0x041d, B:198:0x0421, B:201:0x0428, B:203:0x042c, B:205:0x0430, B:207:0x0434, B:208:0x0435, B:209:0x043a, B:210:0x043b, B:211:0x0442, B:212:0x0443, B:213:0x044a, B:214:0x044b), top: B:219:0x0412 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0079 A[PHI: r0 r1 r2 r3 r4
      0x0079: PHI (r0v33 int) = (r0v29 int), (r0v39 int) binds: [B:80:0x025a, B:21:0x0068] A[DONT_GENERATE, DONT_INLINE]
      0x0079: PHI (r1v26 kotlinx.coroutines.CompletableDeferred) = (r1v21 kotlinx.coroutines.CompletableDeferred), (r1v38 kotlinx.coroutines.CompletableDeferred) binds: [B:80:0x025a, B:21:0x0068] A[DONT_GENERATE, DONT_INLINE]
      0x0079: PHI (r2v47 ??) = (r2v97 ??), (r2v98 ??) binds: [B:80:0x025a, B:21:0x0068] A[DONT_GENERATE, DONT_INLINE]
      0x0079: PHI (r3v32 kotlin.jvm.internal.Ref$ObjectRef) = (r3v24 kotlin.jvm.internal.Ref$ObjectRef), (r3v41 kotlin.jvm.internal.Ref$ObjectRef) binds: [B:80:0x025a, B:21:0x0068] A[DONT_GENERATE, DONT_INLINE]
      0x0079: PHI (r4v8 ads_mobile_sdk.pq1) = (r4v5 ads_mobile_sdk.pq1), (r4v0 ads_mobile_sdk.pq1) binds: [B:80:0x025a, B:21:0x0068] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02a1 A[Catch: all -> 0x02a8, TRY_LEAVE, TryCatch #5 {all -> 0x02a8, blocks: (B:92:0x029b, B:94:0x02a1), top: B:228:0x029b }] */
    /* JADX WARN: Type inference failed for: r0v14, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v22, types: [T, ads_mobile_sdk.r31, android.view.View, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v34, types: [ads_mobile_sdk.r31, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v5, types: [ads_mobile_sdk.r31] */
    /* JADX WARN: Type inference failed for: r2v0, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v100 */
    /* JADX WARN: Type inference failed for: r2v101 */
    /* JADX WARN: Type inference failed for: r2v102 */
    /* JADX WARN: Type inference failed for: r2v103 */
    /* JADX WARN: Type inference failed for: r2v104 */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v38, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v41 */
    /* JADX WARN: Type inference failed for: r2v42, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v43 */
    /* JADX WARN: Type inference failed for: r2v44 */
    /* JADX WARN: Type inference failed for: r2v47 */
    /* JADX WARN: Type inference failed for: r2v97 */
    /* JADX WARN: Type inference failed for: r2v98 */
    /* JADX WARN: Type inference failed for: r2v99 */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v25, types: [T] */
    /* JADX WARN: Type inference failed for: r3v49, types: [ads_mobile_sdk.r31, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v56 */
    /* JADX WARN: Type inference failed for: r3v60 */
    /* JADX WARN: Type inference failed for: r3v61 */
    /* JADX WARN: Type inference failed for: r3v62 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v32 */
    /* JADX WARN: Type inference failed for: r5v38 */
    /* JADX WARN: Type inference failed for: r5v41 */
    /* JADX WARN: Type inference failed for: r5v42 */
    /* JADX WARN: Type inference failed for: r5v43 */
    /* JADX WARN: Type inference failed for: r5v44 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r23) {
        /*
            Method dump skipped, instruction units count: 1130
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pq1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
