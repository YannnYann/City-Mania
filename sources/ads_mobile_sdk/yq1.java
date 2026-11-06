package ads_mobile_sdk;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class yq1 extends rp0 implements jb3 {
    public final CoroutineScope d;
    public final CoroutineScope e;
    public final ex0 f;
    public final tx g;
    public final e01 h;
    public final uw0 i;
    public final cb3 j;
    public final iz3 k;
    public final g83 l;
    public final ar1 m;
    public final cw2 n;
    public final o21 o;
    public n30 p;

    public yq1(Context context, CoroutineScope uiScope, CoroutineScope backgroundScope, ex0 flags, tx clock, e01 httpClient, uw0 flagUpdater, cb3 sdkCoreDataStore, xw0 flagValueProvider, iz3 webViewFactory, g83 rootTraceCreator, ar1 jsContext, dw2 configuratorProvider, o21 gmaUtil) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(flagUpdater, "flagUpdater");
        Intrinsics.checkNotNullParameter(sdkCoreDataStore, "sdkCoreDataStore");
        Intrinsics.checkNotNullParameter(flagValueProvider, "flagValueProvider");
        Intrinsics.checkNotNullParameter(webViewFactory, "webViewFactory");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(jsContext, "jsContext");
        Intrinsics.checkNotNullParameter(configuratorProvider, "configuratorProvider");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        this.d = uiScope;
        this.e = backgroundScope;
        this.f = flags;
        this.g = clock;
        this.h = httpClient;
        this.i = flagUpdater;
        this.j = sdkCoreDataStore;
        this.k = webViewFactory;
        this.l = rootTraceCreator;
        this.m = jsContext;
        this.n = configuratorProvider;
        this.o = gmaUtil;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0098 A[Catch: all -> 0x0046, TRY_LEAVE, TryCatch #5 {all -> 0x0046, blocks: (B:20:0x0042, B:31:0x0092, B:33:0x0098), top: B:114:0x0042 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ad A[Catch: all -> 0x00b9, TryCatch #6 {all -> 0x00b9, blocks: (B:38:0x00a6, B:40:0x00ad, B:42:0x00b1, B:44:0x00b5, B:47:0x00bb, B:49:0x00bf, B:51:0x00c3, B:53:0x00c7, B:54:0x00c8, B:55:0x00cd, B:56:0x00ce, B:57:0x00d5, B:58:0x00d6, B:59:0x00dd, B:60:0x00de), top: B:116:0x00a6 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00de A[Catch: all -> 0x00b9, TRY_LEAVE, TryCatch #6 {all -> 0x00b9, blocks: (B:38:0x00a6, B:40:0x00ad, B:42:0x00b1, B:44:0x00b5, B:47:0x00bb, B:49:0x00bf, B:51:0x00c3, B:53:0x00c7, B:54:0x00c8, B:55:0x00cd, B:56:0x00ce, B:57:0x00d5, B:58:0x00d6, B:59:0x00dd, B:60:0x00de), top: B:116:0x00a6 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x010a A[Catch: all -> 0x0033, TRY_LEAVE, TryCatch #3 {all -> 0x0033, blocks: (B:13:0x002e, B:70:0x0104, B:72:0x010a), top: B:110:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x011f A[Catch: all -> 0x012b, TryCatch #7 {all -> 0x012b, blocks: (B:77:0x0118, B:79:0x011f, B:81:0x0123, B:83:0x0127, B:86:0x012d, B:88:0x0131, B:90:0x0135, B:92:0x0139, B:93:0x013a, B:94:0x013f, B:95:0x0140, B:96:0x0147, B:97:0x0148, B:98:0x014f, B:99:0x0150), top: B:117:0x0118 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0150 A[Catch: all -> 0x012b, TRY_LEAVE, TryCatch #7 {all -> 0x012b, blocks: (B:77:0x0118, B:79:0x011f, B:81:0x0123, B:83:0x0127, B:86:0x012d, B:88:0x0131, B:90:0x0135, B:92:0x0139, B:93:0x013a, B:94:0x013f, B:95:0x0140, B:96:0x0147, B:97:0x0148, B:98:0x014f, B:99:0x0150), top: B:117:0x0118 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object c(java.lang.String r14, kotlin.coroutines.Continuation r15) {
        /*
            Method dump skipped, instruction units count: 343
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.yq1.c(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object e(kotlin.coroutines.Continuation r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof ads_mobile_sdk.sq1
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.sq1 r0 = (ads_mobile_sdk.sq1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.sq1 r0 = new ads_mobile_sdk.sq1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L36
            if (r2 != r3) goto L2e
            ads_mobile_sdk.yq1 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L91
        L2e:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L36:
            ads_mobile_sdk.yq1 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L6f
        L3c:
            kotlin.ResultKt.throwOnFailure(r6)
            ads_mobile_sdk.ex0 r6 = r5.f
            r0.a = r5
            r0.d = r4
            ads_mobile_sdk.xw0 r6 = r6.a
            ads_mobile_sdk.hr r6 = (ads_mobile_sdk.hr) r6
            java.util.concurrent.atomic.AtomicBoolean r2 = r6.o
            boolean r2 = r2.get()
            if (r2 == 0) goto L54
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            goto L62
        L54:
            r2 = 0
            java.lang.Object r6 = r6.a(r2, r0)
            java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r6 != r2) goto L60
            goto L62
        L60:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
        L62:
            java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r6 != r2) goto L69
            goto L6b
        L69:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
        L6b:
            if (r6 != r1) goto L6e
            goto L8f
        L6e:
            r2 = r5
        L6f:
            ads_mobile_sdk.ex0 r6 = r2.f
            ads_mobile_sdk.xw0 r6 = r6.a
            ads_mobile_sdk.hr r6 = (ads_mobile_sdk.hr) r6
            java.util.concurrent.atomic.AtomicBoolean r6 = r6.o
            boolean r6 = r6.get()
            if (r6 == 0) goto L85
            ads_mobile_sdk.q01 r6 = new ads_mobile_sdk.q01
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            r6.<init>(r0)
            return r6
        L85:
            r0.a = r2
            r0.d = r3
            java.lang.Object r6 = r2.b(r0)
            if (r6 != r1) goto L90
        L8f:
            return r1
        L90:
            r0 = r2
        L91:
            ads_mobile_sdk.v01 r6 = (ads_mobile_sdk.v01) r6
            boolean r1 = r6 instanceof ads_mobile_sdk.i01
            if (r1 == 0) goto L9a
            ads_mobile_sdk.i01 r6 = (ads_mobile_sdk.i01) r6
            return r6
        L9a:
            java.lang.String r1 = "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6, r1)
            ads_mobile_sdk.q01 r6 = (ads_mobile_sdk.q01) r6
            java.lang.Object r6 = r6.b
            ads_mobile_sdk.fl1 r6 = (ads_mobile_sdk.fl1) r6
            ads_mobile_sdk.ex0 r6 = r0.f
            ads_mobile_sdk.xw0 r6 = r6.a
            ads_mobile_sdk.hr r6 = (ads_mobile_sdk.hr) r6
            java.util.concurrent.atomic.AtomicBoolean r6 = r6.o
            boolean r6 = r6.get()
            if (r6 == 0) goto Lbb
            ads_mobile_sdk.q01 r6 = new ads_mobile_sdk.q01
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            r6.<init>(r0)
            return r6
        Lbb:
            ads_mobile_sdk.m01 r6 = new ads_mobile_sdk.m01
            java.lang.String r0 = "Failed to get the CSRB flags"
            ads_mobile_sdk.kk1 r1 = ads_mobile_sdk.kk1.a
            r6.<init>(r0, r1)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.yq1.e(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0068, code lost:
    
        if (r5.c(r6, r0) == r1) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.yq1 r5, java.lang.String r6, kotlin.coroutines.Continuation r7) {
        /*
            r5.getClass()
            boolean r0 = r7 instanceof ads_mobile_sdk.tq1
            if (r0 == 0) goto L16
            r0 = r7
            ads_mobile_sdk.tq1 r0 = (ads_mobile_sdk.tq1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.d = r1
            goto L1b
        L16:
            ads_mobile_sdk.tq1 r0 = new ads_mobile_sdk.tq1
            r0.<init>(r5, r7)
        L1b:
            java.lang.Object r7 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L37
            if (r2 != r3) goto L2f
            kotlin.ResultKt.throwOnFailure(r7)
            goto L6b
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            ads_mobile_sdk.yq1 r5 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4b
        L3d:
            kotlin.ResultKt.throwOnFailure(r7)
            r0.a = r5
            r0.d = r4
            java.lang.Object r7 = r5.a(r6, r0)
            if (r7 != r1) goto L4b
            goto L6a
        L4b:
            ads_mobile_sdk.v01 r7 = (ads_mobile_sdk.v01) r7
            boolean r6 = r7 instanceof ads_mobile_sdk.i01
            if (r6 == 0) goto L54
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L54:
            java.lang.String r6 = "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r7, r6)
            ads_mobile_sdk.q01 r7 = (ads_mobile_sdk.q01) r7
            java.lang.Object r6 = r7.b
            ads_mobile_sdk.fl1 r6 = (ads_mobile_sdk.fl1) r6
            r7 = 0
            r0.a = r7
            r0.d = r3
            java.lang.Object r5 = r5.c(r6, r0)
            if (r5 != r1) goto L6b
        L6a:
            return r1
        L6b:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.yq1.a(ads_mobile_sdk.yq1, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object b(ads_mobile_sdk.yq1 r5, java.lang.String r6, kotlin.coroutines.Continuation r7) {
        /*
            r5.getClass()
            boolean r0 = r7 instanceof ads_mobile_sdk.xq1
            if (r0 == 0) goto L16
            r0 = r7
            ads_mobile_sdk.xq1 r0 = (ads_mobile_sdk.xq1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.d = r1
            goto L1b
        L16:
            ads_mobile_sdk.xq1 r0 = new ads_mobile_sdk.xq1
            r0.<init>(r5, r7)
        L1b:
            java.lang.Object r7 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L43
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r5 = r0.a
            java.lang.String r5 = (java.lang.String) r5
            kotlin.ResultKt.throwOnFailure(r7)
            return r5
        L33:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3b:
            java.lang.Object r5 = r0.a
            ads_mobile_sdk.yq1 r5 = (ads_mobile_sdk.yq1) r5
            kotlin.ResultKt.throwOnFailure(r7)
            goto L51
        L43:
            kotlin.ResultKt.throwOnFailure(r7)
            r0.a = r5
            r0.d = r4
            java.lang.Object r7 = r5.c(r6, r0)
            if (r7 != r1) goto L51
            goto L84
        L51:
            ads_mobile_sdk.v01 r7 = (ads_mobile_sdk.v01) r7
            boolean r6 = r7 instanceof ads_mobile_sdk.i01
            r2 = 0
            if (r6 == 0) goto L59
            return r2
        L59:
            java.lang.String r6 = "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r7, r6)
            ads_mobile_sdk.q01 r7 = (ads_mobile_sdk.q01) r7
            java.lang.Object r6 = r7.b
            ads_mobile_sdk.h81 r6 = (ads_mobile_sdk.h81) r6
            ads_mobile_sdk.p53 r6 = r6.d
            if (r6 == 0) goto L6c
            java.lang.String r2 = ads_mobile_sdk.p53.a(r6)
        L6c:
            if (r2 == 0) goto L85
            boolean r6 = kotlin.text.StringsKt__StringsKt.isBlank(r2)
            if (r6 == 0) goto L75
            goto L85
        L75:
            ads_mobile_sdk.cb3 r5 = r5.j
            r0.a = r2
            r0.d = r3
            r5.getClass()
            java.lang.Object r5 = ads_mobile_sdk.cb3.b(r5, r2, r0)
            if (r5 != r1) goto L85
        L84:
            return r1
        L85:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.yq1.b(ads_mobile_sdk.yq1, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(java.lang.String r16, kotlin.coroutines.Continuation r17) {
        /*
            Method dump skipped, instruction units count: 390
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.yq1.b(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.yq1 r12, kotlin.coroutines.Continuation r13) {
        /*
            Method dump skipped, instruction units count: 235
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.yq1.a(ads_mobile_sdk.yq1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ba, code lost:
    
        if (ads_mobile_sdk.uw0.a(r2, r14, (com.google.gson.JsonObject) r15, r0) != r1) goto L45;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.rp0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.fl1 r14, kotlin.coroutines.Continuation r15) {
        /*
            Method dump skipped, instruction units count: 230
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.yq1.a(ads_mobile_sdk.fl1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x008f A[Catch: all -> 0x0046, TRY_LEAVE, TryCatch #4 {all -> 0x0046, blocks: (B:20:0x0042, B:31:0x0089, B:33:0x008f), top: B:111:0x0042 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a4 A[Catch: all -> 0x00b0, TryCatch #0 {all -> 0x00b0, blocks: (B:38:0x009d, B:40:0x00a4, B:42:0x00a8, B:44:0x00ac, B:47:0x00b2, B:49:0x00b6, B:51:0x00ba, B:53:0x00be, B:54:0x00bf, B:55:0x00c4, B:56:0x00c5, B:57:0x00cc, B:58:0x00cd, B:59:0x00d4, B:60:0x00d5), top: B:104:0x009d }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00d5 A[Catch: all -> 0x00b0, TRY_LEAVE, TryCatch #0 {all -> 0x00b0, blocks: (B:38:0x009d, B:40:0x00a4, B:42:0x00a8, B:44:0x00ac, B:47:0x00b2, B:49:0x00b6, B:51:0x00ba, B:53:0x00be, B:54:0x00bf, B:55:0x00c4, B:56:0x00c5, B:57:0x00cc, B:58:0x00cd, B:59:0x00d4, B:60:0x00d5), top: B:104:0x009d }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00fa A[Catch: all -> 0x0033, TRY_LEAVE, TryCatch #2 {all -> 0x0033, blocks: (B:13:0x002e, B:70:0x00f4, B:72:0x00fa), top: B:107:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x010f A[Catch: all -> 0x011b, TryCatch #7 {all -> 0x011b, blocks: (B:77:0x0108, B:79:0x010f, B:81:0x0113, B:83:0x0117, B:86:0x011d, B:88:0x0121, B:90:0x0125, B:92:0x0129, B:93:0x012a, B:94:0x012f, B:95:0x0130, B:96:0x0137, B:97:0x0138, B:98:0x013f, B:99:0x0140), top: B:117:0x0108 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0140 A[Catch: all -> 0x011b, TRY_LEAVE, TryCatch #7 {all -> 0x011b, blocks: (B:77:0x0108, B:79:0x010f, B:81:0x0113, B:83:0x0117, B:86:0x011d, B:88:0x0121, B:90:0x0125, B:92:0x0129, B:93:0x012a, B:94:0x012f, B:95:0x0130, B:96:0x0137, B:97:0x0138, B:98:0x013f, B:99:0x0140), top: B:117:0x0108 }] */
    @Override // ads_mobile_sdk.rp0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r14, kotlin.coroutines.Continuation r15) {
        /*
            Method dump skipped, instruction units count: 327
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.yq1.a(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.util.List r6, java.util.concurrent.Executor r7, kotlin.coroutines.Continuation r8) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r8 instanceof ads_mobile_sdk.wq1
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.wq1 r0 = (ads_mobile_sdk.wq1) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.wq1 r0 = new ads_mobile_sdk.wq1
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
            return r8
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            java.util.concurrent.Executor r7 = r0.b
            java.util.List r6 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L4c
        L3c:
            kotlin.ResultKt.throwOnFailure(r8)
            r0.a = r6
            r0.b = r7
            r0.e = r4
            java.lang.Object r8 = r5.b(r0)
            if (r8 != r1) goto L4c
            goto L89
        L4c:
            ads_mobile_sdk.v01 r8 = (ads_mobile_sdk.v01) r8
            boolean r2 = r8 instanceof ads_mobile_sdk.i01
            r4 = 0
            if (r2 == 0) goto L58
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            return r6
        L58:
            java.lang.String r2 = "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r8, r2)
            ads_mobile_sdk.q01 r8 = (ads_mobile_sdk.q01) r8
            java.lang.Object r8 = r8.b
            ads_mobile_sdk.fl1 r8 = (ads_mobile_sdk.fl1) r8
            r2 = 0
            r0.a = r2
            r0.b = r2
            r0.e = r3
            ads_mobile_sdk.r31 r3 = r8.a
            if (r3 != 0) goto L73
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            goto L87
        L73:
            java.util.concurrent.ConcurrentLinkedQueue r4 = r3.A
            r4.offer(r6)
            kotlinx.coroutines.CoroutineScope r6 = r8.b
            kotlin.coroutines.CoroutineContext r6 = r6.getCoroutineContext()
            ads_mobile_sdk.el1 r8 = new ads_mobile_sdk.el1
            r8.<init>(r3, r7, r2)
            java.lang.Object r6 = kotlinx.coroutines.BuildersKt.withContext(r6, r8, r0)
        L87:
            if (r6 != r1) goto L8a
        L89:
            return r1
        L8a:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.yq1.a(java.util.List, java.util.concurrent.Executor, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
