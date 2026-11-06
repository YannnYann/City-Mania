package com.google.android.libraries.ads.mobile.sdk.common;

import ads_mobile_sdk.mq0;

/* JADX INFO: loaded from: classes3.dex */
public interface VideoController {

    public interface VideoLifecycleCallbacks extends mq0 {
        default void onVideoEnd() {
        }

        default void onVideoMute(boolean z) {
        }

        default void onVideoPause() {
        }

        default void onVideoPlay() {
        }

        default void onVideoStart() {
        }
    }

    VideoLifecycleCallbacks getVideoLifecycleCallbacks();
}
