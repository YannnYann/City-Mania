package com.google.android.gms.ads.nativead;

import com.google.android.gms.ads.VideoOptions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes3.dex */
public final class NativeAdOptions {
    public static final int ADCHOICES_BOTTOM_LEFT = 3;
    public static final int ADCHOICES_BOTTOM_RIGHT = 2;
    public static final int ADCHOICES_TOP_LEFT = 0;
    public static final int ADCHOICES_TOP_RIGHT = 1;
    public static final Companion Companion = new Companion(0);
    public static final int NATIVE_MEDIA_ASPECT_RATIO_ANY = 1;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_LANDSCAPE = 2;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_PORTRAIT = 3;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_SQUARE = 4;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_UNKNOWN = 0;
    public static final int ORIENTATION_ANY = 0;
    public static final int ORIENTATION_LANDSCAPE = 2;
    public static final int ORIENTATION_NOT_SET = -1;
    public static final int ORIENTATION_PORTRAIT = 1;
    public static final int SWIPE_GESTURE_DIRECTION_DOWN = 8;
    public static final int SWIPE_GESTURE_DIRECTION_LEFT = 2;
    public static final int SWIPE_GESTURE_DIRECTION_RIGHT = 1;
    public static final int SWIPE_GESTURE_DIRECTION_UP = 4;
    private final boolean a;
    private final int b;
    private final boolean c;
    private final int d;
    private final VideoOptions e;
    private final boolean f;
    private final boolean g;
    private final int h;

    @Retention(RetentionPolicy.RUNTIME)
    public @interface AdChoicesPlacement {
    }

    public static final class Builder {
        private boolean a;
        private int b;
        private boolean c;
        private VideoOptions d;
        private int e = 1;
        private boolean f;
        private boolean g;
        private int h;

        public final NativeAdOptions build() {
            return new NativeAdOptions(this.a, this.b, this.c, this.e, this.d, this.f, this.g, this.h, 0);
        }

        public final Builder enableCustomClickGestureDirection(@SwipeGestureDirection int i, boolean z) {
            this.g = z;
            this.h = i;
            return this;
        }

        public final Builder setAdChoicesPlacement(@AdChoicesPlacement int i) {
            this.e = i;
            return this;
        }

        public final Builder setMediaAspectRatio(@NativeMediaAspectRatio int i) {
            this.b = i;
            return this;
        }

        public final Builder setRequestCustomMuteThisAd(boolean z) {
            this.f = z;
            return this;
        }

        public final Builder setRequestMultipleImages(boolean z) {
            this.c = z;
            return this;
        }

        public final Builder setReturnUrlsForImageAssets(boolean z) {
            this.a = z;
            return this;
        }

        public final Builder setVideoOptions(VideoOptions videoOptions) {
            this.d = videoOptions;
            return this;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(int i) {
            this();
        }

        private Companion() {
        }
    }

    @Retention(RetentionPolicy.RUNTIME)
    public @interface NativeMediaAspectRatio {
    }

    @Retention(RetentionPolicy.RUNTIME)
    public @interface SwipeGestureDirection {
    }

    public /* synthetic */ NativeAdOptions(boolean z, int i, boolean z2, int i2, VideoOptions videoOptions, boolean z3, boolean z4, int i3, int i4) {
        this(z, i, z2, i2, videoOptions, z3, z4, i3);
    }

    public final int getAdChoicesPlacement() {
        return this.d;
    }

    public final boolean getCustomClickGestureAllowTaps() {
        return this.g;
    }

    public final int getCustomClickGestureDirection() {
        return this.h;
    }

    public final int getMediaAspectRatio() {
        return this.b;
    }

    public final boolean getShouldRequestMultipleImages() {
        return this.c;
    }

    public final boolean getShouldReturnUrls() {
        return this.a;
    }

    public final boolean getUseCustomMuteThisAd() {
        return this.f;
    }

    public final VideoOptions getVideoOptions() {
        return this.e;
    }

    public final boolean shouldRequestMultipleImages() {
        return this.c;
    }

    public final boolean shouldReturnUrlsForImageAssets() {
        return this.a;
    }

    private NativeAdOptions(boolean z, int i, boolean z2, int i2, VideoOptions videoOptions, boolean z3, boolean z4, int i3) {
        this.a = z;
        this.b = i;
        this.c = z2;
        this.d = i2;
        this.e = videoOptions;
        this.f = z3;
        this.g = z4;
        this.h = i3;
    }
}
