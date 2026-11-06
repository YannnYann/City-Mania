package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class mk3 extends rp0 implements q52 {
    public final CoroutineScope d;
    public final CoroutineScope e;
    public final ex0 f;
    public final iz3 g;
    public final v52 h;
    public final nk3 i;
    public final g83 j;

    public mk3(CoroutineScope uiScope, CoroutineScope backgroundScope, ex0 flags, iz3 webViewFactory, v52 jsContext, nk3 singletonNativeJavascriptEngineConfigurator, g83 rootTraceCreator) {
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(webViewFactory, "webViewFactory");
        Intrinsics.checkNotNullParameter(jsContext, "jsContext");
        Intrinsics.checkNotNullParameter(singletonNativeJavascriptEngineConfigurator, "singletonNativeJavascriptEngineConfigurator");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        this.d = uiScope;
        this.e = backgroundScope;
        this.f = flags;
        this.g = webViewFactory;
        this.h = jsContext;
        this.i = singletonNativeJavascriptEngineConfigurator;
        this.j = rootTraceCreator;
    }

    @Override // ads_mobile_sdk.rp0
    public final Object a(String str, Continuation continuation) {
        return a(this, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0206 A[Catch: all -> 0x0066, TRY_LEAVE, TryCatch #4 {all -> 0x0066, blocks: (B:23:0x0061, B:105:0x0200, B:107:0x0206, B:110:0x0214), top: B:162:0x0061 }] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0214 A[Catch: all -> 0x0066, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x0066, blocks: (B:23:0x0061, B:105:0x0200, B:107:0x0206, B:110:0x0214), top: B:162:0x0061 }] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0268 A[Catch: all -> 0x0046, TryCatch #7 {all -> 0x0046, blocks: (B:13:0x0041, B:118:0x0262, B:120:0x0268, B:122:0x0281), top: B:167:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0281 A[Catch: all -> 0x0046, TRY_LEAVE, TryCatch #7 {all -> 0x0046, blocks: (B:13:0x0041, B:118:0x0262, B:120:0x0268, B:122:0x0281), top: B:167:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x02b2 A[Catch: all -> 0x02be, TryCatch #11 {all -> 0x02be, blocks: (B:129:0x02ab, B:131:0x02b2, B:133:0x02b6, B:135:0x02ba, B:138:0x02c1, B:140:0x02c5, B:142:0x02c9, B:144:0x02cd, B:145:0x02ce, B:146:0x02d3, B:147:0x02d4, B:148:0x02db, B:149:0x02dc, B:150:0x02e3, B:151:0x02e4), top: B:173:0x02ab }] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x02e4 A[Catch: all -> 0x02be, TRY_LEAVE, TryCatch #11 {all -> 0x02be, blocks: (B:129:0x02ab, B:131:0x02b2, B:133:0x02b6, B:135:0x02ba, B:138:0x02c1, B:140:0x02c5, B:142:0x02c9, B:144:0x02cd, B:145:0x02ce, B:146:0x02d3, B:147:0x02d4, B:148:0x02db, B:149:0x02dc, B:150:0x02e3, B:151:0x02e4), top: B:173:0x02ab }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f3 A[Catch: all -> 0x0095, TRY_LEAVE, TryCatch #1 {all -> 0x0095, blocks: (B:38:0x0091, B:49:0x00ed, B:51:0x00f3, B:54:0x0101), top: B:158:0x0091 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0101 A[Catch: all -> 0x0095, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0095, blocks: (B:38:0x0091, B:49:0x00ed, B:51:0x00f3, B:54:0x0101), top: B:158:0x0091 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0157 A[Catch: all -> 0x0076, TryCatch #3 {all -> 0x0076, blocks: (B:28:0x0071, B:62:0x0151, B:64:0x0157, B:66:0x0170), top: B:161:0x0071 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0170 A[Catch: all -> 0x0076, TRY_LEAVE, TryCatch #3 {all -> 0x0076, blocks: (B:28:0x0071, B:62:0x0151, B:64:0x0157, B:66:0x0170), top: B:161:0x0071 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01a0 A[Catch: all -> 0x01ac, TryCatch #10 {all -> 0x01ac, blocks: (B:73:0x0199, B:75:0x01a0, B:77:0x01a4, B:79:0x01a8, B:82:0x01af, B:84:0x01b3, B:86:0x01b7, B:88:0x01bb, B:89:0x01bc, B:90:0x01c1, B:91:0x01c2, B:92:0x01c9, B:93:0x01ca, B:94:0x01d1, B:95:0x01d2), top: B:172:0x0199 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01d2 A[Catch: all -> 0x01ac, TRY_LEAVE, TryCatch #10 {all -> 0x01ac, blocks: (B:73:0x0199, B:75:0x01a0, B:77:0x01a4, B:79:0x01a8, B:82:0x01af, B:84:0x01b3, B:86:0x01b7, B:88:0x01bb, B:89:0x01bc, B:90:0x01c1, B:91:0x01c2, B:92:0x01c9, B:93:0x01ca, B:94:0x01d1, B:95:0x01d2), top: B:172:0x0199 }] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v11, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r13v12, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r13v13, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v13, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v16, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v17, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v2, types: [ads_mobile_sdk.rr3, java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v20, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v22, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v23, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v26, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r4v27 */
    /* JADX WARN: Type inference failed for: r4v28 */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v12, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r9v13, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r9v15 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.mk3 r23, kotlin.coroutines.Continuation r24) {
        /*
            Method dump skipped, instruction units count: 766
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.mk3.a(ads_mobile_sdk.mk3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.q52
    public final nr1 a() {
        return this.h;
    }
}
