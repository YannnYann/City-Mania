package com.google.android.gms.ads;

import ads_mobile_sdk.yx3;

/* JADX INFO: loaded from: classes3.dex */
public final class VideoOptions {
    public static final yx3 Companion = new yx3();
    public static final boolean DEFAULT_START_MUTED = true;
    private final boolean a;
    private final boolean b;
    private final boolean c;

    public static final class Builder {
        private boolean a = true;
        private boolean b;
        private boolean c;

        public final VideoOptions build() {
            return new VideoOptions(this.a, this.b, this.c, 0);
        }

        public final Builder setClickToExpandRequested(boolean z) {
            this.c = z;
            return this;
        }

        public final Builder setCustomControlsRequested(boolean z) {
            this.b = z;
            return this;
        }

        public final Builder setStartMuted(boolean z) {
            this.a = z;
            return this;
        }
    }

    public /* synthetic */ VideoOptions(boolean z, boolean z2, boolean z3, int i) {
        this(z, z2, z3);
    }

    public final boolean getClickToExpandRequested() {
        return this.c;
    }

    public final boolean getCustomControlsRequested() {
        return this.b;
    }

    public final boolean getStartMuted() {
        return this.a;
    }

    private VideoOptions(boolean z, boolean z2, boolean z3) {
        this.a = z;
        this.b = z2;
        this.c = z3;
    }
}
