package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class t52 {
    public final CoroutineScope a;
    public final CoroutineScope b;
    public final ex0 c;
    public final iz3 d;
    public final g83 e;
    public final cw2 f;
    public final nk3 g;

    public t52(CoroutineScope uiScope, CoroutineScope backgroundScope, ex0 flags, iz3 webViewFactory, g83 rootTraceCreator, dw2 singletonEngineProvider, nk3 singletonNativeJavascriptEngineConfigurator) {
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(webViewFactory, "webViewFactory");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(singletonEngineProvider, "singletonEngineProvider");
        Intrinsics.checkNotNullParameter(singletonNativeJavascriptEngineConfigurator, "singletonNativeJavascriptEngineConfigurator");
        this.a = uiScope;
        this.b = backgroundScope;
        this.c = flags;
        this.d = webViewFactory;
        this.e = rootTraceCreator;
        this.f = singletonEngineProvider;
        this.g = singletonNativeJavascriptEngineConfigurator;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00be A[Catch: all -> 0x0067, TRY_LEAVE, TryCatch #2 {all -> 0x0067, blocks: (B:26:0x0063, B:48:0x00b8, B:50:0x00be, B:53:0x00ca), top: B:100:0x0063 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00ca A[Catch: all -> 0x0067, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0067, blocks: (B:26:0x0063, B:48:0x00b8, B:50:0x00be, B:53:0x00ca), top: B:100:0x0063 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0127 A[Catch: all -> 0x0041, TryCatch #0 {all -> 0x0041, blocks: (B:14:0x003b, B:61:0x0121, B:63:0x0127, B:64:0x0141), top: B:97:0x003b }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0141 A[Catch: all -> 0x0041, TRY_LEAVE, TryCatch #0 {all -> 0x0041, blocks: (B:14:0x003b, B:61:0x0121, B:63:0x0127, B:64:0x0141), top: B:97:0x003b }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x016b A[Catch: all -> 0x0177, TryCatch #3 {all -> 0x0177, blocks: (B:70:0x0164, B:72:0x016b, B:74:0x016f, B:76:0x0173, B:79:0x017a, B:81:0x017e, B:83:0x0182, B:85:0x0186, B:86:0x0187, B:87:0x018c, B:88:0x018d, B:89:0x0194, B:90:0x0195, B:91:0x019c, B:92:0x019d), top: B:101:0x0164 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x019d A[Catch: all -> 0x0177, TRY_LEAVE, TryCatch #3 {all -> 0x0177, blocks: (B:70:0x0164, B:72:0x016b, B:74:0x016f, B:76:0x0173, B:79:0x017a, B:81:0x017e, B:83:0x0182, B:85:0x0186, B:86:0x0187, B:87:0x018c, B:88:0x018d, B:89:0x0194, B:90:0x0195, B:91:0x019c, B:92:0x019d), top: B:101:0x0164 }] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v13, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v15, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v3, types: [ads_mobile_sdk.rr3, java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v7, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9, types: [ads_mobile_sdk.rr3] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.t52 r19, ads_mobile_sdk.i2 r20, kotlin.coroutines.Continuation r21) {
        /*
            Method dump skipped, instruction units count: 420
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.t52.a(ads_mobile_sdk.t52, ads_mobile_sdk.i2, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
