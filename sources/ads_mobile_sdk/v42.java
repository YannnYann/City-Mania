package ads_mobile_sdk;

import android.graphics.Color;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class v42 {
    public static final int h;
    public static final int i;
    public final NativeRequest a;
    public final xs b;
    public final ur3 c;
    public final j62 d;
    public final iz3 e;
    public final CoroutineScope f;
    public final g83 g;

    public v42(NativeRequest nativeRequest, xs bitmapLoader, ur3 traceLogger, j62 nativeMediaAssetLoader, iz3 webViewFactory, CoroutineContext uiContext, CoroutineScope uiScope, g83 traceCreator) {
        Intrinsics.checkNotNullParameter(nativeRequest, "nativeRequest");
        Intrinsics.checkNotNullParameter(bitmapLoader, "bitmapLoader");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(nativeMediaAssetLoader, "nativeMediaAssetLoader");
        Intrinsics.checkNotNullParameter(webViewFactory, "webViewFactory");
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(traceCreator, "traceCreator");
        this.a = nativeRequest;
        this.b = bitmapLoader;
        this.c = traceLogger;
        this.d = nativeMediaAssetLoader;
        this.e = webViewFactory;
        this.f = uiScope;
        this.g = traceCreator;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(com.google.gson.JsonObject r18, java.lang.String r19, kotlin.coroutines.Continuation r20) {
        /*
            Method dump skipped, instruction units count: 241
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.v42.a(com.google.gson.JsonObject, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(com.google.gson.JsonObject r23, boolean r24, kotlin.coroutines.Continuation r25) {
        /*
            Method dump skipped, instruction units count: 311
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.v42.a(com.google.gson.JsonObject, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    static {
        int iRgb = Color.rgb(12, 174, 206);
        h = Color.rgb(204, 204, 204);
        i = iRgb;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0055, code lost:
    
        if (r8 == r1) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x007b, code lost:
    
        if (r8 == r1) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007d, code lost:
    
        return r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x007b -> B:30:0x007e). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(com.google.gson.JsonArray r7, kotlin.coroutines.Continuation r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof ads_mobile_sdk.q42
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.q42 r0 = (ads_mobile_sdk.q42) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.q42 r0 = new ads_mobile_sdk.q42
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            java.util.Iterator r7 = r0.b
            java.util.Collection r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L7e
        L30:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L38:
            kotlin.ResultKt.throwOnFailure(r8)
            goto L58
        L3c:
            kotlin.ResultKt.throwOnFailure(r8)
            if (r7 == 0) goto L89
            boolean r8 = r7.isEmpty()
            if (r8 == 0) goto L48
            goto L89
        L48:
            ads_mobile_sdk.s42 r8 = new ads_mobile_sdk.s42
            r2 = 0
            r5 = 0
            r8.<init>(r6, r7, r2, r5)
            r0.e = r4
            java.lang.Object r8 = kotlinx.coroutines.CoroutineScopeKt.coroutineScope(r8, r0)
            if (r8 != r1) goto L58
            goto L7d
        L58:
            java.util.List r8 = (java.util.List) r8
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            java.util.Iterator r8 = r8.iterator()
            r2 = r7
            r7 = r8
        L65:
            boolean r8 = r7.hasNext()
            if (r8 == 0) goto L86
            java.lang.Object r8 = r7.next()
            kotlinx.coroutines.Deferred r8 = (kotlinx.coroutines.Deferred) r8
            r0.a = r2
            r0.b = r7
            r0.e = r3
            java.lang.Object r8 = r8.await(r0)
            if (r8 != r1) goto L7e
        L7d:
            return r1
        L7e:
            ads_mobile_sdk.km1 r8 = (ads_mobile_sdk.km1) r8
            if (r8 == 0) goto L65
            r2.add(r8)
            goto L65
        L86:
            java.util.List r2 = (java.util.List) r2
            return r2
        L89:
            java.util.List r7 = kotlin.collections.CollectionsKt__CollectionsKt.emptyList()
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.v42.a(com.google.gson.JsonArray, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x009a, code lost:
    
        if (r14 == r1) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00f6, code lost:
    
        if (r14 == r1) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00f8, code lost:
    
        return r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(com.google.gson.JsonObject r12, ads_mobile_sdk.eo2 r13, kotlin.coroutines.Continuation r14) {
        /*
            Method dump skipped, instruction units count: 291
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.v42.a(com.google.gson.JsonObject, ads_mobile_sdk.eo2, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
