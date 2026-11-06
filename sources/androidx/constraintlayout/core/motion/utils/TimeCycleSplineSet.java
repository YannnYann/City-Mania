package androidx.constraintlayout.core.motion.utils;

import com.ironsource.C3522b4;
import java.lang.reflect.Array;
import java.text.DecimalFormat;

/* JADX INFO: loaded from: classes.dex */
public abstract class TimeCycleSplineSet {
    public int mCount;
    public CurveFit mCurveFit;
    public long mLastTime;
    public String mType;
    public int mWaveShape = 0;
    public int[] mTimePoints = new int[10];
    public float[][] mValues = (float[][]) Array.newInstance((Class<?>) Float.TYPE, 10, 3);
    public float[] mCache = new float[3];
    public boolean mContinue = false;
    public float mLastCycle = Float.NaN;

    public String toString() {
        String str = this.mType;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i = 0; i < this.mCount; i++) {
            str = str + C3522b4.j.d + this.mTimePoints[i] + " , " + decimalFormat.format(this.mValues[i]) + "] ";
        }
        return str;
    }
}
