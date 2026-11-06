package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes3.dex */
public final class VideoOptionsSignal {

    @SerializedName("clickToExpandRequested")
    public boolean clickToExpandRequested;

    @SerializedName("customControlsRequested")
    public boolean customControlsRequested;

    @SerializedName("startMuted")
    public boolean startMuted;

    public VideoOptionsSignal() {
        this(0);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VideoOptionsSignal)) {
            return false;
        }
        VideoOptionsSignal videoOptionsSignal = (VideoOptionsSignal) obj;
        return this.startMuted == videoOptionsSignal.startMuted && this.clickToExpandRequested == videoOptionsSignal.clickToExpandRequested && this.customControlsRequested == videoOptionsSignal.customControlsRequested;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    public final int hashCode() {
        boolean z = this.startMuted;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        boolean z2 = this.clickToExpandRequested;
        ?? r2 = z2;
        if (z2) {
            r2 = 1;
        }
        int i2 = (i + r2) * 31;
        boolean z3 = this.customControlsRequested;
        return i2 + (z3 ? 1 : z3);
    }

    public final String toString() {
        return "VideoOptionsSignal(startMuted=" + this.startMuted + ", clickToExpandRequested=" + this.clickToExpandRequested + ", customControlsRequested=" + this.customControlsRequested + ")";
    }

    public VideoOptionsSignal(boolean z, boolean z2, boolean z3) {
        this.startMuted = z;
        this.clickToExpandRequested = z2;
        this.customControlsRequested = z3;
    }

    public /* synthetic */ VideoOptionsSignal(int i) {
        this(true, false, false);
    }
}
