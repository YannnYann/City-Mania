package com.google.android.gms.ads.formats;

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
    private final boolean a;
    private final int b;
    private final int c;
    private final boolean d;
    private final int e;
    private final VideoOptions f;
    private final boolean g;

    @Retention(RetentionPolicy.RUNTIME)
    public @interface AdChoicesPlacement {
    }

    public static final class Builder {
        private boolean a;
        private int b;
        private boolean d;
        private VideoOptions e;
        private boolean g;
        private int c = -1;
        private int f = 1;

        public final NativeAdOptions build() {
            return new NativeAdOptions(this.a, this.b, this.c, this.d, this.f, this.e, this.g, 0);
        }

        public final Builder setAdChoicesPlacement(@AdChoicesPlacement int i) {
            this.f = i;
            return this;
        }

        public final Builder setImageOrientation(int i) {
            this.c = i;
            return this;
        }

        public final Builder setMediaAspectRatio(@NativeMediaAspectRatio int i) {
            this.b = i;
            return this;
        }

        public final Builder setRequestCustomMuteThisAd(boolean z) {
            this.g = z;
            return this;
        }

        public final Builder setRequestMultipleImages(boolean z) {
            this.d = z;
            return this;
        }

        public final Builder setReturnUrlsForImageAssets(boolean z) {
            this.a = z;
            return this;
        }

        public final Builder setVideoOptions(VideoOptions videoOptions) {
            this.e = videoOptions;
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

    public /* synthetic */ NativeAdOptions(boolean z, int i, int i2, boolean z2, int i3, VideoOptions videoOptions, boolean z3, int i4) {
        this(z, i, i2, z2, i3, videoOptions, z3);
    }

    public final int getAdChoicesPlacement() {
        return this.e;
    }

    public final int getImageOrientation() {
        return this.b;
    }

    public final int getMediaAspectRatio() {
        return this.c;
    }

    public final boolean getShouldRequestMultipleImages() {
        return this.d;
    }

    public final boolean getShouldReturnUrls() {
        return this.a;
    }

    public final boolean getUseCustomMuteThisAd() {
        return this.g;
    }

    public final VideoOptions getVideoOptions() {
        return this.f;
    }

    private NativeAdOptions(boolean z, int i, int i2, boolean z2, int i3, VideoOptions videoOptions, boolean z3) {
        this.a = z;
        this.b = i;
        this.c = i2;
        this.d = z2;
        this.e = i3;
        this.f = videoOptions;
        this.g = z3;
    }
}
