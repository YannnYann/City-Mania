package com.google.android.material.carousel;

import androidx.core.math.MathUtils;
import com.ironsource.C3522b4;
import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: loaded from: classes3.dex */
public final class Arrangement {
    public final float cost;
    public final int largeCount;
    public float largeSize;
    public int mediumCount;
    public float mediumSize;
    public final int priority;
    public int smallCount;
    public float smallSize;

    public final float calculateLargeSize(float f, int i, float f2, int i2, int i3) {
        if (i <= 0) {
            f2 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        float f3 = i2 / 2.0f;
        return (f - ((i + f3) * f2)) / (i3 + f3);
    }

    public Arrangement(int i, float f, float f2, float f3, int i2, float f4, int i3, float f5, int i4, float f6) {
        this.priority = i;
        this.smallSize = MathUtils.clamp(f, f2, f3);
        this.smallCount = i2;
        this.mediumSize = f4;
        this.mediumCount = i3;
        this.largeSize = f5;
        this.largeCount = i4;
        fit(f6, f2, f3, f5);
        this.cost = cost(f5);
    }

    public String toString() {
        return "Arrangement [priority=" + this.priority + ", smallCount=" + this.smallCount + ", smallSize=" + this.smallSize + ", mediumCount=" + this.mediumCount + ", mediumSize=" + this.mediumSize + ", largeCount=" + this.largeCount + ", largeSize=" + this.largeSize + ", cost=" + this.cost + C3522b4.j.e;
    }

    public final float getSpace() {
        return (this.largeSize * this.largeCount) + (this.mediumSize * this.mediumCount) + (this.smallSize * this.smallCount);
    }

    public final void fit(float f, float f2, float f3, float f4) {
        float space = f - getSpace();
        int i = this.smallCount;
        if (i > 0 && space > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            float f5 = this.smallSize;
            this.smallSize = f5 + Math.min(space / i, f3 - f5);
        } else if (i > 0 && space < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            float f6 = this.smallSize;
            this.smallSize = f6 + Math.max(space / i, f2 - f6);
        }
        int i2 = this.smallCount;
        float f7 = i2 > 0 ? this.smallSize : 0.0f;
        this.smallSize = f7;
        float fCalculateLargeSize = calculateLargeSize(f, i2, f7, this.mediumCount, this.largeCount);
        this.largeSize = fCalculateLargeSize;
        float f8 = (this.smallSize + fCalculateLargeSize) / 2.0f;
        this.mediumSize = f8;
        int i3 = this.mediumCount;
        if (i3 <= 0 || fCalculateLargeSize == f4) {
            return;
        }
        float f9 = (f4 - fCalculateLargeSize) * this.largeCount;
        float fMin = Math.min(Math.abs(f9), f8 * 0.1f * i3);
        if (f9 > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            this.mediumSize -= fMin / this.mediumCount;
            this.largeSize += fMin / this.largeCount;
        } else {
            this.mediumSize += fMin / this.mediumCount;
            this.largeSize -= fMin / this.largeCount;
        }
    }

    public final boolean isValid() {
        int i = this.largeCount;
        if (i <= 0 || this.smallCount <= 0 || this.mediumCount <= 0) {
            return i <= 0 || this.smallCount <= 0 || this.largeSize > this.smallSize;
        }
        float f = this.largeSize;
        float f2 = this.mediumSize;
        return f > f2 && f2 > this.smallSize;
    }

    public final float cost(float f) {
        if (isValid()) {
            return Math.abs(f - this.largeSize) * this.priority;
        }
        return Float.MAX_VALUE;
    }

    public static Arrangement findLowestCostArrangement(float f, float f2, float f3, float f4, int[] iArr, float f5, int[] iArr2, float f6, int[] iArr3) {
        Arrangement arrangement = null;
        int i = 1;
        for (int i2 : iArr3) {
            int length = iArr2.length;
            int i3 = 0;
            while (i3 < length) {
                int i4 = iArr2[i3];
                int length2 = iArr.length;
                int i5 = 0;
                while (i5 < length2) {
                    int i6 = length;
                    int i7 = i3;
                    int i8 = i;
                    int i9 = length2;
                    int i10 = i5;
                    Arrangement arrangement2 = new Arrangement(i8, f2, f3, f4, iArr[i5], f5, i4, f6, i2, f);
                    if (arrangement == null || arrangement2.cost < arrangement.cost) {
                        if (arrangement2.cost == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                            return arrangement2;
                        }
                        arrangement = arrangement2;
                    }
                    int i11 = i8 + 1;
                    i5 = i10 + 1;
                    i3 = i7;
                    i = i11;
                    length = i6;
                    length2 = i9;
                }
                i3++;
                i = i;
                length = length;
            }
        }
        return arrangement;
    }

    public int getItemCount() {
        return this.smallCount + this.mediumCount + this.largeCount;
    }
}
