package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.gson.Gson;
import java.util.Optional;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class rm2 implements nt3 {
    public final BaseRequest a;
    public final ej1 b;
    public final k c;
    public final im2 d;
    public final v8 e;
    public final j53 f;
    public final bb2 g;
    public final Gson h;
    public final ex0 i;
    public final ur3 j;
    public final Optional k;

    public rm2(BaseRequest baseRequest, ej1 internalAdRequestEventEmitter, k actionFunction, im2 persistentCacheManager, v8 adRequestKeyGenerator, j53 requestType, bb2 delegateNetworkRequester, Gson gson, ex0 flags, ur3 traceLogger, Optional numberOfAdsRequestedOptional) {
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(internalAdRequestEventEmitter, "internalAdRequestEventEmitter");
        Intrinsics.checkNotNullParameter(actionFunction, "actionFunction");
        Intrinsics.checkNotNullParameter(persistentCacheManager, "persistentCacheManager");
        Intrinsics.checkNotNullParameter(adRequestKeyGenerator, "adRequestKeyGenerator");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(delegateNetworkRequester, "delegateNetworkRequester");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(numberOfAdsRequestedOptional, "numberOfAdsRequestedOptional");
        this.a = baseRequest;
        this.b = internalAdRequestEventEmitter;
        this.c = actionFunction;
        this.d = persistentCacheManager;
        this.e = adRequestKeyGenerator;
        this.f = requestType;
        this.g = delegateNetworkRequester;
        this.h = gson;
        this.i = flags;
        this.j = traceLogger;
        this.k = numberOfAdsRequestedOptional;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.ct1 r8, kotlin.coroutines.Continuation r9) {
        /*
            Method dump skipped, instruction units count: 216
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.rm2.a(ads_mobile_sdk.ct1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0249 A[Catch: Exception -> 0x0060, TryCatch #0 {Exception -> 0x0060, blocks: (B:16:0x004f, B:93:0x01f5, B:95:0x0201, B:96:0x0228, B:98:0x022e, B:99:0x023b, B:106:0x028e, B:101:0x0249, B:102:0x026f, B:104:0x0275, B:105:0x0281, B:19:0x005a, B:89:0x01c4), top: B:117:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02af A[PHI: r4 r15
      0x02af: PHI (r4v4 ??) = (r4v25 ??), (r4v26 ??) binds: [B:111:0x02ac, B:14:0x003f] A[DONT_GENERATE, DONT_INLINE]
      0x02af: PHI (r15v1 ads_mobile_sdk.rm2) = (r15v0 ads_mobile_sdk.rm2), (r15v9 ads_mobile_sdk.rm2) binds: [B:111:0x02ac, B:14:0x003f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x02c0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02c1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0149 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01a4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0201 A[Catch: Exception -> 0x0060, TryCatch #0 {Exception -> 0x0060, blocks: (B:16:0x004f, B:93:0x01f5, B:95:0x0201, B:96:0x0228, B:98:0x022e, B:99:0x023b, B:106:0x028e, B:101:0x0249, B:102:0x026f, B:104:0x0275, B:105:0x0281, B:19:0x005a, B:89:0x01c4), top: B:117:0x0030 }] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v19 */
    /* JADX WARN: Type inference failed for: r13v2, types: [ads_mobile_sdk.ct1] */
    /* JADX WARN: Type inference failed for: r13v20 */
    /* JADX WARN: Type inference failed for: r13v21 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r4v0, types: [int] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2, types: [ads_mobile_sdk.rm2] */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [ads_mobile_sdk.rm2] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    @Override // ads_mobile_sdk.nt3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(kotlin.coroutines.Continuation r18) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 728
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.rm2.b(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final int a() {
        if (!this.k.isPresent()) {
            return 1;
        }
        Object obj = this.k.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        return ((Number) obj).intValue();
    }
}
