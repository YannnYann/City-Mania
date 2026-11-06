package ads_mobile_sdk;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class zo extends n2 implements at0 {
    public final Context l;
    public final cw2 m;
    public final mb0 n;
    public final iz3 o;
    public final g33 p;
    public final CoroutineScope q;
    public final w61 r;
    public final km s;
    public final BannerRequest t;

    /* JADX WARN: Illegal instructions before constructor call */
    public zo(Context context, dw2 adComponentProvider, mb0 csiTicker, iz3 webViewFactory, g33 refreshListener, CoroutineScope uiScope, w61 htmlUtil, km appSettings, ks3 traceMetaSet, BaseRequest baseRequest, j53 requestType, long j, int i, i2 adConfiguration, zy commonConfiguration, ec3 serverTransaction, String renderId, BannerRequest bannerRequest, dw2 placementIdWrapperProvider) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adComponentProvider, "adComponentProvider");
        Intrinsics.checkNotNullParameter(csiTicker, "csiTicker");
        Intrinsics.checkNotNullParameter(webViewFactory, "webViewFactory");
        Intrinsics.checkNotNullParameter(refreshListener, "refreshListener");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(htmlUtil, "htmlUtil");
        Intrinsics.checkNotNullParameter(appSettings, "appSettings");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(serverTransaction, "serverTransaction");
        Intrinsics.checkNotNullParameter(renderId, "renderId");
        Intrinsics.checkNotNullParameter(bannerRequest, "bannerRequest");
        Intrinsics.checkNotNullParameter(placementIdWrapperProvider, "placementIdWrapperProvider");
        Object obj = placementIdWrapperProvider.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        super(traceMetaSet, baseRequest, requestType, j, i, adConfiguration, commonConfiguration, serverTransaction, renderId, (eo2) obj);
        this.l = context;
        this.m = adComponentProvider;
        this.n = csiTicker;
        this.o = webViewFactory;
        this.p = refreshListener;
        this.q = uiScope;
        this.r = htmlUtil;
        this.s = appSettings;
        this.t = bannerRequest;
    }

    @Override // ads_mobile_sdk.j2
    public final boolean b() {
        vc1 vc1Var = this.f.J;
        if ((vc1Var != null ? vc1Var.a : null) == null) {
            return (vc1Var != null ? vc1Var.b : null) != null;
        }
        return true;
    }

    @Override // ads_mobile_sdk.at0
    public final km a() {
        return this.s;
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x032d, code lost:
    
        if (r0.a(r4, r7) != r2) goto L106;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0354 A[Catch: all -> 0x0360, TryCatch #0 {all -> 0x0360, blocks: (B:111:0x034d, B:113:0x0354, B:115:0x0358, B:117:0x035c, B:120:0x0363, B:122:0x0367, B:124:0x036b, B:126:0x036f, B:127:0x0370, B:128:0x0375, B:129:0x0376, B:130:0x037d, B:131:0x037e, B:132:0x0385, B:133:0x0386), top: B:167:0x034d }] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0386 A[Catch: all -> 0x0360, TRY_LEAVE, TryCatch #0 {all -> 0x0360, blocks: (B:111:0x034d, B:113:0x0354, B:115:0x0358, B:117:0x035c, B:120:0x0363, B:122:0x0367, B:124:0x036b, B:126:0x036f, B:127:0x0370, B:128:0x0375, B:129:0x0376, B:130:0x037d, B:131:0x037e, B:132:0x0385, B:133:0x0386), top: B:167:0x034d }] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0397 A[Catch: all -> 0x03a3, TryCatch #1 {all -> 0x03a3, blocks: (B:140:0x0390, B:142:0x0397, B:144:0x039b, B:146:0x039f, B:149:0x03a6, B:151:0x03aa, B:153:0x03ae, B:155:0x03b2, B:156:0x03b3, B:157:0x03b8, B:158:0x03b9, B:159:0x03c0, B:160:0x03c1, B:161:0x03c8, B:162:0x03c9), top: B:168:0x0390 }] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x03c9 A[Catch: all -> 0x03a3, TRY_LEAVE, TryCatch #1 {all -> 0x03a3, blocks: (B:140:0x0390, B:142:0x0397, B:144:0x039b, B:146:0x039f, B:149:0x03a6, B:151:0x03aa, B:153:0x03ae, B:155:0x03b2, B:156:0x03b3, B:157:0x03b8, B:158:0x03b9, B:159:0x03c0, B:160:0x03c1, B:161:0x03c8, B:162:0x03c9), top: B:168:0x0390 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0195 A[Catch: all -> 0x00d3, TRY_LEAVE, TryCatch #2 {all -> 0x00d3, blocks: (B:26:0x00cd, B:50:0x018f, B:52:0x0195), top: B:169:0x00cd }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02df A[Catch: all -> 0x006f, TRY_LEAVE, TryCatch #7 {all -> 0x006f, blocks: (B:16:0x0065, B:89:0x02d9, B:91:0x02df), top: B:179:0x0065 }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02ed A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02ee  */
    /* JADX WARN: Type inference failed for: r0v30, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v51, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v15, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v21, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r4v31 */
    /* JADX WARN: Type inference failed for: r4v34 */
    /* JADX WARN: Type inference failed for: r4v40, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r4v41 */
    /* JADX WARN: Type inference failed for: r4v42 */
    /* JADX WARN: Type inference failed for: r4v47, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r4v53 */
    /* JADX WARN: Type inference failed for: r4v54 */
    @Override // ads_mobile_sdk.n2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(boolean r18, kotlin.coroutines.Continuation r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 996
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.zo.a(boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
