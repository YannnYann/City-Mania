package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class dy1 implements r41 {
    public final ks1 a;
    public final ks1 b;
    public final ks1 c;
    public final ks1 d;
    public final ks1 e;
    public final f0 f;
    public final s93 g;

    public dy1(ks1 mraidSetOrientationPropertiesHandler, ks1 mraidResizeHandler, ks1 mraidCalendarEventHandler, ks1 mraidStorePictureHandler, ks1 mraidUnloadHandler, f0 activityTracker, s93 safeBrowsingManager) {
        Intrinsics.checkNotNullParameter(mraidSetOrientationPropertiesHandler, "mraidSetOrientationPropertiesHandler");
        Intrinsics.checkNotNullParameter(mraidResizeHandler, "mraidResizeHandler");
        Intrinsics.checkNotNullParameter(mraidCalendarEventHandler, "mraidCalendarEventHandler");
        Intrinsics.checkNotNullParameter(mraidStorePictureHandler, "mraidStorePictureHandler");
        Intrinsics.checkNotNullParameter(mraidUnloadHandler, "mraidUnloadHandler");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(safeBrowsingManager, "safeBrowsingManager");
        this.a = mraidSetOrientationPropertiesHandler;
        this.b = mraidResizeHandler;
        this.c = mraidCalendarEventHandler;
        this.d = mraidStorePictureHandler;
        this.e = mraidUnloadHandler;
        this.f = activityTracker;
        this.g = safeBrowsingManager;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00f5, code lost:
    
        if (r13.a(r11, r12) == r1) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0116, code lost:
    
        if (r13.a(r12, r11) == r1) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0134, code lost:
    
        if (r13.a(r11, r12) == r1) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x014f, code lost:
    
        if (r11.a(r0) == r1) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x016c, code lost:
    
        if (r11.a(r12, r0) == r1) goto L78;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0187  */
    @Override // ads_mobile_sdk.r41
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.r31 r11, java.util.Map r12, kotlin.coroutines.Continuation r13) {
        /*
            Method dump skipped, instruction units count: 478
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.dy1.a(ads_mobile_sdk.r31, java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_MRAID;
    }
}
