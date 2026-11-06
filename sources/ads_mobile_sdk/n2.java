package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class n2 implements j2 {
    public final ks3 a;
    public final BaseRequest b;
    public final j53 c;
    public final long d;
    public final int e;
    public final i2 f;
    public final zy g;
    public final ec3 h;
    public final String i;
    public final eo2 j;
    public final t91 k;

    public final w1 a(w1 componentBuilder, boolean z) {
        Intrinsics.checkNotNullParameter(componentBuilder, "componentBuilder");
        return (w1) ((w1) ((w1) ((w1) ((w1) ((w1) ((w1) ((w1) ((w1) ((w1) ((w1) ((w1) ((w1) ((w1) componentBuilder.a(this.f)).a(this.g)).a(this.h)).a(this.a.a)).a(this.a.b)).a(this.a.c)).a(this.a.d)).a(this.c)).a(this.b)).a(this.d)).a(z)).a(this.e)).a(this.j)).a(this.k);
    }

    public abstract Object a(boolean z, Continuation continuation);

    public /* synthetic */ n2(ks3 ks3Var, BaseRequest baseRequest, j53 j53Var, long j, int i, i2 i2Var, zy zyVar, ec3 ec3Var, String str, eo2 eo2Var) {
        this(ks3Var, baseRequest, j53Var, j, i, i2Var, zyVar, ec3Var, str, eo2Var, new t91());
    }

    public n2(ks3 traceMetaSet, BaseRequest baseRequest, j53 requestType, long j, int i, i2 adConfiguration, zy commonConfiguration, ec3 serverTransaction, String uniqueRenderId, eo2 placementIdWrapper, t91 impressionDataWrapper) {
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(serverTransaction, "serverTransaction");
        Intrinsics.checkNotNullParameter(uniqueRenderId, "uniqueRenderId");
        Intrinsics.checkNotNullParameter(placementIdWrapper, "placementIdWrapper");
        Intrinsics.checkNotNullParameter(impressionDataWrapper, "impressionDataWrapper");
        this.a = traceMetaSet;
        this.b = baseRequest;
        this.c = requestType;
        this.d = j;
        this.e = i;
        this.f = adConfiguration;
        this.g = commonConfiguration;
        this.h = serverTransaction;
        this.i = uniqueRenderId;
        this.j = placementIdWrapper;
        this.k = impressionDataWrapper;
    }

    public final BaseRequest d() {
        return this.b;
    }

    public final j53 e() {
        return this.c;
    }

    public final i2 c() {
        return this.f;
    }

    public final ec3 f() {
        return this.h;
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x00d5, code lost:
    
        if (r7 == r1) goto L71;
     */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0097 A[Catch: all -> 0x00a3, TryCatch #2 {all -> 0x00a3, blocks: (B:42:0x0090, B:44:0x0097, B:46:0x009b, B:48:0x009f, B:51:0x00a5, B:53:0x00a9, B:55:0x00ad, B:57:0x00b1, B:58:0x00b2, B:59:0x00b7, B:60:0x00b8, B:61:0x00bf, B:62:0x00c0, B:63:0x00c7, B:64:0x00c8), top: B:90:0x0090, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00c8 A[Catch: all -> 0x00a3, TRY_LEAVE, TryCatch #2 {all -> 0x00a3, blocks: (B:42:0x0090, B:44:0x0097, B:46:0x009b, B:48:0x009f, B:51:0x00a5, B:53:0x00a9, B:55:0x00ad, B:57:0x00b1, B:58:0x00b2, B:59:0x00b7, B:60:0x00b8, B:61:0x00bf, B:62:0x00c0, B:63:0x00c7, B:64:0x00c8), top: B:90:0x0090, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation r7) {
        /*
            Method dump skipped, instruction units count: 273
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.n2.a(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.j2
    public final Object a(String str, int i, Continuation continuation) {
        return a(this, str, i, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ce A[Catch: all -> 0x0095, TRY_LEAVE, TryCatch #3 {all -> 0x0095, blocks: (B:26:0x0092, B:39:0x00ca, B:41:0x00ce, B:38:0x00a4), top: B:76:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e0 A[Catch: all -> 0x00ec, TryCatch #7 {all -> 0x00ec, blocks: (B:45:0x00d9, B:47:0x00e0, B:49:0x00e4, B:51:0x00e8, B:54:0x00ee, B:56:0x00f2, B:58:0x00f6, B:60:0x00fa, B:61:0x00fb, B:62:0x0100, B:63:0x0101, B:64:0x0108, B:65:0x0109, B:66:0x0110, B:67:0x0111), top: B:81:0x00d9 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0111 A[Catch: all -> 0x00ec, TRY_LEAVE, TryCatch #7 {all -> 0x00ec, blocks: (B:45:0x00d9, B:47:0x00e0, B:49:0x00e4, B:51:0x00e8, B:54:0x00ee, B:56:0x00f2, B:58:0x00f6, B:60:0x00fa, B:61:0x00fb, B:62:0x0100, B:63:0x0101, B:64:0x0108, B:65:0x0109, B:66:0x0110, B:67:0x0111), top: B:81:0x00d9 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v7, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v16, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v2, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v23, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r8v24 */
    /* JADX WARN: Type inference failed for: r8v25 */
    /* JADX WARN: Type inference failed for: r8v26 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v19 */
    /* JADX WARN: Type inference failed for: r9v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.n2 r7, java.lang.String r8, int r9, kotlin.coroutines.Continuation r10) {
        /*
            Method dump skipped, instruction units count: 280
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.n2.a(ads_mobile_sdk.n2, java.lang.String, int, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
