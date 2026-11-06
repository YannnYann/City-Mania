package androidx.constraintlayout.core.motion.utils;

import com.ironsource.C3522b4;
import java.text.DecimalFormat;

/* JADX INFO: loaded from: classes.dex */
public abstract class SplineSet {
    public int mCount;
    public CurveFit mCurveFit;
    public String mType;
    public int[] mTimePoints = new int[10];
    public float[] mValues = new float[10];

    public String toString() {
        String str = this.mType;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i = 0; i < this.mCount; i++) {
            str = str + C3522b4.j.d + this.mTimePoints[i] + " , " + decimalFormat.format(this.mValues[i]) + "] ";
        }
        return str;
    }

    public float get(float f) {
        return (float) this.mCurveFit.getPos(f, 0);
    }
}
