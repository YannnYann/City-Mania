package ads_mobile_sdk;

import androidx.datastore.core.DataStore;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class q7 implements r6 {
    public final v7 a;
    public final ux b;
    public final d8 c;
    public final CoroutineScope d;
    public final f40 e;
    public final Mutex f;
    public final Mutex g;
    public final Mutex h;
    public boolean i;
    public n6 j;
    public boolean k;
    public final DataStore l;
    public final Mutex m;
    public Job n;

    public q7(DataStore adQualityDataStore, d40 coroutineScopeProvider, v7 dataPinger, ux clock, d8 flags) {
        Intrinsics.checkNotNullParameter(adQualityDataStore, "adQualityDataStore");
        Intrinsics.checkNotNullParameter(coroutineScopeProvider, "coroutineScopeProvider");
        Intrinsics.checkNotNullParameter(dataPinger, "dataPinger");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = dataPinger;
        this.b = clock;
        this.c = flags;
        this.d = coroutineScopeProvider.get();
        this.e = new f40();
        this.f = MutexKt.Mutex$default(false, 1, null);
        this.g = MutexKt.Mutex$default(false, 1, null);
        this.h = MutexKt.Mutex$default(false, 1, null);
        this.l = adQualityDataStore;
        this.m = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x00db, code lost:
    
        if (r11.c(r0) != r1) goto L54;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0088 A[Catch: all -> 0x008e, TRY_LEAVE, TryCatch #0 {all -> 0x008e, blocks: (B:30:0x0084, B:32:0x0088, B:37:0x0090), top: B:60:0x0084 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0090 A[Catch: all -> 0x008e, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x008e, blocks: (B:30:0x0084, B:32:0x0088, B:37:0x0090), top: B:60:0x0084 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b7 A[Catch: all -> 0x00be, TryCatch #1 {all -> 0x00be, blocks: (B:42:0x00b3, B:44:0x00b7, B:47:0x00c0), top: B:61:0x00b3 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00d3 A[PHI: r11
      0x00d3: PHI (r11v8 ads_mobile_sdk.q7) = (r11v6 ads_mobile_sdk.q7), (r11v14 ads_mobile_sdk.q7) binds: [B:49:0x00d0, B:18:0x0042] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.q7 r11, kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 233
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.q7.a(ads_mobile_sdk.q7, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object b(ads_mobile_sdk.q7 r7, kotlin.coroutines.Continuation r8) {
        /*
            r7.getClass()
            boolean r0 = r8 instanceof ads_mobile_sdk.f7
            if (r0 == 0) goto L16
            r0 = r8
            ads_mobile_sdk.f7 r0 = (ads_mobile_sdk.f7) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.f = r1
            goto L1b
        L16:
            ads_mobile_sdk.f7 r0 = new ads_mobile_sdk.f7
            r0.<init>(r7, r8)
        L1b:
            java.lang.Object r8 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3d
            if (r2 != r3) goto L35
            long r1 = r0.c
            kotlinx.coroutines.sync.Mutex r7 = r0.b
            ads_mobile_sdk.q7 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r7
            r7 = r0
            goto L5b
        L35:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3d:
            kotlin.ResultKt.throwOnFailure(r8)
            ads_mobile_sdk.ux r8 = r7.b
            r8.getClass()
            long r5 = java.lang.System.currentTimeMillis()
            kotlinx.coroutines.sync.Mutex r8 = r7.f
            r0.a = r7
            r0.b = r8
            r0.c = r5
            r0.f = r3
            java.lang.Object r0 = r8.lock(r4, r0)
            if (r0 != r1) goto L5a
            return r1
        L5a:
            r1 = r5
        L5b:
            ads_mobile_sdk.n6 r7 = r7.j     // Catch: java.lang.Throwable -> L66
            if (r7 != 0) goto L68
            java.lang.String r7 = "adQualityDataBuilder"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r7)     // Catch: java.lang.Throwable -> L66
            r7 = r4
            goto L68
        L66:
            r7 = move-exception
            goto L71
        L68:
            r7.a(r1)     // Catch: java.lang.Throwable -> L66
            r8.unlock(r4)
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L71:
            r8.unlock(r4)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.q7.b(ads_mobile_sdk.q7, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x0136, code lost:
    
        if (r4.a(r0, r2) == r3) goto L67;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0095 A[Catch: all -> 0x009b, TRY_LEAVE, TryCatch #0 {all -> 0x009b, blocks: (B:29:0x0091, B:31:0x0095, B:37:0x009f), top: B:74:0x0091 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c7 A[Catch: all -> 0x00cc, TRY_ENTER, TryCatch #1 {all -> 0x00cc, blocks: (B:41:0x00c1, B:44:0x00c7, B:47:0x00cf, B:49:0x00d3, B:50:0x00d7, B:52:0x00e1, B:53:0x00e5, B:55:0x00f1, B:56:0x00f5, B:58:0x00fc, B:59:0x0100), top: B:75:0x00c1 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d3 A[Catch: all -> 0x00cc, TryCatch #1 {all -> 0x00cc, blocks: (B:41:0x00c1, B:44:0x00c7, B:47:0x00cf, B:49:0x00d3, B:50:0x00d7, B:52:0x00e1, B:53:0x00e5, B:55:0x00f1, B:56:0x00f5, B:58:0x00fc, B:59:0x0100), top: B:75:0x00c1 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00e1 A[Catch: all -> 0x00cc, TryCatch #1 {all -> 0x00cc, blocks: (B:41:0x00c1, B:44:0x00c7, B:47:0x00cf, B:49:0x00d3, B:50:0x00d7, B:52:0x00e1, B:53:0x00e5, B:55:0x00f1, B:56:0x00f5, B:58:0x00fc, B:59:0x0100), top: B:75:0x00c1 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00f1 A[Catch: all -> 0x00cc, TryCatch #1 {all -> 0x00cc, blocks: (B:41:0x00c1, B:44:0x00c7, B:47:0x00cf, B:49:0x00d3, B:50:0x00d7, B:52:0x00e1, B:53:0x00e5, B:55:0x00f1, B:56:0x00f5, B:58:0x00fc, B:59:0x0100), top: B:75:0x00c1 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00fc A[Catch: all -> 0x00cc, TryCatch #1 {all -> 0x00cc, blocks: (B:41:0x00c1, B:44:0x00c7, B:47:0x00cf, B:49:0x00d3, B:50:0x00d7, B:52:0x00e1, B:53:0x00e5, B:55:0x00f1, B:56:0x00f5, B:58:0x00fc, B:59:0x0100), top: B:75:0x00c1 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0116 A[PHI: r0 r4
      0x0116: PHI (r0v16 ads_mobile_sdk.o6) = (r0v14 ads_mobile_sdk.o6), (r0v27 ads_mobile_sdk.o6) binds: [B:61:0x0113, B:18:0x0046] A[DONT_GENERATE, DONT_INLINE]
      0x0116: PHI (r4v5 ads_mobile_sdk.q7) = (r4v4 ads_mobile_sdk.q7), (r4v8 ads_mobile_sdk.q7) binds: [B:61:0x0113, B:18:0x0046] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object c(ads_mobile_sdk.q7 r17, kotlin.coroutines.Continuation r18) {
        /*
            Method dump skipped, instruction units count: 324
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.q7.c(ads_mobile_sdk.q7, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x0119, code lost:
    
        if (r0.b(r2) == r3) goto L58;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
    /* JADX WARN: Type inference failed for: r4v0, types: [int] */
    /* JADX WARN: Type inference failed for: r4v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v5, types: [kotlinx.coroutines.sync.Mutex] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object d(ads_mobile_sdk.q7 r18, kotlin.coroutines.Continuation r19) {
        /*
            Method dump skipped, instruction units count: 294
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.q7.d(ads_mobile_sdk.q7, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x0141, code lost:
    
        if (r4.a(r0, r2) == r3) goto L70;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0095 A[Catch: all -> 0x009b, TRY_LEAVE, TryCatch #0 {all -> 0x009b, blocks: (B:29:0x0091, B:31:0x0095, B:37:0x009f), top: B:77:0x0091 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c7 A[Catch: all -> 0x00cc, TRY_ENTER, TryCatch #1 {all -> 0x00cc, blocks: (B:41:0x00c1, B:44:0x00c7, B:47:0x00cf, B:49:0x00d3, B:50:0x00d7, B:52:0x00e1, B:53:0x00e5, B:55:0x00f1, B:56:0x00f5, B:58:0x00fc, B:59:0x0100, B:61:0x0107, B:62:0x010b), top: B:78:0x00c1 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d3 A[Catch: all -> 0x00cc, TryCatch #1 {all -> 0x00cc, blocks: (B:41:0x00c1, B:44:0x00c7, B:47:0x00cf, B:49:0x00d3, B:50:0x00d7, B:52:0x00e1, B:53:0x00e5, B:55:0x00f1, B:56:0x00f5, B:58:0x00fc, B:59:0x0100, B:61:0x0107, B:62:0x010b), top: B:78:0x00c1 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00e1 A[Catch: all -> 0x00cc, TryCatch #1 {all -> 0x00cc, blocks: (B:41:0x00c1, B:44:0x00c7, B:47:0x00cf, B:49:0x00d3, B:50:0x00d7, B:52:0x00e1, B:53:0x00e5, B:55:0x00f1, B:56:0x00f5, B:58:0x00fc, B:59:0x0100, B:61:0x0107, B:62:0x010b), top: B:78:0x00c1 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00f1 A[Catch: all -> 0x00cc, TryCatch #1 {all -> 0x00cc, blocks: (B:41:0x00c1, B:44:0x00c7, B:47:0x00cf, B:49:0x00d3, B:50:0x00d7, B:52:0x00e1, B:53:0x00e5, B:55:0x00f1, B:56:0x00f5, B:58:0x00fc, B:59:0x0100, B:61:0x0107, B:62:0x010b), top: B:78:0x00c1 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00fc A[Catch: all -> 0x00cc, TryCatch #1 {all -> 0x00cc, blocks: (B:41:0x00c1, B:44:0x00c7, B:47:0x00cf, B:49:0x00d3, B:50:0x00d7, B:52:0x00e1, B:53:0x00e5, B:55:0x00f1, B:56:0x00f5, B:58:0x00fc, B:59:0x0100, B:61:0x0107, B:62:0x010b), top: B:78:0x00c1 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0107 A[Catch: all -> 0x00cc, TryCatch #1 {all -> 0x00cc, blocks: (B:41:0x00c1, B:44:0x00c7, B:47:0x00cf, B:49:0x00d3, B:50:0x00d7, B:52:0x00e1, B:53:0x00e5, B:55:0x00f1, B:56:0x00f5, B:58:0x00fc, B:59:0x0100, B:61:0x0107, B:62:0x010b), top: B:78:0x00c1 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0121 A[PHI: r0 r4
      0x0121: PHI (r0v19 ads_mobile_sdk.o6) = (r0v16 ads_mobile_sdk.o6), (r0v30 ads_mobile_sdk.o6) binds: [B:64:0x011e, B:18:0x0046] A[DONT_GENERATE, DONT_INLINE]
      0x0121: PHI (r4v5 ads_mobile_sdk.q7) = (r4v4 ads_mobile_sdk.q7), (r4v8 ads_mobile_sdk.q7) binds: [B:64:0x011e, B:18:0x0046] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object e(ads_mobile_sdk.q7 r17, kotlin.coroutines.Continuation r18) {
        /*
            Method dump skipped, instruction units count: 335
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.q7.e(ads_mobile_sdk.q7, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x0169, code lost:
    
        if (r4.d(r2) != r3) goto L74;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x009f A[Catch: all -> 0x00a4, TRY_ENTER, TryCatch #1 {all -> 0x00a4, blocks: (B:34:0x0099, B:37:0x009f, B:40:0x00a7, B:43:0x00af, B:45:0x00b3, B:46:0x00b7, B:48:0x00d3, B:49:0x00d7, B:51:0x0102, B:53:0x0106, B:54:0x010a, B:55:0x0113, B:57:0x0117, B:58:0x011b, B:60:0x0121, B:62:0x0125, B:63:0x0129, B:65:0x0145, B:66:0x0149, B:67:0x0151, B:69:0x0155, B:70:0x0159), top: B:81:0x0099 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00af A[Catch: all -> 0x00a4, TRY_ENTER, TryCatch #1 {all -> 0x00a4, blocks: (B:34:0x0099, B:37:0x009f, B:40:0x00a7, B:43:0x00af, B:45:0x00b3, B:46:0x00b7, B:48:0x00d3, B:49:0x00d7, B:51:0x0102, B:53:0x0106, B:54:0x010a, B:55:0x0113, B:57:0x0117, B:58:0x011b, B:60:0x0121, B:62:0x0125, B:63:0x0129, B:65:0x0145, B:66:0x0149, B:67:0x0151, B:69:0x0155, B:70:0x0159), top: B:81:0x0099 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0117 A[Catch: all -> 0x00a4, TryCatch #1 {all -> 0x00a4, blocks: (B:34:0x0099, B:37:0x009f, B:40:0x00a7, B:43:0x00af, B:45:0x00b3, B:46:0x00b7, B:48:0x00d3, B:49:0x00d7, B:51:0x0102, B:53:0x0106, B:54:0x010a, B:55:0x0113, B:57:0x0117, B:58:0x011b, B:60:0x0121, B:62:0x0125, B:63:0x0129, B:65:0x0145, B:66:0x0149, B:67:0x0151, B:69:0x0155, B:70:0x0159), top: B:81:0x0099 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0121 A[Catch: all -> 0x00a4, TryCatch #1 {all -> 0x00a4, blocks: (B:34:0x0099, B:37:0x009f, B:40:0x00a7, B:43:0x00af, B:45:0x00b3, B:46:0x00b7, B:48:0x00d3, B:49:0x00d7, B:51:0x0102, B:53:0x0106, B:54:0x010a, B:55:0x0113, B:57:0x0117, B:58:0x011b, B:60:0x0121, B:62:0x0125, B:63:0x0129, B:65:0x0145, B:66:0x0149, B:67:0x0151, B:69:0x0155, B:70:0x0159), top: B:81:0x0099 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0155 A[Catch: all -> 0x00a4, TryCatch #1 {all -> 0x00a4, blocks: (B:34:0x0099, B:37:0x009f, B:40:0x00a7, B:43:0x00af, B:45:0x00b3, B:46:0x00b7, B:48:0x00d3, B:49:0x00d7, B:51:0x0102, B:53:0x0106, B:54:0x010a, B:55:0x0113, B:57:0x0117, B:58:0x011b, B:60:0x0121, B:62:0x0125, B:63:0x0129, B:65:0x0145, B:66:0x0149, B:67:0x0151, B:69:0x0155, B:70:0x0159), top: B:81:0x0099 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object f(ads_mobile_sdk.q7 r17, kotlin.coroutines.Continuation r18) {
        /*
            Method dump skipped, instruction units count: 375
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.q7.f(ads_mobile_sdk.q7, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(kotlin.coroutines.Continuation r8) throws java.lang.Throwable {
        /*
            r7 = this;
            boolean r0 = r8 instanceof ads_mobile_sdk.w6
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.w6 r0 = (ads_mobile_sdk.w6) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.w6 r0 = new ads_mobile_sdk.w6
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L46
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r0 = r0.a
            kotlinx.coroutines.sync.Mutex r0 = (kotlinx.coroutines.sync.Mutex) r0
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L31
            goto L70
        L31:
            r8 = move-exception
            goto L7c
        L33:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L3b:
            kotlinx.coroutines.sync.Mutex r2 = r0.b
            java.lang.Object r4 = r0.a
            ads_mobile_sdk.q7 r4 = (ads_mobile_sdk.q7) r4
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r2
            goto L59
        L46:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r7.h
            r0.a = r7
            r0.b = r8
            r0.e = r4
            java.lang.Object r2 = r8.lock(r5, r0)
            if (r2 != r1) goto L58
            goto L6c
        L58:
            r4 = r7
        L59:
            androidx.datastore.core.DataStore r2 = r4.l     // Catch: java.lang.Throwable -> L78
            ads_mobile_sdk.x6 r4 = new ads_mobile_sdk.x6     // Catch: java.lang.Throwable -> L78
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L78
            r0.a = r8     // Catch: java.lang.Throwable -> L78
            r0.b = r5     // Catch: java.lang.Throwable -> L78
            r0.e = r3     // Catch: java.lang.Throwable -> L78
            java.lang.Object r0 = r2.updateData(r4, r0)     // Catch: java.lang.Throwable -> L78
            if (r0 != r1) goto L6d
        L6c:
            return r1
        L6d:
            r6 = r0
            r0 = r8
            r8 = r6
        L70:
            ads_mobile_sdk.u7 r8 = (ads_mobile_sdk.u7) r8     // Catch: java.lang.Throwable -> L31
            r0.unlock(r5)
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L78:
            r0 = move-exception
            r6 = r0
            r0 = r8
            r8 = r6
        L7c:
            r0.unlock(r5)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.q7.b(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object d(kotlin.coroutines.Continuation r13) {
        /*
            r12 = this;
            boolean r0 = r13 instanceof ads_mobile_sdk.o7
            if (r0 == 0) goto L13
            r0 = r13
            ads_mobile_sdk.o7 r0 = (ads_mobile_sdk.o7) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.o7 r0 = new ads_mobile_sdk.o7
            r0.<init>(r12, r13)
        L18:
            java.lang.Object r13 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            long r1 = r0.c
            kotlinx.coroutines.sync.Mutex r5 = r0.b
            ads_mobile_sdk.q7 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r13)
            goto L9b
        L30:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r0)
            throw r13
        L38:
            kotlin.ResultKt.throwOnFailure(r13)
            ads_mobile_sdk.d8 r13 = r12.c
            ads_mobile_sdk.e8 r13 = (ads_mobile_sdk.e8) r13
            ads_mobile_sdk.ex0 r13 = r13.a
            r13.getClass()
            java.lang.String r2 = "gads:ad_quality_metrics:heartbeat_enabled"
            java.lang.String r5 = "key"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r5)
            java.lang.Boolean r6 = java.lang.Boolean.FALSE
            ads_mobile_sdk.ir r7 = ads_mobile_sdk.yr.b
            java.lang.Object r13 = r13.a(r2, r6, r7)
            java.lang.Boolean r13 = (java.lang.Boolean) r13
            boolean r13 = r13.booleanValue()
            if (r13 != 0) goto L5e
            kotlin.Unit r13 = kotlin.Unit.INSTANCE
            return r13
        L5e:
            ads_mobile_sdk.d8 r13 = r12.c
            ads_mobile_sdk.e8 r13 = (ads_mobile_sdk.e8) r13
            ads_mobile_sdk.ex0 r13 = r13.a
            r13.getClass()
            java.lang.String r2 = "gads:ad_quality_metrics:heartbeat_interval_ms"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r5)
            r5 = 10000(0x2710, double:4.9407E-320)
            java.lang.Long r5 = java.lang.Long.valueOf(r5)
            ads_mobile_sdk.rr r6 = ads_mobile_sdk.yr.d
            java.lang.Object r13 = r13.a(r2, r5, r6)
            java.lang.Number r13 = (java.lang.Number) r13
            long r5 = r13.longValue()
            r7 = 0
            int r13 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r13 > 0) goto L87
            kotlin.Unit r13 = kotlin.Unit.INSTANCE
            return r13
        L87:
            kotlinx.coroutines.sync.Mutex r13 = r12.m
            r0.a = r12
            r0.b = r13
            r0.c = r5
            r0.f = r3
            java.lang.Object r0 = r13.lock(r4, r0)
            if (r0 != r1) goto L98
            return r1
        L98:
            r0 = r12
            r1 = r5
            r5 = r13
        L9b:
            kotlinx.coroutines.Job r13 = r0.n     // Catch: java.lang.Throwable -> La3
            if (r13 == 0) goto La6
            kotlinx.coroutines.Job.DefaultImpls.cancel$default(r13, r4, r3, r4)     // Catch: java.lang.Throwable -> La3
            goto La6
        La3:
            r0 = move-exception
            r13 = r0
            goto Lbd
        La6:
            kotlinx.coroutines.CoroutineScope r6 = r0.d     // Catch: java.lang.Throwable -> La3
            ads_mobile_sdk.p7 r9 = new ads_mobile_sdk.p7     // Catch: java.lang.Throwable -> La3
            r9.<init>(r1, r0, r4)     // Catch: java.lang.Throwable -> La3
            r10 = 3
            r11 = 0
            r7 = 0
            r8 = 0
            kotlinx.coroutines.Job r13 = kotlinx.coroutines.BuildersKt.launch$default(r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> La3
            r0.n = r13     // Catch: java.lang.Throwable -> La3
            kotlin.Unit r13 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> La3
            r5.unlock(r4)
            return r13
        Lbd:
            r5.unlock(r4)
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.q7.d(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object c(kotlin.coroutines.Continuation r8) throws java.lang.Throwable {
        /*
            r7 = this;
            boolean r0 = r8 instanceof ads_mobile_sdk.a7
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.a7 r0 = (ads_mobile_sdk.a7) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.a7 r0 = new ads_mobile_sdk.a7
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L5a
            if (r2 == r5) goto L4e
            if (r2 == r4) goto L40
            if (r2 != r3) goto L38
            java.lang.Object r0 = r0.a
            kotlinx.coroutines.sync.Mutex r0 = (kotlinx.coroutines.sync.Mutex) r0
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L35
            goto Lac
        L35:
            r8 = move-exception
            goto Lb6
        L38:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L40:
            kotlinx.coroutines.sync.Mutex r2 = r0.c
            java.lang.Object r4 = r0.b
            ads_mobile_sdk.o6 r4 = (ads_mobile_sdk.o6) r4
            java.lang.Object r5 = r0.a
            ads_mobile_sdk.q7 r5 = (ads_mobile_sdk.q7) r5
            kotlin.ResultKt.throwOnFailure(r8)
            goto L95
        L4e:
            java.lang.Object r2 = r0.b
            kotlinx.coroutines.sync.Mutex r2 = (kotlinx.coroutines.sync.Mutex) r2
            java.lang.Object r5 = r0.a
            ads_mobile_sdk.q7 r5 = (ads_mobile_sdk.q7) r5
            kotlin.ResultKt.throwOnFailure(r8)
            goto L6d
        L5a:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r2 = r7.f
            r0.a = r7
            r0.b = r2
            r0.f = r5
            java.lang.Object r8 = r2.lock(r6, r0)
            if (r8 != r1) goto L6c
            goto Laa
        L6c:
            r5 = r7
        L6d:
            ads_mobile_sdk.n6 r8 = r5.j     // Catch: java.lang.Throwable -> L78
            if (r8 != 0) goto L7a
            java.lang.String r8 = "adQualityDataBuilder"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r8)     // Catch: java.lang.Throwable -> L78
            r8 = r6
            goto L7a
        L78:
            r8 = move-exception
            goto Lba
        L7a:
            ads_mobile_sdk.vz0 r8 = r8.b()     // Catch: java.lang.Throwable -> L78
            ads_mobile_sdk.o6 r8 = (ads_mobile_sdk.o6) r8     // Catch: java.lang.Throwable -> L78
            r2.unlock(r6)
            kotlinx.coroutines.sync.Mutex r2 = r5.h
            r0.a = r5
            r0.b = r8
            r0.c = r2
            r0.f = r4
            java.lang.Object r4 = r2.lock(r6, r0)
            if (r4 != r1) goto L94
            goto Laa
        L94:
            r4 = r8
        L95:
            androidx.datastore.core.DataStore r8 = r5.l     // Catch: java.lang.Throwable -> Lb4
            ads_mobile_sdk.b7 r5 = new ads_mobile_sdk.b7     // Catch: java.lang.Throwable -> Lb4
            r5.<init>(r4, r6)     // Catch: java.lang.Throwable -> Lb4
            r0.a = r2     // Catch: java.lang.Throwable -> Lb4
            r0.b = r6     // Catch: java.lang.Throwable -> Lb4
            r0.c = r6     // Catch: java.lang.Throwable -> Lb4
            r0.f = r3     // Catch: java.lang.Throwable -> Lb4
            java.lang.Object r8 = r8.updateData(r5, r0)     // Catch: java.lang.Throwable -> Lb4
            if (r8 != r1) goto Lab
        Laa:
            return r1
        Lab:
            r0 = r2
        Lac:
            ads_mobile_sdk.u7 r8 = (ads_mobile_sdk.u7) r8     // Catch: java.lang.Throwable -> L35
            r0.unlock(r6)
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        Lb4:
            r8 = move-exception
            r0 = r2
        Lb6:
            r0.unlock(r6)
            throw r8
        Lba:
            r2.unlock(r6)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.q7.c(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x00f9, code lost:
    
        if (r12.d(r0) != r1) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00af A[Catch: all -> 0x00b5, TRY_LEAVE, TryCatch #1 {all -> 0x00b5, blocks: (B:30:0x00ab, B:32:0x00af, B:37:0x00b7, B:39:0x00cc, B:40:0x00d2), top: B:56:0x00ab }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b7 A[Catch: all -> 0x00b5, TRY_ENTER, TryCatch #1 {all -> 0x00b5, blocks: (B:30:0x00ab, B:32:0x00af, B:37:0x00b7, B:39:0x00cc, B:40:0x00d2), top: B:56:0x00ab }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.q7 r12, java.lang.String r13, java.util.List r14, kotlin.coroutines.Continuation r15) {
        /*
            Method dump skipped, instruction units count: 264
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.q7.a(ads_mobile_sdk.q7, java.lang.String, java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0071, code lost:
    
        if (r8 == r1) goto L26;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v4, types: [kotlinx.coroutines.sync.Mutex] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r7, kotlin.coroutines.Continuation r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof ads_mobile_sdk.s6
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.s6 r0 = (ads_mobile_sdk.s6) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.s6 r0 = new ads_mobile_sdk.s6
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L47
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r7 = r0.a
            kotlinx.coroutines.sync.Mutex r7 = (kotlinx.coroutines.sync.Mutex) r7
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L31
            goto L74
        L31:
            r8 = move-exception
            goto L7c
        L33:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3b:
            kotlinx.coroutines.sync.Mutex r7 = r0.c
            java.lang.String r2 = r0.b
            java.lang.Object r4 = r0.a
            ads_mobile_sdk.q7 r4 = (ads_mobile_sdk.q7) r4
            kotlin.ResultKt.throwOnFailure(r8)
            goto L5e
        L47:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r6.h
            r0.a = r6
            r0.b = r7
            r0.c = r8
            r0.f = r4
            java.lang.Object r2 = r8.lock(r5, r0)
            if (r2 != r1) goto L5b
            goto L73
        L5b:
            r4 = r6
            r2 = r7
            r7 = r8
        L5e:
            androidx.datastore.core.DataStore r8 = r4.l     // Catch: java.lang.Throwable -> L31
            ads_mobile_sdk.t6 r4 = new ads_mobile_sdk.t6     // Catch: java.lang.Throwable -> L31
            r4.<init>(r2, r5)     // Catch: java.lang.Throwable -> L31
            r0.a = r7     // Catch: java.lang.Throwable -> L31
            r0.b = r5     // Catch: java.lang.Throwable -> L31
            r0.c = r5     // Catch: java.lang.Throwable -> L31
            r0.f = r3     // Catch: java.lang.Throwable -> L31
            java.lang.Object r8 = r8.updateData(r4, r0)     // Catch: java.lang.Throwable -> L31
            if (r8 != r1) goto L74
        L73:
            return r1
        L74:
            ads_mobile_sdk.u7 r8 = (ads_mobile_sdk.u7) r8     // Catch: java.lang.Throwable -> L31
            r7.unlock(r5)
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L7c:
            r7.unlock(r5)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.q7.a(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(long r8, kotlin.coroutines.Continuation r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof ads_mobile_sdk.u6
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.u6 r0 = (ads_mobile_sdk.u6) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.u6 r0 = new ads_mobile_sdk.u6
            r0.<init>(r7, r10)
        L18:
            java.lang.Object r10 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            long r8 = r0.c
            kotlinx.coroutines.sync.Mutex r1 = r0.b
            ads_mobile_sdk.q7 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            goto L4e
        L30:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L38:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.sync.Mutex r10 = r7.f
            r0.a = r7
            r0.b = r10
            r0.c = r8
            r0.f = r3
            java.lang.Object r0 = r10.lock(r4, r0)
            if (r0 != r1) goto L4c
            return r1
        L4c:
            r0 = r7
            r1 = r10
        L4e:
            ads_mobile_sdk.n6 r10 = r0.j     // Catch: java.lang.Throwable -> L59
            java.lang.String r2 = "adQualityDataBuilder"
            if (r10 != 0) goto L5b
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)     // Catch: java.lang.Throwable -> L59
            r10 = r4
            goto L5b
        L59:
            r8 = move-exception
            goto L7e
        L5b:
            ads_mobile_sdk.n6 r3 = r0.j     // Catch: java.lang.Throwable -> L59
            if (r3 != 0) goto L63
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)     // Catch: java.lang.Throwable -> L59
            r3 = r4
        L63:
            long r5 = r3.m()     // Catch: java.lang.Throwable -> L59
            long r8 = r8 - r5
            ads_mobile_sdk.n6 r0 = r0.j     // Catch: java.lang.Throwable -> L59
            if (r0 != 0) goto L70
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)     // Catch: java.lang.Throwable -> L59
            r0 = r4
        L70:
            long r2 = r0.p()     // Catch: java.lang.Throwable -> L59
            long r8 = r8 - r2
            r10.e(r8)     // Catch: java.lang.Throwable -> L59
            r1.unlock(r4)
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L7e:
            r1.unlock(r4)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.q7.a(long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof ads_mobile_sdk.v6
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.v6 r0 = (ads_mobile_sdk.v6) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.v6 r0 = new ads_mobile_sdk.v6
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            kotlinx.coroutines.sync.Mutex r1 = r0.b
            ads_mobile_sdk.q7 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4a
        L2e:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L36:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.sync.Mutex r6 = r5.m
            r0.a = r5
            r0.b = r6
            r0.e = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L48
            return r1
        L48:
            r0 = r5
            r1 = r6
        L4a:
            kotlinx.coroutines.Job r6 = r0.n     // Catch: java.lang.Throwable -> L52
            if (r6 == 0) goto L54
            kotlinx.coroutines.Job.DefaultImpls.cancel$default(r6, r4, r3, r4)     // Catch: java.lang.Throwable -> L52
            goto L54
        L52:
            r6 = move-exception
            goto L5c
        L54:
            r0.n = r4     // Catch: java.lang.Throwable -> L52
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L52
            r1.unlock(r4)
            return r6
        L5c:
            r1.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.q7.a(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
