package io.blueflower.stapel2d.util;

import com.unity3d.services.UnityAdsConstants;
import java.util.Arrays;
import java.util.Random;

/* JADX INFO: loaded from: classes5.dex */
public final class ProbabilitySelector<T> {
    public final float[] negProb;
    public final int[] objCount;
    public final float[] probSum;
    public final Random random;
    public final T[] selected;
    public final float[] selectedProb;

    public ProbabilitySelector() {
        this(new Random());
    }

    public ProbabilitySelector(Random random) {
        this(random, 1);
    }

    public ProbabilitySelector(Random random, int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("depth must be >= 1");
        }
        this.random = random;
        this.probSum = new float[i];
        this.negProb = new float[i];
        this.objCount = new int[i];
        this.selected = (T[]) new Object[i];
        this.selectedProb = new float[i];
        clear();
    }

    public void insert(T t, float f) {
        if (f <= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            return;
        }
        insert(t, f, this.random.nextFloat());
    }

    public void insert(T t, float f, float f2) {
        insert(t, f, f2, 0);
    }

    public final void insert(T t, float f, float f2, int i) {
        while (f > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            float[] fArr = this.probSum;
            if (i >= fArr.length) {
                return;
            }
            fArr[i] = fArr[i] + f;
            float[] fArr2 = this.negProb;
            fArr2[i] = fArr2[i] * (1.0f - Math.min(f, 1.0f));
            int[] iArr = this.objCount;
            iArr[i] = iArr[i] + 1;
            if (f2 * this.probSum[i] <= f) {
                T[] tArr = this.selected;
                T t2 = tArr[i];
                float[] fArr3 = this.selectedProb;
                float f3 = fArr3[i];
                tArr[i] = t;
                fArr3[i] = f;
                if (f3 <= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                    return;
                }
                t = t2;
                f = f3;
            }
            f2 = this.random.nextFloat();
            i++;
        }
    }

    public T clear() {
        T result = getResult();
        Arrays.fill(this.probSum, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        Arrays.fill(this.negProb, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        Arrays.fill(this.selected, (Object) null);
        Arrays.fill(this.selectedProb, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        Arrays.fill(this.objCount, 0);
        return result;
    }

    public int size() {
        return this.objCount[0];
    }

    public float getProbabilitySum() {
        return this.probSum[0];
    }

    public boolean hasResult() {
        return this.objCount[0] > 0;
    }

    public boolean hasResult(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Index may not be nagative but is " + i);
        }
        if (i < this.probSum.length) {
            return this.objCount[i] > 0;
        }
        throw new IllegalArgumentException("Tried to access index " + i + " on selector of depth " + getDepth());
    }

    public int getResultCount() {
        if (!hasResult()) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < this.probSum.length && this.objCount[i2] != 0; i2++) {
            i++;
        }
        return i;
    }

    public int getDepth() {
        return this.probSum.length;
    }

    public T getResult() {
        return this.selected[0];
    }

    public T getResult(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Index may not be nagative but is " + i);
        }
        if (i >= this.probSum.length) {
            throw new IllegalArgumentException("Tried to access index " + i + " on selector of depth " + getDepth());
        }
        return this.selected[i];
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Probability selector selected ");
        sb.append(hasResult() ? getResult().toString() : "NOTHING");
        sb.append(" out of ");
        sb.append(this.objCount);
        sb.append(" objects. Probability sum is ");
        sb.append(this.probSum);
        return sb.toString();
    }
}
