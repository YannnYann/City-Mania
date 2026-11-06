package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public abstract class nq extends n2 implements at0 {
    public final cw2 l;
    public final mb0 m;
    public final iz3 n;
    public final CoroutineScope o;
    public final w61 p;
    public final km q;

    public /* synthetic */ nq(dw2 dw2Var, mb0 mb0Var, iz3 iz3Var, CoroutineScope coroutineScope, w61 w61Var, km kmVar, ks3 ks3Var, BaseRequest baseRequest, j53 j53Var, long j, int i, i2 i2Var, zy zyVar, ec3 ec3Var, String str, eo2 eo2Var) {
        this(dw2Var, mb0Var, iz3Var, coroutineScope, w61Var, kmVar, ks3Var, baseRequest, j53Var, j, i, i2Var, zyVar, ec3Var, str, eo2Var, new t91());
    }

    @Override // ads_mobile_sdk.j2
    public final boolean b() {
        vc1 vc1Var = this.f.J;
        if ((vc1Var != null ? vc1Var.a : null) == null) {
            return (vc1Var != null ? vc1Var.b : null) != null;
        }
        return true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nq(dw2 adComponentProvider, mb0 csiTicker, iz3 webViewFactory, CoroutineScope uiScope, w61 htmlUtil, km appSettings, ks3 traceMetaSet, BaseRequest baseRequest, j53 requestType, long j, int i, i2 adConfiguration, zy commonConfiguration, ec3 serverTransaction, String renderId, eo2 placementIdWrapper, t91 impressionDataWrapper) {
        super(traceMetaSet, baseRequest, requestType, j, i, adConfiguration, commonConfiguration, serverTransaction, renderId, placementIdWrapper, impressionDataWrapper);
        Intrinsics.checkNotNullParameter(adComponentProvider, "adComponentProvider");
        Intrinsics.checkNotNullParameter(csiTicker, "csiTicker");
        Intrinsics.checkNotNullParameter(webViewFactory, "webViewFactory");
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
        Intrinsics.checkNotNullParameter(placementIdWrapper, "placementIdWrapper");
        Intrinsics.checkNotNullParameter(impressionDataWrapper, "impressionDataWrapper");
        this.l = adComponentProvider;
        this.m = csiTicker;
        this.n = webViewFactory;
        this.o = uiScope;
        this.p = htmlUtil;
        this.q = appSettings;
    }

    @Override // ads_mobile_sdk.at0
    public final km a() {
        return this.q;
    }

    @Override // ads_mobile_sdk.n2
    public final Object a(boolean z, Continuation continuation) {
        return a(this, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02d1 A[Catch: all -> 0x02ab, TRY_LEAVE, TryCatch #6 {all -> 0x02ab, blocks: (B:86:0x0298, B:88:0x029f, B:90:0x02a3, B:92:0x02a7, B:95:0x02ae, B:97:0x02b2, B:99:0x02b6, B:101:0x02ba, B:102:0x02bb, B:103:0x02c0, B:104:0x02c1, B:105:0x02c8, B:106:0x02c9, B:107:0x02d0, B:108:0x02d1), top: B:154:0x0298 }] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02e2 A[Catch: all -> 0x02ee, TryCatch #7 {all -> 0x02ee, blocks: (B:115:0x02db, B:117:0x02e2, B:119:0x02e6, B:121:0x02ea, B:124:0x02f1, B:126:0x02f5, B:128:0x02f9, B:130:0x02fd, B:131:0x02fe, B:132:0x0303, B:133:0x0304, B:134:0x030b, B:135:0x030c, B:136:0x0313, B:137:0x0314), top: B:155:0x02db }] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0314 A[Catch: all -> 0x02ee, TRY_LEAVE, TryCatch #7 {all -> 0x02ee, blocks: (B:115:0x02db, B:117:0x02e2, B:119:0x02e6, B:121:0x02ea, B:124:0x02f1, B:126:0x02f5, B:128:0x02f9, B:130:0x02fd, B:131:0x02fe, B:132:0x0303, B:133:0x0304, B:134:0x030b, B:135:0x030c, B:136:0x0313, B:137:0x0314), top: B:155:0x02db }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x010b A[Catch: all -> 0x00c4, TRY_LEAVE, TryCatch #2 {all -> 0x00c4, blocks: (B:23:0x00c0, B:33:0x0105, B:35:0x010b), top: B:146:0x00c0 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x024c A[Catch: all -> 0x0062, TRY_LEAVE, TryCatch #0 {all -> 0x0062, blocks: (B:15:0x0057, B:72:0x0246, B:74:0x024c), top: B:142:0x0057 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0259 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x025a  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x029f A[Catch: all -> 0x02ab, TryCatch #6 {all -> 0x02ab, blocks: (B:86:0x0298, B:88:0x029f, B:90:0x02a3, B:92:0x02a7, B:95:0x02ae, B:97:0x02b2, B:99:0x02b6, B:101:0x02ba, B:102:0x02bb, B:103:0x02c0, B:104:0x02c1, B:105:0x02c8, B:106:0x02c9, B:107:0x02d0, B:108:0x02d1), top: B:154:0x0298 }] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0018  */
    /* JADX WARN: Type inference failed for: r1v26, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v35, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v22, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r4v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r4v31 */
    /* JADX WARN: Type inference failed for: r4v33 */
    /* JADX WARN: Type inference failed for: r4v36, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r4v37 */
    /* JADX WARN: Type inference failed for: r4v38 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v40, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r4v41 */
    /* JADX WARN: Type inference failed for: r4v42 */
    /* JADX WARN: Type inference failed for: r4v43 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.nq r22, kotlin.coroutines.Continuation r23) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 814
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.nq.a(ads_mobile_sdk.nq, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
