package com.google.android.libraries.ads.mobile.sdk.common;

import ads_mobile_sdk.xx3;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class VideoOptions {
    public static final xx3 Companion = new xx3();
    public final boolean a;
    public final boolean b;
    public final boolean c;

    public static final class Builder {
        public boolean a = true;
        public boolean b;
        public boolean c;

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

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.a), Boolean.valueOf(this.b), Boolean.valueOf(this.c));
    }

    public VideoOptions(boolean z, boolean z2, boolean z3) {
        this.a = z;
        this.b = z2;
        this.c = z3;
    }
}
