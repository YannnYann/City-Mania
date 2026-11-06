package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class g52 {
    public final v42 a;

    public g52(v42 nativeAssetsLoader) {
        Intrinsics.checkNotNullParameter(nativeAssetsLoader, "nativeAssetsLoader");
        this.a = nativeAssetsLoader;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.g52 r8, com.google.gson.JsonObject r9, kotlin.coroutines.Continuation r10) {
        /*
            r8.getClass()
            boolean r0 = r10 instanceof ads_mobile_sdk.c52
            if (r0 == 0) goto L16
            r0 = r10
            ads_mobile_sdk.c52 r0 = (ads_mobile_sdk.c52) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.d = r1
            goto L1b
        L16:
            ads_mobile_sdk.c52 r0 = new ads_mobile_sdk.c52
            r0.<init>(r8, r10)
        L1b:
            java.lang.Object r10 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L37
            if (r2 != r4) goto L2f
            java.lang.String r8 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            goto L8a
        L2f:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L37:
            kotlin.ResultKt.throwOnFailure(r10)
            java.lang.String r10 = "name"
            java.lang.String r2 = ""
            java.lang.String r10 = ads_mobile_sdk.ds1.a(r9, r10, r2)
            int r5 = r10.length()
            if (r5 != 0) goto L49
            goto L94
        L49:
            java.lang.String r5 = "type"
            java.lang.String r5 = ads_mobile_sdk.ds1.a(r9, r5, r2)
            java.lang.String r6 = "string"
            boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r6)
            if (r6 == 0) goto L63
            ads_mobile_sdk.ec0 r8 = new ads_mobile_sdk.ec0
            java.lang.String r0 = "string_value"
            java.lang.String r9 = ads_mobile_sdk.ds1.a(r9, r0, r2)
            r8.<init>(r10, r9)
            return r8
        L63:
            java.lang.String r2 = "image"
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r2)
            if (r2 == 0) goto L94
            ads_mobile_sdk.v42 r8 = r8.a
            r0.a = r10
            r0.d = r4
            r8.getClass()
            java.lang.String r2 = "image_value"
            com.google.gson.JsonObject r9 = ads_mobile_sdk.ds1.a(r9, r2, r3)
            com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest r2 = r8.a
            boolean r2 = r2.isImageLoadingDisabled()
            java.lang.Object r8 = r8.a(r9, r2, r0)
            if (r8 != r1) goto L87
            return r1
        L87:
            r7 = r10
            r10 = r8
            r8 = r7
        L8a:
            ads_mobile_sdk.km1 r10 = (ads_mobile_sdk.km1) r10
            if (r10 == 0) goto L94
            ads_mobile_sdk.dc0 r9 = new ads_mobile_sdk.dc0
            r9.<init>(r8, r10)
            return r9
        L94:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g52.a(ads_mobile_sdk.g52, com.google.gson.JsonObject, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0061, code lost:
    
        if (r9 == r1) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0088, code lost:
    
        if (r9 == r1) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x008a, code lost:
    
        return r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x0088 -> B:33:0x008b). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(com.google.gson.JsonObject r7, java.lang.String r8, kotlin.coroutines.Continuation r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof ads_mobile_sdk.d52
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.d52 r0 = (ads_mobile_sdk.d52) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.d52 r0 = new ads_mobile_sdk.d52
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r9 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            java.util.Iterator r7 = r0.b
            java.util.Collection r8 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L8b
        L30:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L38:
            kotlin.ResultKt.throwOnFailure(r9)
            goto L64
        L3c:
            kotlin.ResultKt.throwOnFailure(r9)
            com.google.gson.JsonArray r7 = ads_mobile_sdk.ds1.e(r7, r8)
            if (r7 != 0) goto L4a
            java.util.List r7 = kotlin.collections.CollectionsKt__CollectionsKt.emptyList()
            return r7
        L4a:
            boolean r8 = r7.isEmpty()
            if (r8 == 0) goto L55
            java.util.List r7 = kotlin.collections.CollectionsKt__CollectionsKt.emptyList()
            return r7
        L55:
            ads_mobile_sdk.f52 r8 = new ads_mobile_sdk.f52
            r9 = 0
            r8.<init>(r7, r6, r9)
            r0.e = r4
            java.lang.Object r9 = kotlinx.coroutines.CoroutineScopeKt.coroutineScope(r8, r0)
            if (r9 != r1) goto L64
            goto L8a
        L64:
            java.util.List r9 = (java.util.List) r9
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            java.util.Iterator r8 = r9.iterator()
            r5 = r8
            r8 = r7
            r7 = r5
        L72:
            boolean r9 = r7.hasNext()
            if (r9 == 0) goto L93
            java.lang.Object r9 = r7.next()
            kotlinx.coroutines.Deferred r9 = (kotlinx.coroutines.Deferred) r9
            r0.a = r8
            r0.b = r7
            r0.e = r3
            java.lang.Object r9 = r9.await(r0)
            if (r9 != r1) goto L8b
        L8a:
            return r1
        L8b:
            ads_mobile_sdk.fc0 r9 = (ads_mobile_sdk.fc0) r9
            if (r9 == 0) goto L72
            r8.add(r9)
            goto L72
        L93:
            java.util.List r8 = (java.util.List) r8
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g52.a(com.google.gson.JsonObject, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
