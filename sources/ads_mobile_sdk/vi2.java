package ads_mobile_sdk;

import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class vi2 {
    public final CoroutineScope a;
    public final CoroutineContext b;
    public final u43 c;
    public final tx d;
    public final v33 e;
    public final k8 f;
    public List g;
    public ec3 h;
    public final Mutex i;
    public q01 j;
    public int k;
    public boolean l;
    public final HashSet m;
    public final ArrayList n;
    public CompletableJob o;
    public List p;

    public vi2(CoroutineScope backgroundScope, CoroutineContext backgroundContext, u43 requestThrottler, tx clock, v33 renderingMonitor, k8 adRendererProvider) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(backgroundContext, "backgroundContext");
        Intrinsics.checkNotNullParameter(requestThrottler, "requestThrottler");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(renderingMonitor, "renderingMonitor");
        Intrinsics.checkNotNullParameter(adRendererProvider, "adRendererProvider");
        this.a = backgroundScope;
        this.b = backgroundContext;
        this.c = requestThrottler;
        this.d = clock;
        this.e = renderingMonitor;
        this.f = adRendererProvider;
        this.i = MutexKt.Mutex$default(false, 1, null);
        this.k = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.m = new HashSet();
        this.n = new ArrayList();
        CompletableJob completableJobJob$default = JobKt__JobKt.Job$default(null, 1, null);
        completableJobJob$default.complete();
        this.o = completableJobJob$default;
    }

    public final i2 c() {
        Object next;
        List list = this.p;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("remainingAdConfigs");
            list = null;
        }
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (!CollectionsKt___CollectionsKt.contains(this.m, ((i2) next).U)) {
                break;
            }
        }
        i2 i2Var = (i2) next;
        if (i2Var == null || i2Var.w > this.k) {
            return null;
        }
        this.n.add(i2Var);
        List list2 = this.p;
        if (list2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("remainingAdConfigs");
            list2 = null;
        }
        list2.remove(i2Var);
        String str = i2Var.U;
        if (str != null && str.length() != 0) {
            this.m.add(str);
        }
        if (i2Var.c0) {
            this.o = JobKt__JobKt.Job$default(null, 1, null);
        }
        return i2Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00f4, code lost:
    
        if (r0 == r3) goto L52;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0069 A[PHI: r0 r2
      0x0069: PHI (r0v18 java.lang.Object) = (r0v21 java.lang.Object), (r0v1 java.lang.Object) binds: [B:27:0x007c, B:23:0x0064] A[DONT_GENERATE, DONT_INLINE]
      0x0069: PHI (r2v6 ads_mobile_sdk.vi2) = (r2v9 ads_mobile_sdk.vi2), (r2v13 ads_mobile_sdk.vi2) binds: [B:27:0x007c, B:23:0x0064] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b3 A[Catch: all -> 0x0045, TryCatch #1 {all -> 0x0045, blocks: (B:15:0x0040, B:53:0x00f7, B:55:0x00fb, B:40:0x00af, B:42:0x00b3, B:43:0x00b8, B:45:0x00cc, B:47:0x00d2, B:49:0x00d6, B:50:0x00df), top: B:69:0x0040 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d6 A[Catch: all -> 0x0045, TryCatch #1 {all -> 0x0045, blocks: (B:15:0x0040, B:53:0x00f7, B:55:0x00fb, B:40:0x00af, B:42:0x00b3, B:43:0x00b8, B:45:0x00cc, B:47:0x00d2, B:49:0x00d6, B:50:0x00df), top: B:69:0x0040 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00df A[Catch: all -> 0x0045, TryCatch #1 {all -> 0x0045, blocks: (B:15:0x0040, B:53:0x00f7, B:55:0x00fb, B:40:0x00af, B:42:0x00b3, B:43:0x00b8, B:45:0x00cc, B:47:0x00d2, B:49:0x00d6, B:50:0x00df), top: B:69:0x0040 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x010e A[Catch: all -> 0x0132, TryCatch #0 {all -> 0x0132, blocks: (B:57:0x0108, B:59:0x010e, B:62:0x0134), top: B:67:0x0108 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00ca -> B:56:0x0106). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00d0 -> B:56:0x0106). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x00d6 -> B:56:0x0106). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x00f4 -> B:53:0x00f7). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.vi2 r16, kotlin.coroutines.Continuation r17) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 320
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.vi2.a(ads_mobile_sdk.vi2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0080, code lost:
    
        if (r8.a(r2, r0) == r1) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object c(kotlin.coroutines.Continuation r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof ads_mobile_sdk.ui2
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.ui2 r0 = (ads_mobile_sdk.ui2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.ui2 r0 = new ads_mobile_sdk.ui2
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r8)
            goto L83
        L2d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L35:
            kotlinx.coroutines.sync.Mutex r2 = r0.b
            ads_mobile_sdk.vi2 r4 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L50
        L3d:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r2 = r7.i
            r0.a = r7
            r0.b = r2
            r0.e = r4
            java.lang.Object r8 = r2.lock(r5, r0)
            if (r8 != r1) goto L4f
            goto L82
        L4f:
            r4 = r7
        L50:
            ads_mobile_sdk.ec3 r8 = r4.h     // Catch: java.lang.Throwable -> L5b
            java.lang.String r6 = "serverTransaction"
            if (r8 != 0) goto L5d
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r6)     // Catch: java.lang.Throwable -> L5b
            r8 = r5
            goto L5d
        L5b:
            r8 = move-exception
            goto L86
        L5d:
            ads_mobile_sdk.ac3 r8 = r8.b     // Catch: java.lang.Throwable -> L5b
            java.util.List r8 = r8.a     // Catch: java.lang.Throwable -> L5b
            java.util.List r8 = kotlin.collections.CollectionsKt___CollectionsKt.toMutableList(r8)     // Catch: java.lang.Throwable -> L5b
            r4.p = r8     // Catch: java.lang.Throwable -> L5b
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L5b
            r2.unlock(r5)
            ads_mobile_sdk.v33 r8 = r4.e
            ads_mobile_sdk.ec3 r2 = r4.h
            if (r2 != 0) goto L76
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r6)
            r2 = r5
        L76:
            r0.a = r5
            r0.b = r5
            r0.e = r3
            java.lang.Object r8 = r8.a(r2, r0)
            if (r8 != r1) goto L83
        L82:
            return r1
        L83:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L86:
            r2.unlock(r5)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.vi2.c(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final String b() {
        ec3 ec3Var = this.h;
        if (ec3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("serverTransaction");
            ec3Var = null;
        }
        et etVar = ec3Var.b.b.g;
        if (etVar != null) {
            return String.valueOf(etVar);
        }
        ir0 ir0Var = ir0.b;
        return "No fill.";
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0058 A[PHI: r2
      0x0058: PHI (r2v6 ads_mobile_sdk.vi2) = (r2v4 ads_mobile_sdk.vi2), (r2v8 ads_mobile_sdk.vi2) binds: [B:30:0x00a5, B:15:0x0053] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009a A[PHI: r2
      0x009a: PHI (r2v4 ads_mobile_sdk.vi2) = (r2v2 ads_mobile_sdk.vi2), (r2v5 ads_mobile_sdk.vi2) binds: [B:27:0x0097, B:17:0x005a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x011b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00cf A[EXC_TOP_SPLITTER, PHI: r2 r6 r9
      0x00cf: PHI (r2v13 kotlinx.coroutines.sync.Mutex) = (r2v10 kotlinx.coroutines.sync.Mutex), (r2v16 kotlinx.coroutines.sync.Mutex) binds: [B:37:0x00cc, B:13:0x0039] A[DONT_GENERATE, DONT_INLINE]
      0x00cf: PHI (r6v5 ads_mobile_sdk.vi2) = (r6v3 ads_mobile_sdk.vi2), (r6v8 ads_mobile_sdk.vi2) binds: [B:37:0x00cc, B:13:0x0039] A[DONT_GENERATE, DONT_INLINE]
      0x00cf: PHI (r9v18 ads_mobile_sdk.q01) = (r9v17 ads_mobile_sdk.q01), (r9v22 ads_mobile_sdk.q01) binds: [B:37:0x00cc, B:13:0x0039] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00b8 A[EXC_TOP_SPLITTER, PHI: r2 r6
      0x00b8: PHI (r2v9 kotlinx.coroutines.sync.Mutex) = (r2v7 kotlinx.coroutines.sync.Mutex), (r2v12 kotlinx.coroutines.sync.Mutex) binds: [B:33:0x00b5, B:14:0x0048] A[DONT_GENERATE, DONT_INLINE]
      0x00b8: PHI (r6v3 ads_mobile_sdk.vi2) = (r6v2 ads_mobile_sdk.vi2), (r6v4 ads_mobile_sdk.vi2) binds: [B:33:0x00b5, B:14:0x0048] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(kotlin.coroutines.Continuation r9) {
        /*
            Method dump skipped, instruction units count: 322
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.vi2.b(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final boolean a() {
        ArrayList arrayList = this.n;
        if (arrayList == null || !arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (((i2) it.next()).w < this.k) {
                    return true;
                }
            }
        }
        List list = this.p;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("remainingAdConfigs");
            list = null;
        }
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            if (((i2) it2.next()).w < this.k) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x008c, code lost:
    
        if (r10 == r1) goto L45;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0082 A[Catch: all -> 0x0054, TRY_LEAVE, TryCatch #0 {all -> 0x0054, blocks: (B:30:0x007a, B:32:0x0082, B:37:0x0093, B:20:0x0050), top: B:51:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0093 A[Catch: all -> 0x0054, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0054, blocks: (B:30:0x007a, B:32:0x0082, B:37:0x0093, B:20:0x0050), top: B:51:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v2, types: [ads_mobile_sdk.li2, kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v3, types: [ads_mobile_sdk.li2, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r0v5, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.Object, kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9, types: [ads_mobile_sdk.li2, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v3, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r10v6, types: [ads_mobile_sdk.li2, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r10v8, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v7, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r8v1, types: [kotlinx.coroutines.CompletableJob, kotlinx.coroutines.Job] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00b8 -> B:26:0x0067). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation r10) {
        /*
            r9 = this;
            boolean r0 = r10 instanceof ads_mobile_sdk.li2
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.li2 r0 = (ads_mobile_sdk.li2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.li2 r0 = new ads_mobile_sdk.li2
            r0.<init>(r9, r10)
        L18:
            java.lang.Object r10 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            r7 = 0
            if (r2 == 0) goto L63
            if (r2 == r6) goto L57
            if (r2 == r5) goto L4c
            if (r2 == r4) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r2 = r0.a
            ads_mobile_sdk.vi2 r2 = (ads_mobile_sdk.vi2) r2
            kotlin.ResultKt.throwOnFailure(r10)
            goto L67
        L37:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L3f:
            kotlinx.coroutines.sync.Mutex r2 = r0.b
            java.lang.Object r8 = r0.a
            ads_mobile_sdk.vi2 r8 = (ads_mobile_sdk.vi2) r8
            kotlin.ResultKt.throwOnFailure(r10)
        L48:
            r10 = r2
            r2 = r8
            goto La9
        L4c:
            java.lang.Object r0 = r0.a
            kotlinx.coroutines.sync.Mutex r0 = (kotlinx.coroutines.sync.Mutex) r0
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L54
            goto L8f
        L54:
            r10 = move-exception
            goto Lc0
        L57:
            kotlinx.coroutines.sync.Mutex r2 = r0.b
            java.lang.Object r8 = r0.a
            ads_mobile_sdk.vi2 r8 = (ads_mobile_sdk.vi2) r8
            kotlin.ResultKt.throwOnFailure(r10)
            r10 = r0
            r0 = r2
            goto L7a
        L63:
            kotlin.ResultKt.throwOnFailure(r10)
            r2 = r9
        L67:
            kotlinx.coroutines.sync.Mutex r10 = r2.i
            r0.a = r2
            r0.b = r10
            r0.e = r6
            java.lang.Object r8 = r10.lock(r7, r0)
            if (r8 != r1) goto L76
            goto Lba
        L76:
            r8 = r0
            r0 = r10
            r10 = r8
            r8 = r2
        L7a:
            kotlinx.coroutines.CompletableJob r2 = r8.o     // Catch: java.lang.Throwable -> L54
            boolean r2 = r2.isCompleted()     // Catch: java.lang.Throwable -> L54
            if (r2 == 0) goto L93
            r10.a = r0     // Catch: java.lang.Throwable -> L54
            r10.b = r7     // Catch: java.lang.Throwable -> L54
            r10.e = r5     // Catch: java.lang.Throwable -> L54
            ads_mobile_sdk.i2 r10 = r8.c()     // Catch: java.lang.Throwable -> L54
            if (r10 != r1) goto L8f
            goto Lba
        L8f:
            r0.unlock(r7)
            return r10
        L93:
            kotlin.Unit r2 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L54
            r0.unlock(r7)
            kotlinx.coroutines.sync.Mutex r2 = r8.i
            r10.a = r8
            r10.b = r2
            r10.e = r4
            java.lang.Object r0 = r2.lock(r7, r10)
            if (r0 != r1) goto La7
            goto Lba
        La7:
            r0 = r10
            goto L48
        La9:
            kotlinx.coroutines.CompletableJob r8 = r2.o     // Catch: java.lang.Throwable -> Lbb
            r10.unlock(r7)
            r0.a = r2
            r0.b = r7
            r0.e = r3
            java.lang.Object r10 = r8.join(r0)
            if (r10 != r1) goto L67
        Lba:
            return r1
        Lbb:
            r0 = move-exception
            r10.unlock(r7)
            throw r0
        Lc0:
            r0.unlock(r7)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.vi2.a(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00d1, code lost:
    
        if (ads_mobile_sdk.u43.a(r2, r5, r0) == r1) goto L84;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f3 A[Catch: all -> 0x0039, TRY_LEAVE, TryCatch #4 {all -> 0x0039, blocks: (B:14:0x0034, B:44:0x00ed, B:46:0x00f3), top: B:89:0x0034 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x010f A[Catch: all -> 0x011b, TryCatch #5 {all -> 0x011b, blocks: (B:53:0x0108, B:55:0x010f, B:57:0x0113, B:59:0x0117, B:62:0x011d, B:64:0x0121, B:66:0x0125, B:68:0x0129, B:69:0x012a, B:70:0x012f, B:71:0x0130, B:72:0x0137, B:73:0x0138, B:74:0x013f, B:75:0x0140), top: B:91:0x0108 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0140 A[Catch: all -> 0x011b, TRY_LEAVE, TryCatch #5 {all -> 0x011b, blocks: (B:53:0x0108, B:55:0x010f, B:57:0x0113, B:59:0x0117, B:62:0x011d, B:64:0x0121, B:66:0x0125, B:68:0x0129, B:69:0x012a, B:70:0x012f, B:71:0x0130, B:72:0x0137, B:73:0x0138, B:74:0x013f, B:75:0x0140), top: B:91:0x0108 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v5, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r10v0, types: [ads_mobile_sdk.ec3, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v11, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r10v15, types: [ads_mobile_sdk.ec3] */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v19 */
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v22 */
    /* JADX WARN: Type inference failed for: r10v23 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v8, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v6, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.ec3 r10, kotlin.coroutines.Continuation r11) {
        /*
            Method dump skipped, instruction units count: 327
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.vi2.a(ads_mobile_sdk.ec3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00b3, code lost:
    
        r15 = r13.e;
        r6.a = r13;
        r6.b = r14;
        r6.c = r5;
        r6.d = r10;
        r6.h = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00c3, code lost:
    
        if (r15.a(r14, r6) != r0) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00c7, code lost:
    
        r4 = r13;
        r2 = r14;
        r1 = r5;
        r14 = r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0131 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0179 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.i2 r14, kotlin.coroutines.Continuation r15) {
        /*
            Method dump skipped, instruction units count: 378
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.vi2.a(ads_mobile_sdk.i2, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
