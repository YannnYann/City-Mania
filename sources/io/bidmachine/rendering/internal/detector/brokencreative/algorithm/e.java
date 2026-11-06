package io.bidmachine.rendering.internal.detector.brokencreative.algorithm;

import android.graphics.Bitmap;
import io.bidmachine.rendering.model.BrokenCreativeAlgorithmParams;
import io.bidmachine.util.ColorUtils;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class e extends a {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(BrokenCreativeAlgorithmParams algorithmParams) {
        super(algorithmParams);
        Intrinsics.checkNotNullParameter(algorithmParams, "algorithmParams");
    }

    @Override // io.bidmachine.rendering.internal.detector.brokencreative.algorithm.a
    public Boolean a(Bitmap image) {
        Boolean boolValueOf;
        Intrinsics.checkNotNullParameter(image, "image");
        Float fA = a(image, a().getThreshold());
        if (fA != null) {
            boolValueOf = Boolean.valueOf(fA.floatValue() <= a().getThreshold());
        } else {
            boolValueOf = null;
        }
        a(fA, boolValueOf);
        return boolValueOf;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00bc A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Float a(android.graphics.Bitmap r21, float r22) {
        /*
            Method dump skipped, instruction units count: 231
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.detector.brokencreative.algorithm.e.a(android.graphics.Bitmap, float):java.lang.Float");
    }

    public final float a(int i, int i2) {
        float fRedToRatio = ColorUtils.redToRatio(i) - ColorUtils.redToRatio(i2);
        float fGreenToRatio = ColorUtils.greenToRatio(i) - ColorUtils.greenToRatio(i2);
        float fBlueToRatio = ColorUtils.blueToRatio(i) - ColorUtils.blueToRatio(i2);
        return (float) Math.sqrt((fRedToRatio * fRedToRatio) + (fGreenToRatio * fGreenToRatio) + (fBlueToRatio * fBlueToRatio));
    }
}
