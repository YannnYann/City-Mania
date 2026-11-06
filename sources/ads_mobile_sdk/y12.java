package ads_mobile_sdk;

import com.google.gson.JsonArray;
import java.io.Closeable;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ProducerScope;

/* JADX INFO: loaded from: classes.dex */
public final class y12 extends SuspendLambda implements Function2 {
    public int a;
    public Object b;
    public Object c;
    public Object d;
    public rr3 e;
    public Closeable f;
    public Object g;
    public Object h;
    public int i;
    public final /* synthetic */ c22 j;
    public final /* synthetic */ int k;
    public final /* synthetic */ int l;
    public final /* synthetic */ JsonArray m;
    public final /* synthetic */ ProducerScope n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y12(c22 c22Var, int i, int i2, JsonArray jsonArray, ProducerScope producerScope, Continuation continuation) {
        super(2, continuation);
        this.j = c22Var;
        this.k = i;
        this.l = i2;
        this.m = jsonArray;
        this.n = producerScope;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new y12(this.j, this.k, this.l, this.m, this.n, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((y12) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:137:0x0309, code lost:
    
        if (r9.send((ads_mobile_sdk.i01) r5, r17) == r0) goto L163;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01c8, code lost:
    
        if (r10.send((ads_mobile_sdk.i01) r6, r17) == r0) goto L163;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02a3 A[Catch: all -> 0x027d, TRY_LEAVE, TryCatch #14 {all -> 0x027d, blocks: (B:95:0x026a, B:97:0x0271, B:99:0x0275, B:101:0x0279, B:104:0x0280, B:106:0x0284, B:108:0x0288, B:110:0x028c, B:111:0x028d, B:112:0x0292, B:113:0x0293, B:114:0x029a, B:115:0x029b, B:116:0x02a2, B:117:0x02a3), top: B:220:0x026a }] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x02ee A[Catch: all -> 0x030d, TRY_LEAVE, TryCatch #10 {all -> 0x030d, blocks: (B:134:0x02e8, B:136:0x02ee), top: B:213:0x02e8 }] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x034e  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0371  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0386  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x03bb A[Catch: all -> 0x03c7, TryCatch #6 {all -> 0x03c7, blocks: (B:169:0x03b4, B:171:0x03bb, B:173:0x03bf, B:175:0x03c3, B:178:0x03ca, B:180:0x03ce, B:182:0x03d2, B:184:0x03d6, B:185:0x03d7, B:186:0x03dc, B:187:0x03dd, B:188:0x03e4, B:189:0x03e5, B:190:0x03ec, B:191:0x03ed), top: B:207:0x03b4 }] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x03ed A[Catch: all -> 0x03c7, TRY_LEAVE, TryCatch #6 {all -> 0x03c7, blocks: (B:169:0x03b4, B:171:0x03bb, B:173:0x03bf, B:175:0x03c3, B:178:0x03ca, B:180:0x03ce, B:182:0x03d2, B:184:0x03d6, B:185:0x03d7, B:186:0x03dc, B:187:0x03dd, B:188:0x03e4, B:189:0x03e5, B:190:0x03ec, B:191:0x03ed), top: B:207:0x03b4 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01ae A[Catch: all -> 0x01cc, TRY_LEAVE, TryCatch #9 {all -> 0x01cc, blocks: (B:62:0x01a7, B:64:0x01ae), top: B:211:0x01a7 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0271 A[Catch: all -> 0x027d, TryCatch #14 {all -> 0x027d, blocks: (B:95:0x026a, B:97:0x0271, B:99:0x0275, B:101:0x0279, B:104:0x0280, B:106:0x0284, B:108:0x0288, B:110:0x028c, B:111:0x028d, B:112:0x0292, B:113:0x0293, B:114:0x029a, B:115:0x029b, B:116:0x02a2, B:117:0x02a3), top: B:220:0x026a }] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10, types: [ads_mobile_sdk.rr3, ads_mobile_sdk.tu2, java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v11, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v35, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v40, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v43 */
    /* JADX WARN: Type inference failed for: r2v44 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v52 */
    /* JADX WARN: Type inference failed for: r2v55 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v61, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v63 */
    /* JADX WARN: Type inference failed for: r2v66 */
    /* JADX WARN: Type inference failed for: r2v67 */
    /* JADX WARN: Type inference failed for: r2v68 */
    /* JADX WARN: Type inference failed for: r2v69 */
    /* JADX WARN: Type inference failed for: r2v9, types: [ads_mobile_sdk.rr3, java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v28 */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r3v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v34 */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v37 */
    /* JADX WARN: Type inference failed for: r3v40, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v43 */
    /* JADX WARN: Type inference failed for: r3v44 */
    /* JADX WARN: Type inference failed for: r3v45 */
    /* JADX WARN: Type inference failed for: r3v49 */
    /* JADX WARN: Type inference failed for: r3v52, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v55 */
    /* JADX WARN: Type inference failed for: r3v56 */
    /* JADX WARN: Type inference failed for: r3v57 */
    /* JADX WARN: Type inference failed for: r3v58 */
    /* JADX WARN: Type inference failed for: r3v59 */
    /* JADX WARN: Type inference failed for: r3v60 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v17, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v20, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v49 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v18, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v19, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v20, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v29 */
    /* JADX WARN: Type inference failed for: r6v32, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v34, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v35 */
    /* JADX WARN: Type inference failed for: r6v36 */
    /* JADX WARN: Type inference failed for: r6v37 */
    /* JADX WARN: Type inference failed for: r6v38 */
    /* JADX WARN: Type inference failed for: r6v39 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v16, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v17, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r7v18, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v22, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v23 */
    /* JADX WARN: Type inference failed for: r7v24, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v25, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v27 */
    /* JADX WARN: Type inference failed for: r7v28 */
    /* JADX WARN: Type inference failed for: r7v29 */
    /* JADX WARN: Type inference failed for: r7v30 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v21, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r8v22, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r8v27 */
    /* JADX WARN: Type inference failed for: r8v28 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v7, types: [java.io.Closeable] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instruction units count: 1042
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.y12.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
