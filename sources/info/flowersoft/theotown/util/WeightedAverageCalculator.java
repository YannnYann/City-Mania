package info.flowersoft.theotown.util;

import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: loaded from: classes4.dex */
public class WeightedAverageCalculator {
    public float valueProduct;
    public float weightSum;

    public WeightedAverageCalculator() {
        clear();
    }

    public void clear() {
        this.valueProduct = 1.0f;
        this.weightSum = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public void addValue(float f) {
        addValue(f, (float) Math.exp((-3.0f) * f));
    }

    public void addValue(float f, float f2) {
        this.valueProduct *= (float) Math.pow(f, f2);
        this.weightSum += f2;
    }

    public float getResult() {
        return (float) Math.pow(this.valueProduct, 1.0f / this.weightSum);
    }
}
