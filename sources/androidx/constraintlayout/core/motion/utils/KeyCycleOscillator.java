package androidx.constraintlayout.core.motion.utils;

import com.ironsource.C3522b4;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class KeyCycleOscillator {
    public CycleOscillator mCycleOscillator;
    public String mType;
    public int mWaveShape = 0;
    public String mWaveString = null;
    public int mVariesBy = 0;
    public ArrayList<WavePoint> mWavePoints = new ArrayList<>();

    public static class CycleOscillator {
        public double getValues(float f) {
            throw null;
        }
    }

    public static class WavePoint {
        public int mPosition;
        public float mValue;
    }

    public String toString() {
        String str = this.mType;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        Iterator<WavePoint> it = this.mWavePoints.iterator();
        while (it.hasNext()) {
            str = str + C3522b4.j.d + it.next().mPosition + " , " + decimalFormat.format(r3.mValue) + "] ";
        }
        return str;
    }

    public float get(float f) {
        return (float) this.mCycleOscillator.getValues(f);
    }
}
