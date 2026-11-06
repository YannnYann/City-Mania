package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import ads_mobile_sdk.ej1;
import ads_mobile_sdk.ex0;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import java.util.Set;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
public final class a {
    public final Set a;
    public final CoroutineScope b;
    public final CoroutineScope c;
    public final ex0 d;
    public final BaseRequest e;
    public final ej1 f;

    public a(Set signalSourceConfigs, CoroutineScope uiScope, CoroutineScope backgroundScope, ex0 flags, BaseRequest baseRequest, ej1 internalAdRequestEventEmitter) {
        Intrinsics.checkNotNullParameter(signalSourceConfigs, "signalSourceConfigs");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(internalAdRequestEventEmitter, "internalAdRequestEventEmitter");
        this.a = signalSourceConfigs;
        this.b = uiScope;
        this.c = backgroundScope;
        this.d = flags;
        this.e = baseRequest;
        this.f = internalAdRequestEventEmitter;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00d5 A[Catch: all -> 0x00e1, TryCatch #0 {all -> 0x00e1, blocks: (B:56:0x00ce, B:58:0x00d5, B:60:0x00d9, B:62:0x00dd, B:65:0x00e3, B:67:0x00e7, B:69:0x00eb, B:71:0x00ef, B:72:0x00f0, B:73:0x00f5, B:74:0x00f6, B:75:0x00fd, B:76:0x00fe, B:77:0x0105, B:78:0x0106), top: B:83:0x00ce }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0106 A[Catch: all -> 0x00e1, TRY_LEAVE, TryCatch #0 {all -> 0x00e1, blocks: (B:56:0x00ce, B:58:0x00d5, B:60:0x00d9, B:62:0x00dd, B:65:0x00e3, B:67:0x00e7, B:69:0x00eb, B:71:0x00ef, B:72:0x00f0, B:73:0x00f5, B:74:0x00f6, B:75:0x00fd, B:76:0x00fe, B:77:0x0105, B:78:0x0106), top: B:83:0x00ce }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v2, types: [ads_mobile_sdk.yj3, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r0v21, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v12, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v2, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v18, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object b(com.google.android.libraries.ads.mobile.sdk.internal.signals.a r9, kotlin.coroutines.Continuation r10) {
        /*
            Method dump skipped, instruction units count: 269
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.libraries.ads.mobile.sdk.internal.signals.a.b(com.google.android.libraries.ads.mobile.sdk.internal.signals.a, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object a(ContinuationImpl continuationImpl) {
        return b(this, continuationImpl);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.sh3 r11, com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals r12, kotlin.coroutines.Continuation r13) {
        /*
            Method dump skipped, instruction units count: 327
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.libraries.ads.mobile.sdk.internal.signals.a.a(ads_mobile_sdk.sh3, com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x0224 A[Catch: Exception -> 0x0083, TRY_LEAVE, TryCatch #9 {Exception -> 0x0083, blocks: (B:31:0x007e, B:78:0x01b5, B:80:0x01b9, B:82:0x01df, B:110:0x0220, B:111:0x0223, B:112:0x0224, B:69:0x0183, B:81:0x01c5, B:85:0x01e4, B:87:0x01eb, B:89:0x01ef, B:91:0x01f3, B:94:0x01fa, B:96:0x01fe, B:98:0x0202, B:100:0x0206, B:101:0x0207, B:102:0x020c, B:103:0x020d, B:104:0x0214, B:105:0x0215, B:106:0x021c, B:107:0x021d, B:108:0x021e), top: B:163:0x002d, inners: #1, #5, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x02c1 A[Catch: Exception -> 0x02dc, df3 -> 0x02de, TryCatch #12 {df3 -> 0x02de, Exception -> 0x02dc, blocks: (B:136:0x02bb, B:138:0x02c1, B:145:0x02e0, B:135:0x02b3), top: B:166:0x02b3 }] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:210:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0190 A[Catch: Exception -> 0x022c, TRY_LEAVE, TryCatch #2 {Exception -> 0x022c, blocks: (B:72:0x018a, B:74:0x0190), top: B:160:0x018a }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01b9 A[Catch: Exception -> 0x0083, TRY_LEAVE, TryCatch #9 {Exception -> 0x0083, blocks: (B:31:0x007e, B:78:0x01b5, B:80:0x01b9, B:82:0x01df, B:110:0x0220, B:111:0x0223, B:112:0x0224, B:69:0x0183, B:81:0x01c5, B:85:0x01e4, B:87:0x01eb, B:89:0x01ef, B:91:0x01f3, B:94:0x01fa, B:96:0x01fe, B:98:0x0202, B:100:0x0206, B:101:0x0207, B:102:0x020c, B:103:0x020d, B:104:0x0214, B:105:0x0215, B:106:0x021c, B:107:0x021d, B:108:0x021e), top: B:163:0x002d, inners: #1, #5, #10 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:77:0x01ae -> B:78:0x01b5). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(com.google.android.libraries.ads.mobile.sdk.internal.signals.a r21, kotlin.coroutines.Continuation r22) {
        /*
            Method dump skipped, instruction units count: 800
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.libraries.ads.mobile.sdk.internal.signals.a.a(com.google.android.libraries.ads.mobile.sdk.internal.signals.a, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
