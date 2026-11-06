package com.google.android.gms.ads;

import com.unity3d.services.UnityAdsConstants;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes3.dex */
public final class VideoController {
    public static final Companion Companion = new Companion(0);
    public static final int PLAYBACK_STATE_ENDED = 3;
    public static final int PLAYBACK_STATE_PAUSED = 2;
    public static final int PLAYBACK_STATE_PLAYING = 1;
    public static final int PLAYBACK_STATE_READY = 5;
    public static final int PLAYBACK_STATE_UNKNOWN = 0;

    public static final class Companion {
        public /* synthetic */ Companion(int i) {
            this();
        }

        private Companion() {
        }
    }

    @Retention(RetentionPolicy.RUNTIME)
    public @interface PlaybackState {
    }

    public static abstract class VideoLifecycleCallbacks {
        public final void onVideoEnd() {
        }

        public final void onVideoMute(boolean z) {
        }

        public final void onVideoPause() {
        }

        public final void onVideoPlay() {
        }

        public final void onVideoStart() {
        }
    }

    public final float getVideoCurrentTime() {
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public final float getVideoDuration() {
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public final boolean hasVideoContent() {
        return false;
    }

    public final boolean isClickToExpandEnabled() {
        return false;
    }

    public final boolean isCustomControlsEnabled() {
        return false;
    }

    public final boolean isMuted() {
        return false;
    }

    public final void mute(boolean z) {
    }

    public final void pause() {
    }

    public final void play() {
    }

    public final void stop() {
    }
}
