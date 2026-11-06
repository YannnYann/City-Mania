package io.bidmachine.rendering.internal.detector.brokencreative.algorithm;

import android.graphics.Bitmap;
import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.rendering.model.BrokenCreativeAlgorithmParams;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX INFO: loaded from: classes5.dex */
public final class c extends a {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(BrokenCreativeAlgorithmParams algorithmParams) {
        super(algorithmParams);
        Intrinsics.checkNotNullParameter(algorithmParams, "algorithmParams");
    }

    @Override // io.bidmachine.rendering.internal.detector.brokencreative.algorithm.a
    public Boolean a(Bitmap image) {
        Intrinsics.checkNotNullParameter(image, "image");
        float fC = c(image);
        boolean z = fC <= a().getThreshold();
        a(Float.valueOf(fC), Boolean.valueOf(z));
        return Boolean.valueOf(z);
    }

    public final float c(Bitmap bitmap) {
        float f;
        float f2;
        IntRange intRangeUntil = RangesKt___RangesKt.until(0, bitmap.getWidth());
        IntRange intRangeUntil2 = RangesKt___RangesKt.until(0, bitmap.getHeight());
        int iCount = CollectionsKt___CollectionsKt.count(intRangeUntil) * CollectionsKt___CollectionsKt.count(intRangeUntil2);
        int[] iArr = new int[bitmap.getWidth()];
        int first = intRangeUntil2.getFirst();
        int last = intRangeUntil2.getLast();
        if (first <= last) {
            int i = first;
            f = 0.0f;
            f2 = 0.0f;
            while (true) {
                Bitmap bitmap2 = bitmap;
                bitmap2.getPixels(iArr, 0, bitmap.getWidth(), 0, i, bitmap.getWidth(), 1);
                int first2 = intRangeUntil.getFirst();
                int last2 = intRangeUntil.getLast();
                if (first2 <= last2) {
                    while (true) {
                        float fA = a(iArr[first2]);
                        f += fA;
                        f2 += fA * fA;
                        if (first2 == last2) {
                            break;
                        }
                        first2++;
                    }
                }
                if (i == last) {
                    break;
                }
                i++;
                bitmap = bitmap2;
            }
        } else {
            f = 0.0f;
            f2 = 0.0f;
        }
        float f3 = iCount;
        float f4 = f / f3;
        float f5 = (f2 / f3) - (f4 * f4);
        return f5 < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT ? UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT : (float) Math.sqrt(f5);
    }
}
