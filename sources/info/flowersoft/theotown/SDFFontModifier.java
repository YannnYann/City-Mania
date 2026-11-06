package info.flowersoft.theotown;

import com.badlogic.gdx.graphics.Pixmap;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.drawing.FontFactory;
import java.nio.IntBuffer;

/* JADX INFO: loaded from: classes4.dex */
public class SDFFontModifier implements FontFactory.GlyphModifier {
    public static final float sqrt2 = (float) Math.sqrt(2.0d);
    public float[] distancesSqr = null;
    public float[] nearestX = null;
    public float[] nearestY = null;
    public final int radius;

    public static float distanceSqr(float f, float f2, float f3, float f4) {
        float f5 = f3 - f;
        float f6 = f4 - f2;
        return (f5 * f5) + (f6 * f6);
    }

    public SDFFontModifier(int i) {
        this.radius = i;
    }

    @Override // info.flowersoft.theotown.drawing.FontFactory.GlyphModifier
    public int getPadding() {
        return this.radius;
    }

    @Override // info.flowersoft.theotown.drawing.FontFactory.GlyphModifier
    public void modify(int i, Pixmap pixmap, Pixmap pixmap2) {
        int width = pixmap2.getWidth();
        int height = pixmap2.getHeight();
        pixmap2.setBlending(Pixmap.Blending.None);
        int i2 = this.radius;
        pixmap2.drawPixmap(pixmap, i2, i2);
        IntBuffer intBufferAsIntBuffer = pixmap2.getPixels().asIntBuffer();
        prepareBuffers(width, height);
        fillBuffers(width, height, intBufferAsIntBuffer);
        sweepAndUpdate(width, height);
        applyBuffers(width, height, intBufferAsIntBuffer);
    }

    public final void prepareBuffers(int i, int i2) {
        float[] fArr = this.distancesSqr;
        if (fArr == null || fArr.length < i * i2) {
            int i3 = ((i * 3) * i2) / 2;
            this.distancesSqr = new float[i3];
            this.nearestX = new float[i3];
            this.nearestY = new float[i3];
        }
        for (int i4 = 0; i4 < i * i2; i4++) {
            this.distancesSqr[i4] = Float.MAX_VALUE;
            this.nearestX[i4] = 0.0f;
            this.nearestY[i4] = 0.0f;
        }
    }

    public final void fillBuffers(int i, int i2, IntBuffer intBuffer) {
        for (int i3 = 1; i3 < i2 - 1; i3++) {
            for (int i4 = 1; i4 < i - 1; i4++) {
                int i5 = (i3 * i) + i4;
                int i6 = intBuffer.get(i5) & 255;
                if (i6 != 255) {
                    int i7 = i5 - i;
                    int i8 = intBuffer.get(i7 - 1) & 255;
                    int i9 = intBuffer.get(i7) & 255;
                    int i10 = intBuffer.get(i7 + 1) & 255;
                    int i11 = intBuffer.get(i5 - 1) & 255;
                    int i12 = intBuffer.get(i5 + 1) & 255;
                    int i13 = i5 + i;
                    int i14 = intBuffer.get(i13 - 1) & 255;
                    int i15 = intBuffer.get(i13) & 255;
                    int i16 = intBuffer.get(i13 + 1) & 255;
                    if (i6 != 0 || i9 == 255 || i11 == 255 || i12 == 255 || i15 == 255) {
                        float f = i10;
                        float f2 = sqrt2;
                        float f3 = i16;
                        float f4 = i8;
                        float f5 = ((((i12 * f2) + f) + f3) - f4) - (i11 * f2);
                        float f6 = i14;
                        float f7 = f5 - f6;
                        float f8 = ((((f6 + (i15 * f2)) + f3) - f4) - (f2 * i9)) - f;
                        if (Math.abs(f7) >= 0.001f || Math.abs(f8) >= 0.001f) {
                            float fSqrt = 1.0f / ((float) Math.sqrt((f7 * f7) + (f8 * f8)));
                            float f9 = f7 * fSqrt;
                            float f10 = f8 * fSqrt;
                            float fEdgeDF = edgeDF(f9, f10, i6 / 255.0f);
                            float[] fArr = this.nearestX;
                            float f11 = i4;
                            fArr[i5] = (f9 * fEdgeDF) + f11;
                            float f12 = i3;
                            float f13 = (f10 * fEdgeDF) + f12;
                            this.nearestY[i5] = f13;
                            this.distancesSqr[i5] = distanceSqr(f11, f12, fArr[i5], f13);
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x011c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void sweepAndUpdate(int r18, int r19) {
        /*
            Method dump skipped, instruction units count: 441
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.SDFFontModifier.sweepAndUpdate(int, int):void");
    }

    public final void applyBuffers(int i, int i2, IntBuffer intBuffer) {
        float f = 1.0f / this.radius;
        for (int i3 = 0; i3 < i2; i3++) {
            for (int i4 = 0; i4 < i; i4++) {
                int i5 = (i3 * i) + i4;
                float fSqrt = ((float) Math.sqrt(this.distancesSqr[i5])) * f;
                if ((intBuffer.get(i5) & 255) > 127) {
                    fSqrt = -fSqrt;
                }
                intBuffer.put(i5, ((int) (Math.min(Math.max(0.5f - (fSqrt * 0.5f), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT), 1.0f) * 255.0f)) | (-256));
            }
        }
    }

    public static float edgeDF(float f, float f2, float f3) {
        if (f * f2 == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            return 0.5f - f3;
        }
        float fAbs = Math.abs(f);
        float fAbs2 = Math.abs(f2);
        if (fAbs >= fAbs2) {
            fAbs2 = fAbs;
            fAbs = fAbs2;
        }
        float f4 = (fAbs * 0.5f) / fAbs2;
        if (f3 < f4) {
            return ((fAbs2 + fAbs) * 0.5f) - ((float) Math.sqrt(((fAbs2 * 2.0f) * fAbs) * f3));
        }
        return ((double) f3) < 1.0d - ((double) f4) ? (0.5f - f3) * fAbs2 : ((fAbs2 + fAbs) * (-0.5f)) + ((float) Math.sqrt(fAbs2 * 2.0f * fAbs * (1.0f - f3)));
    }
}
