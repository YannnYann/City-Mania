package io.bidmachine;

import android.graphics.Bitmap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class LabelData {
    private final float heightDp;
    private final Bitmap image;
    private final PositionData positionData;
    private final float widthDp;

    public LabelData(float f, float f2, Bitmap image, PositionData positionData) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(positionData, "positionData");
        this.widthDp = f;
        this.heightDp = f2;
        this.image = image;
        this.positionData = positionData;
    }

    public static /* synthetic */ LabelData copy$default(LabelData labelData, float f, float f2, Bitmap bitmap, PositionData positionData, int i, Object obj) {
        if ((i & 1) != 0) {
            f = labelData.widthDp;
        }
        if ((i & 2) != 0) {
            f2 = labelData.heightDp;
        }
        if ((i & 4) != 0) {
            bitmap = labelData.image;
        }
        if ((i & 8) != 0) {
            positionData = labelData.positionData;
        }
        return labelData.copy(f, f2, bitmap, positionData);
    }

    public final float component1() {
        return this.widthDp;
    }

    public final float component2() {
        return this.heightDp;
    }

    public final Bitmap component3() {
        return this.image;
    }

    public final PositionData component4() {
        return this.positionData;
    }

    public final LabelData copy(float f, float f2, Bitmap image, PositionData positionData) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(positionData, "positionData");
        return new LabelData(f, f2, image, positionData);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LabelData)) {
            return false;
        }
        LabelData labelData = (LabelData) obj;
        return Float.compare(this.widthDp, labelData.widthDp) == 0 && Float.compare(this.heightDp, labelData.heightDp) == 0 && Intrinsics.areEqual(this.image, labelData.image) && this.positionData == labelData.positionData;
    }

    public final float getHeightDp() {
        return this.heightDp;
    }

    public final Bitmap getImage() {
        return this.image;
    }

    public final PositionData getPositionData() {
        return this.positionData;
    }

    public final float getWidthDp() {
        return this.widthDp;
    }

    public int hashCode() {
        return (((((Float.hashCode(this.widthDp) * 31) + Float.hashCode(this.heightDp)) * 31) + this.image.hashCode()) * 31) + this.positionData.hashCode();
    }

    public String toString() {
        return "LabelData(widthDp=" + this.widthDp + ", heightDp=" + this.heightDp + ", image=" + this.image + ", positionData=" + this.positionData + ')';
    }
}
