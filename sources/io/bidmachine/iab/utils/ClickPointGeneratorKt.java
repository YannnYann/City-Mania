package io.bidmachine.iab.utils;

import android.graphics.Point;
import android.graphics.PointF;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;

/* JADX INFO: loaded from: classes5.dex */
public final class ClickPointGeneratorKt {
    public static final Point relativeToView(PointF pointF, int i, int i2) {
        Intrinsics.checkNotNullParameter(pointF, "<this>");
        return new Point(MathKt__MathJVMKt.roundToInt(i * pointF.x), MathKt__MathJVMKt.roundToInt(i2 * pointF.y));
    }
}
