package ads_mobile_sdk;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class us1 implements r41 {
    public final j12 a;
    public final q52 b;
    public final AtomicBoolean c;

    public us1(j12 nativeAdCore, q52 nativeJavascriptEngine) {
        Intrinsics.checkNotNullParameter(nativeAdCore, "nativeAdCore");
        Intrinsics.checkNotNullParameter(nativeJavascriptEngine, "nativeJavascriptEngine");
        this.a = nativeAdCore;
        this.b = nativeJavascriptEngine;
        this.c = new AtomicBoolean(false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0101, code lost:
    
        if (r13.a(r15, "sendMessageToNativeJs", r5) == r0) goto L45;
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c5 A[Catch: all -> 0x0107, TryCatch #1 {all -> 0x0107, blocks: (B:40:0x00ba, B:42:0x00c5, B:43:0x00da), top: B:85:0x00ba }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00da A[Catch: all -> 0x0107, TRY_LEAVE, TryCatch #1 {all -> 0x0107, blocks: (B:40:0x00ba, B:42:0x00c5, B:43:0x00da), top: B:85:0x00ba }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0121 A[Catch: all -> 0x012d, TryCatch #5 {all -> 0x012d, blocks: (B:56:0x011a, B:58:0x0121, B:60:0x0125, B:62:0x0129, B:65:0x0130, B:67:0x0134, B:69:0x0138, B:71:0x013c, B:72:0x013d, B:73:0x0142, B:74:0x0143, B:75:0x014a, B:76:0x014b, B:77:0x0152, B:78:0x0153), top: B:92:0x011a }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0153 A[Catch: all -> 0x012d, TRY_LEAVE, TryCatch #5 {all -> 0x012d, blocks: (B:56:0x011a, B:58:0x0121, B:60:0x0125, B:62:0x0129, B:65:0x0130, B:67:0x0134, B:69:0x0138, B:71:0x013c, B:72:0x013d, B:73:0x0142, B:74:0x0143, B:75:0x014a, B:76:0x014b, B:77:0x0152, B:78:0x0153), top: B:92:0x011a }] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0016  */
    @Override // ads_mobile_sdk.r41
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.r31 r13, java.util.Map r14, kotlin.coroutines.Continuation r15) {
        /*
            Method dump skipped, instruction units count: 347
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.us1.a(ads_mobile_sdk.r31, java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_LOAD_OVERLAY_HTML;
    }
}
