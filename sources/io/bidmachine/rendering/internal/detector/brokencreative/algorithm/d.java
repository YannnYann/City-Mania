package io.bidmachine.rendering.internal.detector.brokencreative.algorithm;

import android.graphics.Bitmap;
import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.rendering.model.BrokenCreativeAlgorithmParams;
import java.util.HashMap;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX INFO: loaded from: classes5.dex */
public final class d extends a {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(BrokenCreativeAlgorithmParams algorithmParams) {
        super(algorithmParams);
        Intrinsics.checkNotNullParameter(algorithmParams, "algorithmParams");
    }

    private final float c(Bitmap bitmap) {
        IntRange intRangeUntil = RangesKt___RangesKt.until(0, bitmap.getWidth());
        IntRange intRangeUntil2 = RangesKt___RangesKt.until(0, bitmap.getHeight());
        int iCount = CollectionsKt___CollectionsKt.count(intRangeUntil) * CollectionsKt___CollectionsKt.count(intRangeUntil2);
        int[] iArr = new int[bitmap.getWidth()];
        HashMap map = new HashMap();
        int first = intRangeUntil2.getFirst();
        int last = intRangeUntil2.getLast();
        if (first <= last) {
            int i = first;
            while (true) {
                Bitmap bitmap2 = bitmap;
                bitmap2.getPixels(iArr, 0, bitmap.getWidth(), 0, i, bitmap.getWidth(), 1);
                int first2 = intRangeUntil.getFirst();
                int last2 = intRangeUntil.getLast();
                if (first2 <= last2) {
                    while (true) {
                        int i2 = iArr[first2];
                        Integer numValueOf = Integer.valueOf(i2);
                        Integer num = (Integer) map.get(Integer.valueOf(i2));
                        map.put(numValueOf, Integer.valueOf((num != null ? num.intValue() : 0) + 1));
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
        }
        return (((Integer) CollectionsKt___CollectionsKt.maxOrNull(map.values())) != null ? r14.intValue() : 0) / iCount;
    }

    @Override // io.bidmachine.rendering.internal.detector.brokencreative.algorithm.a
    public Boolean a(Bitmap image) {
        Intrinsics.checkNotNullParameter(image, "image");
        float threshold = a().getThreshold();
        float fA = threshold > 0.5f ? a(image, threshold) : c(image);
        boolean z = fA >= threshold;
        a(Float.valueOf(fA), Boolean.valueOf(z));
        return Boolean.valueOf(z);
    }

    public final float a(Bitmap bitmap, float f) {
        int i;
        int i2;
        int i3 = 0;
        IntRange intRangeUntil = RangesKt___RangesKt.until(0, bitmap.getWidth());
        IntRange intRangeUntil2 = RangesKt___RangesKt.until(0, bitmap.getHeight());
        int iCount = CollectionsKt___CollectionsKt.count(intRangeUntil) * CollectionsKt___CollectionsKt.count(intRangeUntil2);
        int[] iArr = new int[bitmap.getWidth()];
        int first = intRangeUntil2.getFirst();
        int last = intRangeUntil2.getLast();
        if (first <= last) {
            i2 = 0;
            int i4 = first;
            i = 0;
            while (true) {
                bitmap.getPixels(iArr, 0, bitmap.getWidth(), 0, i4, bitmap.getWidth(), 1);
                int first2 = intRangeUntil.getFirst();
                int last2 = intRangeUntil.getLast();
                if (first2 <= last2) {
                    while (true) {
                        int i5 = iArr[first2];
                        if (i == 0) {
                            i2 = i5;
                            i = 1;
                        } else {
                            i = i5 == i2 ? i + 1 : i - 1;
                        }
                        if (first2 == last2) {
                            break;
                        }
                        first2++;
                    }
                }
                if (i4 == last) {
                    break;
                }
                i4++;
            }
        } else {
            i = 0;
            i2 = 0;
        }
        float f2 = iCount;
        if (i < ((2 * f) - 1) * f2) {
            return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        int first3 = intRangeUntil2.getFirst();
        int last3 = intRangeUntil2.getLast();
        if (first3 <= last3) {
            int i6 = first3;
            while (true) {
                bitmap.getPixels(iArr, 0, bitmap.getWidth(), 0, i6, bitmap.getWidth(), 1);
                int first4 = intRangeUntil.getFirst();
                int last4 = intRangeUntil.getLast();
                if (first4 <= last4) {
                    while (true) {
                        if (iArr[first4] == i2) {
                            i3++;
                        }
                        if (first4 == last4) {
                            break;
                        }
                        first4++;
                    }
                }
                if (i6 == last3) {
                    break;
                }
                i6++;
            }
        }
        return i3 / f2;
    }
}
