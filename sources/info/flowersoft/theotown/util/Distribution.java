package info.flowersoft.theotown.util;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class Distribution {
    public float average;
    public float deviation;
    public float maxValue;
    public float minValue;
    public int sampleCount;
    public float variance;

    public Distribution(JSONObject jSONObject) throws JSONException {
        this.average = (float) jSONObject.getDouble("average");
        float f = (float) jSONObject.getDouble("variance");
        this.variance = f;
        this.deviation = (float) Math.sqrt(f);
        this.sampleCount = jSONObject.getInt("sample count");
        this.minValue = (float) jSONObject.getDouble("min value");
        this.maxValue = (float) jSONObject.getDouble("max value");
    }

    public Distribution(float f, float f2) {
        this(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0, f, f2);
    }

    public Distribution(float f, float f2, int i) {
        this(f, f2, i, -3.4028235E38f, Float.MAX_VALUE);
    }

    public Distribution(float f, float f2, int i, float f3, float f4) {
        this.average = f;
        this.variance = f2;
        this.deviation = (float) Math.sqrt(f2);
        this.sampleCount = i;
        this.minValue = f3;
        this.maxValue = f4;
    }

    public Distribution() {
        this(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0);
    }

    public void save(JSONObject jSONObject) throws JSONException {
        jSONObject.put("average", this.average);
        jSONObject.put("variance", this.variance);
        jSONObject.put("sample count", this.sampleCount);
        jSONObject.put("min value", this.minValue);
        jSONObject.put("max value", this.maxValue);
    }

    public void addSample(float f) {
        float f2 = this.variance;
        float f3 = this.average;
        float f4 = f2 + (f3 * f3);
        int i = this.sampleCount;
        float f5 = ((f3 * i) + f) / (i + 1);
        this.average = f5;
        float f6 = (((f4 * i) + (f * f)) / (i + 1)) - (f5 * f5);
        this.variance = f6;
        this.deviation = (float) Math.sqrt(f6);
        this.sampleCount++;
    }

    public void removeSample(float f) {
        float f2 = this.variance;
        float f3 = this.average;
        float f4 = f2 + (f3 * f3);
        int i = this.sampleCount;
        float f5 = ((f3 * i) - f) / (i - 1);
        this.average = f5;
        float f6 = (((f4 * i) - (f * f)) / (i - 1)) - (f5 * f5);
        this.variance = f6;
        this.deviation = (float) Math.sqrt(f6);
        this.sampleCount--;
    }

    public float getAverage() {
        return this.average;
    }

    public float getVariance() {
        return this.variance;
    }

    public float getDeviation() {
        return this.deviation;
    }

    public int getSampleCount() {
        return this.sampleCount;
    }

    public float getDensity(float f) {
        double dSqrt = 1.0d / (((double) this.deviation) * Math.sqrt(6.283185307179586d));
        float f2 = this.average;
        return (float) (dSqrt * Math.exp((((f - f2) * (-0.5f)) * (f - f2)) / this.variance));
    }

    public float getDistribution(float f) {
        float f2 = this.deviation;
        float density = getDensity(f) * f2;
        float f3 = f - f2;
        float f4 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        while (true) {
            if (f3 >= this.average || density > 0.001f) {
                float density2 = getDensity(f3) * f2;
                f4 += (density + density2) / 2.0f;
                if (density2 < 0.05f) {
                    f2 *= 2.0f;
                    density2 *= 2.0f;
                } else if (density2 > 0.1f) {
                    f2 /= 2.0f;
                    density2 /= 2.0f;
                }
                density = density2;
                f3 -= f2;
            } else {
                return Math.min(f4, 1.0f);
            }
        }
    }

    public float sample(Random random) {
        return Math.max(Math.min((((float) (Math.sqrt(Math.log(random.nextFloat()) * (-2.0d)) * Math.sin(((double) random.nextFloat()) * 6.283185307179586d))) * this.deviation) + this.average, this.maxValue), this.minValue);
    }

    public String toString() {
        return "Average: " + this.average + "\nVariance: " + this.variance + "\nDeviation: " + this.deviation + "\nSample count: " + this.sampleCount + "\nMin value: " + this.minValue + "\nMax value: " + this.maxValue;
    }
}
