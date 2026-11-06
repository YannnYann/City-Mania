package androidx.constraintlayout.motion.widget;

import android.view.View;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.widget.ConstraintAttribute;
import com.ironsource.C3522b4;
import com.unity3d.services.UnityAdsConstants;
import java.util.Arrays;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public class MotionPaths implements Comparable<MotionPaths> {
    public static String[] sNames = {C3522b4.i.L, "x", "y", "width", "height", "pathRotate"};
    public int mAnimateRelativeTo;
    public LinkedHashMap<String, ConstraintAttribute> mAttributes;
    public float mHeight;
    public Easing mKeyFrameEasing;
    public int mMode;
    public int mPathMotionArc;
    public float mPosition;
    public float mRelativeAngle;
    public MotionController mRelativeToController;
    public double[] mTempDelta;
    public double[] mTempValue;
    public float mTime;
    public float mWidth;
    public float mX;
    public float mY;
    public int mDrawPath = 0;
    public float mPathRotate = Float.NaN;
    public float mProgress = Float.NaN;

    public MotionPaths() {
        int i = Key.UNSET;
        this.mPathMotionArc = i;
        this.mAnimateRelativeTo = i;
        this.mRelativeAngle = Float.NaN;
        this.mRelativeToController = null;
        this.mAttributes = new LinkedHashMap<>();
        this.mMode = 0;
        this.mTempValue = new double[18];
        this.mTempDelta = new double[18];
    }

    public void getCenter(double d, int[] iArr, double[] dArr, float[] fArr, double[] dArr2, float[] fArr2) {
        float f;
        float fSin = this.mX;
        float fCos = this.mY;
        float f2 = this.mWidth;
        float f3 = this.mHeight;
        float f4 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        float f5 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        float f6 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        float f7 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        for (int i = 0; i < iArr.length; i++) {
            float f8 = (float) dArr[i];
            float f9 = (float) dArr2[i];
            int i2 = iArr[i];
            if (i2 == 1) {
                fSin = f8;
                f4 = f9;
            } else if (i2 == 2) {
                fCos = f8;
                f6 = f9;
            } else if (i2 == 3) {
                f2 = f8;
                f5 = f9;
            } else if (i2 == 4) {
                f3 = f8;
                f7 = f9;
            }
        }
        float f10 = (f5 / 2.0f) + f4;
        float fCos2 = (f7 / 2.0f) + f6;
        MotionController motionController = this.mRelativeToController;
        if (motionController != null) {
            float[] fArr3 = new float[2];
            float[] fArr4 = new float[2];
            motionController.getCenter(d, fArr3, fArr4);
            float f11 = fArr3[0];
            float f12 = fArr3[1];
            float f13 = fArr4[0];
            float f14 = fArr4[1];
            f = 2.0f;
            double d2 = fSin;
            double d3 = fCos;
            fSin = (float) ((((double) f11) + (Math.sin(d3) * d2)) - ((double) (f2 / 2.0f)));
            fCos = (float) ((((double) f12) - (Math.cos(d3) * d2)) - ((double) (f3 / 2.0f)));
            double d4 = f4;
            double dSin = ((double) f13) + (Math.sin(d3) * d4);
            double d5 = f6;
            float fCos3 = (float) (dSin + (Math.cos(d3) * d5));
            fCos2 = (float) ((((double) f14) - (d4 * Math.cos(d3))) + (Math.sin(d3) * d5));
            f10 = fCos3;
        } else {
            f = 2.0f;
        }
        fArr[0] = fSin + (f2 / f) + UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        fArr[1] = fCos + (f3 / f) + UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        fArr2[0] = f10;
        fArr2[1] = fCos2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setView(float f, View view, int[] iArr, double[] dArr, double[] dArr2, double[] dArr3, boolean z) {
        float f2;
        float fSin = this.mX;
        float fCos = this.mY;
        float f3 = this.mWidth;
        float f4 = this.mHeight;
        if (iArr.length != 0 && this.mTempValue.length <= iArr[iArr.length - 1]) {
            int i = iArr[iArr.length - 1] + 1;
            this.mTempValue = new double[i];
            this.mTempDelta = new double[i];
        }
        Arrays.fill(this.mTempValue, Double.NaN);
        for (int i2 = 0; i2 < iArr.length; i2++) {
            double[] dArr4 = this.mTempValue;
            int i3 = iArr[i2];
            dArr4[i3] = dArr[i2];
            this.mTempDelta[i3] = dArr2[i2];
        }
        float f5 = Float.NaN;
        int i4 = 0;
        float f6 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        float f7 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        float f8 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        float f9 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        while (true) {
            double[] dArr5 = this.mTempValue;
            if (i4 >= dArr5.length) {
                break;
            }
            if (Double.isNaN(dArr5[i4]) && (dArr3 == null || dArr3[i4] == 0.0d)) {
                f2 = f5;
            } else {
                double d = dArr3 != null ? dArr3[i4] : 0.0d;
                if (!Double.isNaN(this.mTempValue[i4])) {
                    d = this.mTempValue[i4] + d;
                }
                f2 = f5;
                float f10 = (float) d;
                float f11 = (float) this.mTempDelta[i4];
                if (i4 == 1) {
                    f5 = f2;
                    f6 = f11;
                    fSin = f10;
                } else if (i4 == 2) {
                    f5 = f2;
                    f7 = f11;
                    fCos = f10;
                } else if (i4 == 3) {
                    f5 = f2;
                    f8 = f11;
                    f3 = f10;
                } else if (i4 == 4) {
                    f5 = f2;
                    f9 = f11;
                    f4 = f10;
                } else if (i4 == 5) {
                    f5 = f10;
                }
                i4++;
            }
            f5 = f2;
            i4++;
        }
        float f12 = f5;
        MotionController motionController = this.mRelativeToController;
        if (motionController != null) {
            float[] fArr = new float[2];
            float[] fArr2 = new float[2];
            motionController.getCenter(f, fArr, fArr2);
            float f13 = fArr[0];
            float f14 = fArr[1];
            float f15 = fArr2[0];
            float f16 = fArr2[1];
            double d2 = f13;
            double d3 = fSin;
            double d4 = fCos;
            fSin = (float) ((d2 + (Math.sin(d4) * d3)) - ((double) (f3 / 2.0f)));
            fCos = (float) ((((double) f14) - (Math.cos(d4) * d3)) - ((double) (f4 / 2.0f)));
            double d5 = f15;
            double d6 = f6;
            double dSin = d5 + (Math.sin(d4) * d6);
            double dCos = Math.cos(d4) * d3;
            double d7 = f7;
            float f17 = (float) (dSin + (dCos * d7));
            float fCos2 = (float) ((((double) f16) - (d6 * Math.cos(d4))) + (Math.sin(d4) * d3 * d7));
            if (dArr2.length >= 2) {
                dArr2[0] = f17;
                dArr2[1] = fCos2;
            }
            if (!Float.isNaN(f12)) {
                view.setRotation((float) (((double) f12) + Math.toDegrees(Math.atan2(fCos2, f17))));
            }
        } else if (!Float.isNaN(f12)) {
            view.setRotation(f12 + ((float) Math.toDegrees(Math.atan2(f7 + (f9 / 2.0f), f6 + (f8 / 2.0f)))) + UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        }
        if (view instanceof FloatLayout) {
            ((FloatLayout) view).layout(fSin, fCos, f3 + fSin, f4 + fCos);
            return;
        }
        float f18 = fSin + 0.5f;
        int i5 = (int) f18;
        float f19 = fCos + 0.5f;
        int i6 = (int) f19;
        int i7 = (int) (f18 + f3);
        int i8 = (int) (f19 + f4);
        int i9 = i7 - i5;
        int i10 = i8 - i6;
        if (i9 != view.getMeasuredWidth() || i10 != view.getMeasuredHeight() || z) {
            view.measure(View.MeasureSpec.makeMeasureSpec(i9, 1073741824), View.MeasureSpec.makeMeasureSpec(i10, 1073741824));
        }
        view.layout(i5, i6, i7, i8);
    }

    @Override // java.lang.Comparable
    public int compareTo(MotionPaths motionPaths) {
        return Float.compare(this.mPosition, motionPaths.mPosition);
    }
}
