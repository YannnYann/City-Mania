package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import ads_mobile_sdk.y1;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes3.dex */
public final class AdSizeBundle {

    @SerializedName("height")
    public final int height;

    @SerializedName("is_fluid_height")
    public final boolean isFluid;

    @SerializedName("width")
    public final int width;

    public AdSizeBundle(int i, int i2, boolean z) {
        this.width = i;
        this.height = i2;
        this.isFluid = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdSizeBundle)) {
            return false;
        }
        AdSizeBundle adSizeBundle = (AdSizeBundle) obj;
        return this.width == adSizeBundle.width && this.height == adSizeBundle.height && this.isFluid == adSizeBundle.isFluid;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    public final int hashCode() {
        int iA = y1.a(this.height, Integer.hashCode(this.width) * 31, 31);
        boolean z = this.isFluid;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iA + r1;
    }

    public final String toString() {
        return "AdSizeBundle(width=" + this.width + ", height=" + this.height + ", isFluid=" + this.isFluid + ")";
    }
}
