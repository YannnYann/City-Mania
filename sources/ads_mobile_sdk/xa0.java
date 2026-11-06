package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class xa0 implements yh1.b {
    public static final xa0 a = new xa0();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        return (i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? null : ya0.NOTIFICATION_INITIATED : ya0.COPY_PASTE_USER_INITIATED : ya0.RENDERER_INITIATED_WITH_USER_GESTURE : ya0.RENDERER_INITIATED_WITHOUT_USER_GESTURE : ya0.BROWSER_INITIATED : ya0.UNDEFINED) != null;
    }
}
