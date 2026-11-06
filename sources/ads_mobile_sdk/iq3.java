package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.VideoController;

/* JADX INFO: loaded from: classes.dex */
public final class iq3 implements VideoController {
    public VideoController.VideoLifecycleCallbacks a;

    @Override // com.google.android.libraries.ads.mobile.sdk.common.VideoController
    public final VideoController.VideoLifecycleCallbacks getVideoLifecycleCallbacks() {
        VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks;
        synchronized (this) {
            videoLifecycleCallbacks = this.a;
        }
        return videoLifecycleCallbacks;
    }
}
