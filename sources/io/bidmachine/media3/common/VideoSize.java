package io.bidmachine.media3.common;

import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.media3.common.util.Util;

/* JADX INFO: loaded from: classes5.dex */
public final class VideoSize {
    public final int height;
    public final float pixelWidthHeightRatio;

    @Deprecated
    public final int unappliedRotationDegrees;
    public final int width;
    public static final VideoSize UNKNOWN = new VideoSize(0, 0);
    public static final String FIELD_WIDTH = Util.intToStringMaxRadix(0);
    public static final String FIELD_HEIGHT = Util.intToStringMaxRadix(1);
    public static final String FIELD_PIXEL_WIDTH_HEIGHT_RATIO = Util.intToStringMaxRadix(3);

    public VideoSize(int i, int i2) {
        this(i, i2, 1.0f);
    }

    public VideoSize(int i, int i2, float f) {
        this.width = i;
        this.height = i2;
        this.unappliedRotationDegrees = 0;
        this.pixelWidthHeightRatio = f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VideoSize) {
            VideoSize videoSize = (VideoSize) obj;
            if (this.width == videoSize.width && this.height == videoSize.height && this.pixelWidthHeightRatio == videoSize.pixelWidthHeightRatio) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((Sdk.SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE + this.width) * 31) + this.height) * 31) + Float.floatToRawIntBits(this.pixelWidthHeightRatio);
    }
}
