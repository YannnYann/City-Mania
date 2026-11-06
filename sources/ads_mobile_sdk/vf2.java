package ads_mobile_sdk;

import android.view.View;
import com.google.gson.JsonObject;
import com.ironsource.Yf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class vf2 extends es implements df2 {
    public final CoroutineScope c;
    public final JsonObject d;
    public final i2 e;
    public final kd2 f;
    public final s02 g;
    public final s93 h;
    public final Mutex i;
    public Job j;
    public r31 k;
    public k9 l;
    public final boolean m;
    public final List n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vf2(CoroutineContext uiContext, CoroutineScope backgroundScope, JsonObject nativeAdJson, i2 adConfiguration, kd2 omid, s02 nativeAdAssets, ex0 flags, s93 safeBrowsingManager) {
        super(flags, uiContext);
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(nativeAdJson, "nativeAdJson");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(omid, "omid");
        Intrinsics.checkNotNullParameter(nativeAdAssets, "nativeAdAssets");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(safeBrowsingManager, "safeBrowsingManager");
        this.c = backgroundScope;
        this.d = nativeAdJson;
        this.e = adConfiguration;
        this.f = omid;
        this.g = nativeAdAssets;
        this.h = safeBrowsingManager;
        this.i = MutexKt.Mutex$default(false, 1, null);
        dg2 dg2Var = nativeAdAssets.n;
        this.m = (dg2Var != null ? dg2Var.a : null) == cg2.a;
        this.n = Collections.synchronizedList(new ArrayList());
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x00e3, code lost:
    
        if (r12.a(r0) == r1) goto L53;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d5 A[Catch: all -> 0x0038, PHI: r2 r11
      0x00d5: PHI (r2v11 ??) = (r2v7 ??), (r2v15 ??), (r2v16 ??) binds: [B:48:0x00d3, B:44:0x00ce, B:22:0x0047] A[DONT_GENERATE, DONT_INLINE]
      0x00d5: PHI (r11v9 kotlinx.coroutines.sync.Mutex) = (r11v6 kotlinx.coroutines.sync.Mutex), (r11v19 kotlinx.coroutines.sync.Mutex), (r11v20 kotlinx.coroutines.sync.Mutex) binds: [B:48:0x00d3, B:44:0x00ce, B:22:0x0047] A[DONT_GENERATE, DONT_INLINE], TryCatch #1 {all -> 0x0038, blocks: (B:15:0x0033, B:55:0x00e7, B:22:0x0047, B:49:0x00d5, B:51:0x00d9, B:25:0x0050, B:43:0x00a0), top: B:63:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00d9 A[Catch: all -> 0x0038, TryCatch #1 {all -> 0x0038, blocks: (B:15:0x0033, B:55:0x00e7, B:22:0x0047, B:49:0x00d5, B:51:0x00d9, B:25:0x0050, B:43:0x00a0), top: B:63:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [ads_mobile_sdk.vf2] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r11v0, types: [ads_mobile_sdk.vf2] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v10, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v4, types: [ads_mobile_sdk.es, ads_mobile_sdk.vf2] */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v10, types: [ads_mobile_sdk.es, ads_mobile_sdk.vf2] */
    /* JADX WARN: Type inference failed for: r2v11, types: [ads_mobile_sdk.vf2] */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object b(ads_mobile_sdk.vf2 r11, kotlin.coroutines.Continuation r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 250
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.vf2.b(ads_mobile_sdk.vf2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object c(ads_mobile_sdk.vf2 r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof ads_mobile_sdk.of2
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.of2 r0 = (ads_mobile_sdk.of2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.of2 r0 = new ads_mobile_sdk.of2
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            kotlinx.coroutines.sync.Mutex r5 = r0.b
            ads_mobile_sdk.vf2 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            r6 = r5
            r5 = r0
            goto L4a
        L30:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L38:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.sync.Mutex r6 = r5.i
            r0.a = r5
            r0.b = r6
            r0.e = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L4a
            return r1
        L4a:
            ads_mobile_sdk.k9 r0 = r5.l     // Catch: java.lang.Throwable -> L55
            if (r0 != 0) goto L57
            kotlinx.coroutines.Job r5 = r5.j     // Catch: java.lang.Throwable -> L55
            if (r5 == 0) goto L53
            goto L57
        L53:
            r3 = 0
            goto L57
        L55:
            r5 = move-exception
            goto L5f
        L57:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)     // Catch: java.lang.Throwable -> L55
            r6.unlock(r4)
            return r5
        L5f:
            r6.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.vf2.c(ads_mobile_sdk.vf2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0087, code lost:
    
        if ((r8 != null ? r8.a : null) == ads_mobile_sdk.cg2.b) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0096, code lost:
    
        if (r7.a("Google", true, ads_mobile_sdk.x91.e, (kotlin.coroutines.Continuation) r0) == r1) goto L38;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object d(ads_mobile_sdk.vf2 r7, kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof ads_mobile_sdk.sf2
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.sf2 r0 = (ads_mobile_sdk.sf2) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.sf2 r0 = new ads_mobile_sdk.sf2
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3b
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r8)
            goto L99
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L35:
            ads_mobile_sdk.vf2 r7 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L6c
        L3b:
            kotlin.ResultKt.throwOnFailure(r8)
            ads_mobile_sdk.kd2 r8 = r7.f
            ads_mobile_sdk.ur3 r8 = r8.f
            ads_mobile_sdk.fd2 r2 = ads_mobile_sdk.fd2.a
            java.lang.String r5 = "IsActive"
            java.lang.Object r8 = r8.a(r5, r2)
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            if (r8 == 0) goto L9c
            boolean r8 = r8.booleanValue()
            if (r8 == 0) goto L9c
            ads_mobile_sdk.ds1 r8 = ads_mobile_sdk.ds1.a
            com.google.gson.JsonObject r8 = r7.d
            java.lang.String r2 = "enable_omid"
            r5 = 0
            boolean r8 = ads_mobile_sdk.ds1.a(r8, r2, r5)
            if (r8 == 0) goto L9c
            r0.a = r7
            r0.d = r4
            java.lang.Object r8 = c(r7, r0)
            if (r8 != r1) goto L6c
            goto L98
        L6c:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 != 0) goto L9c
            ads_mobile_sdk.s02 r8 = r7.g
            ads_mobile_sdk.q02 r2 = r8.b
            ads_mobile_sdk.q02 r5 = ads_mobile_sdk.q02.b
            r6 = 0
            if (r2 != r5) goto L8a
            ads_mobile_sdk.dg2 r8 = r8.n
            if (r8 == 0) goto L84
            ads_mobile_sdk.cg2 r8 = r8.a
            goto L85
        L84:
            r8 = r6
        L85:
            ads_mobile_sdk.cg2 r2 = ads_mobile_sdk.cg2.b
            if (r8 != r2) goto L8a
            goto L9c
        L8a:
            r0.a = r6
            r0.d = r3
            java.lang.String r8 = "Google"
            ads_mobile_sdk.x91 r2 = ads_mobile_sdk.x91.e
            java.lang.Object r7 = r7.a(r8, r4, r2, r0)
            if (r7 != r1) goto L99
        L98:
            return r1
        L99:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L9c:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.vf2.d(ads_mobile_sdk.vf2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.ai1
    public final Object j(Continuation continuation) {
        return d(this, continuation);
    }

    @Override // ads_mobile_sdk.df2
    public final Object m(Continuation continuation) {
        return c(this, continuation);
    }

    @Override // ads_mobile_sdk.df2
    public final Object a(View view, tx0 tx0Var, String str, Continuation continuation) throws Throwable {
        Object objA = a("addFriendlyObstruction", new ef2(this, view, tx0Var, str, null), continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.df2
    public final Object n(Continuation continuation) throws Throwable {
        Object objA = a("measurePreviousView", new pf2(this, null), continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ai1
    public final Object o(Continuation continuation) throws Throwable {
        dg2 dg2Var = this.g.n;
        if ((dg2Var != null ? dg2Var.a : null) != cg2.a) {
            return Unit.INSTANCE;
        }
        Object objA = a(Yf.f, new qf2(null), continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ai1
    public final Object r(Continuation continuation) throws Throwable {
        Object objA = a("onAdImpression", new rf2(null), continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Type inference failed for: r0v12, types: [T, ads_mobile_sdk.l40] */
    /* JADX WARN: Type inference failed for: r0v13, types: [T, ads_mobile_sdk.xh2] */
    /* JADX WARN: Type inference failed for: r0v22, types: [T, kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r1v2, types: [T, kotlinx.coroutines.CompletableDeferred] */
    /* JADX WARN: Type inference failed for: r5v7, types: [T, ads_mobile_sdk.l40] */
    /* JADX WARN: Type inference failed for: r5v8, types: [T, ads_mobile_sdk.xh2] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r22, boolean r23, ads_mobile_sdk.x91 r24, kotlin.coroutines.Continuation r25) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 371
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.vf2.a(java.lang.String, boolean, ads_mobile_sdk.x91, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c5 A[Catch: all -> 0x00cb, TRY_LEAVE, TryCatch #3 {all -> 0x00cb, blocks: (B:44:0x00c1, B:46:0x00c5, B:51:0x00ce, B:53:0x00d2, B:56:0x00d8), top: B:81:0x00c1 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ce A[Catch: all -> 0x00cb, TRY_ENTER, TryCatch #3 {all -> 0x00cb, blocks: (B:44:0x00c1, B:46:0x00c5, B:51:0x00ce, B:53:0x00d2, B:56:0x00d8), top: B:81:0x00c1 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v24, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v25 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.lang.StringBuilder] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r9, kotlin.jvm.functions.Function3 r10, kotlin.coroutines.Continuation r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 283
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.vf2.a(java.lang.String, kotlin.jvm.functions.Function3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.df2
    public final Object a(c04 c04Var) {
        return b(this, c04Var);
    }

    @Override // ads_mobile_sdk.ai1
    public final Object a(Continuation continuation) throws Throwable {
        Object objB = b(this, continuation);
        return objB == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objB : Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.df2
    public final Object a(View view, Continuation continuation) throws Throwable {
        if (this.m) {
            return Unit.INSTANCE;
        }
        Object objA = a("updateRegisteredAdView", new uf2(this, view, null), continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }
}
