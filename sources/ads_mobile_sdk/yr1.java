package ads_mobile_sdk;

import android.net.Uri;
import java.util.LinkedHashMap;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class yr1 implements nr1 {
    public final g83 a;
    public final ks3 b;
    public final o21 c;
    public final CoroutineScope d;
    public final ex0 e;
    public final Mutex f;
    public final LinkedHashMap g;
    public final LinkedHashMap h;
    public final p02 i;

    public yr1(g83 rootTraceCreator, ks3 traceMetaSet, o21 gmaUtil, CoroutineScope backgroundScope, ex0 flags) {
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = rootTraceCreator;
        this.b = traceMetaSet;
        this.c = gmaUtil;
        this.d = backgroundScope;
        this.e = flags;
        this.f = MutexKt.Mutex$default(false, 1, null);
        this.g = new LinkedHashMap();
        this.h = new LinkedHashMap();
        this.i = new p02(null);
    }

    @Override // ads_mobile_sdk.nr1
    public final Object a(r31 r31Var, Uri uri, Continuation continuation) {
        return a(this, r31Var, uri, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00d4, code lost:
    
        if (r8 == r5) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01d4, code lost:
    
        if (r13.invoke(r4) == r5) goto L67;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0115 A[Catch: all -> 0x011c, TryCatch #7 {all -> 0x011c, blocks: (B:38:0x010b, B:40:0x0115, B:45:0x0121, B:47:0x0127, B:49:0x0141, B:51:0x0149), top: B:156:0x010b }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001b  */
    /* JADX WARN: Type inference failed for: r13v1, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v7, types: [T, java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.yr1 r20, ads_mobile_sdk.r31 r21, android.net.Uri r22, kotlin.coroutines.Continuation r23) {
        /*
            Method dump skipped, instruction units count: 778
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.yr1.a(ads_mobile_sdk.yr1, ads_mobile_sdk.r31, android.net.Uri, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.nr1
    public final Object a(r31 r31Var, String str, Continuation continuation) {
        return a(this, str, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.yr1 r8, java.lang.String r9, kotlin.coroutines.Continuation r10) {
        /*
            boolean r0 = r10 instanceof ads_mobile_sdk.tr1
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.tr1 r0 = (ads_mobile_sdk.tr1) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.tr1 r0 = new ads_mobile_sdk.tr1
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            if (r2 == 0) goto L3e
            if (r2 == r3) goto L36
            r8 = 2
            if (r2 != r8) goto L2e
            kotlin.ResultKt.throwOnFailure(r10)
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L2e:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L36:
            java.lang.String r9 = r0.b
            ads_mobile_sdk.yr1 r8 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            goto L50
        L3e:
            kotlin.ResultKt.throwOnFailure(r10)
            ads_mobile_sdk.p02 r10 = r8.i
            r0.a = r8
            r0.b = r9
            r0.e = r3
            java.lang.Object r10 = r10.a(r0)
            if (r10 != r1) goto L50
            return r1
        L50:
            ads_mobile_sdk.t53 r10 = (ads_mobile_sdk.t53) r10
            r1 = 0
            if (r10 != 0) goto L61
            java.lang.String r8 = "Unknown/Unexpected GMSG without a handler: result"
            ads_mobile_sdk.f01.c(r8, r1)
            r9 = 6
            ads_mobile_sdk.xs3.a(r8, r1, r9)
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L61:
            ads_mobile_sdk.ds1 r0 = ads_mobile_sdk.ds1.a
            com.google.gson.Gson r0 = new com.google.gson.Gson     // Catch: java.lang.Exception -> L71
            r0.<init>()     // Catch: java.lang.Exception -> L71
            java.lang.Class<com.google.gson.JsonObject> r2 = com.google.gson.JsonObject.class
            java.lang.Object r9 = r0.fromJson(r9, r2)     // Catch: java.lang.Exception -> L71
            com.google.gson.JsonObject r9 = (com.google.gson.JsonObject) r9     // Catch: java.lang.Exception -> L71
            goto L90
        L71:
            r0 = move-exception
            r9 = r0
            java.lang.String r0 = "t"
            ads_mobile_sdk.uj2 r0 = ads_mobile_sdk.a2.a(r9, r0, r9)
            java.util.List r0 = r0.s
            java.lang.String r2 = r9.getMessage()
            if (r2 != 0) goto L89
            java.lang.Class r9 = r9.getClass()
            java.lang.String r2 = r9.getName()
        L89:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            r0.add(r2)
            r9 = r1
        L90:
            if (r9 != 0) goto L95
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L95:
            ads_mobile_sdk.vr1 r0 = new ads_mobile_sdk.vr1
            r0.<init>(r8, r10, r9, r1)
            kotlinx.coroutines.CoroutineScope r2 = r8.d
            ads_mobile_sdk.ur1 r5 = new ads_mobile_sdk.ur1
            r5.<init>(r0, r1)
            r6 = 3
            r7 = 0
            r3 = 0
            r4 = 0
            kotlinx.coroutines.BuildersKt.launch$default(r2, r3, r4, r5, r6, r7)
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.yr1.a(ads_mobile_sdk.yr1, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.nr1
    public final Object a(String str, r41 r41Var, Continuation continuation) {
        return a(this, str, r41Var, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x006e, code lost:
    
        if (r7.a(r10, r0) == r1) goto L45;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a3 A[Catch: all -> 0x00a9, TryCatch #1 {all -> 0x00a9, blocks: (B:34:0x0099, B:36:0x00a3, B:39:0x00ab), top: B:56:0x0099 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.yr1 r7, java.lang.String r8, ads_mobile_sdk.r41 r9, kotlin.coroutines.Continuation r10) {
        /*
            Method dump skipped, instruction units count: 233
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.yr1.a(ads_mobile_sdk.yr1, java.lang.String, ads_mobile_sdk.r41, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.nr1
    public final Object a(String str, CompletableDeferred completableDeferred, w21 w21Var) {
        return a(this, str, completableDeferred, w21Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0063, code lost:
    
        if (r8.a(r6, r7, r0) == r1) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.yr1 r5, java.lang.String r6, kotlinx.coroutines.CompletableDeferred r7, kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof ads_mobile_sdk.xr1
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.xr1 r0 = (ads_mobile_sdk.xr1) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.xr1 r0 = new ads_mobile_sdk.xr1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r8)
            goto L66
        L2c:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L34:
            kotlinx.coroutines.CompletableDeferred r7 = r0.b
            java.lang.String r6 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L4e
        L3c:
            kotlin.ResultKt.throwOnFailure(r8)
            ads_mobile_sdk.p02 r5 = r5.i
            r0.a = r6
            r0.b = r7
            r0.e = r4
            java.lang.Object r8 = r5.a(r0)
            if (r8 != r1) goto L4e
            goto L65
        L4e:
            ads_mobile_sdk.t53 r8 = (ads_mobile_sdk.t53) r8
            if (r8 != 0) goto L58
            r5 = 0
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
            return r5
        L58:
            r5 = 0
            r0.a = r5
            r0.b = r5
            r0.e = r3
            java.lang.Object r5 = r8.a(r6, r7, r0)
            if (r5 != r1) goto L66
        L65:
            return r1
        L66:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.yr1.a(ads_mobile_sdk.yr1, java.lang.String, kotlinx.coroutines.CompletableDeferred, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
