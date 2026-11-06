package info.flowersoft.theotown.terrain;

import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public final class DiamondSquareTerrainGenerator extends TerrainGenerator {
    public float[] cornerValues;
    public float noiseFactor;
    public final int[] xys;

    public DiamondSquareTerrainGenerator(int i, int i2) {
        super(i, i2);
        this.xys = new int[8];
        this.noiseFactor = 0.5f;
    }

    public void setCornerValues(float[] fArr) {
        this.cornerValues = fArr;
    }

    @Override // info.flowersoft.theotown.terrain.TerrainGenerator
    public void generate(Random random) {
        int i;
        int i2 = 1;
        while (true) {
            i = i2 + 1;
            if (i >= Math.max(getWidth(), getHeight())) {
                break;
            } else {
                i2 *= 2;
            }
        }
        float[] fArr = new float[i * i];
        float[] fArr2 = this.cornerValues;
        if (fArr2 == null) {
            fArr2 = new float[]{random.nextFloat(), random.nextFloat(), random.nextFloat(), random.nextFloat()};
        }
        fArr[0] = fArr2[0];
        fArr[i2] = fArr2[1];
        int i3 = i2 * i;
        fArr[i3] = fArr2[2];
        fArr[i3 + i2] = fArr2[3];
        int i4 = i2;
        float f = this.noiseFactor;
        while (i4 >= 1) {
            for (int i5 = 0; i5 + 1 < i; i5 += i4) {
                for (int i6 = 0; i6 + 1 < i; i6 += i4) {
                    int i7 = i4 / 2;
                    fArr[i6 + i7 + ((i7 + i5) * i)] = getDiamondAverage(i6, i5, i4, fArr, i, i) + ((1.0f - (random.nextFloat() * 2.0f)) * f);
                }
            }
            for (int i8 = 0; i8 + 1 < i; i8 += i4) {
                for (int i9 = 0; i9 < i; i9 += i4) {
                    int i10 = i4 / 2;
                    fArr[i9 + ((i8 + i10) * i)] = getSquareAverage(i9 - i10, i8, i4, fArr, i, i) + ((1.0f - (random.nextFloat() * 2.0f)) * f);
                }
            }
            for (int i11 = 0; i11 < i; i11 += i4) {
                for (int i12 = 0; i12 + 1 < i; i12 += i4) {
                    int i13 = i4 / 2;
                    fArr[i12 + i13 + (i11 * i)] = getSquareAverage(i12, i11 - i13, i4, fArr, i, i) + ((1.0f - (random.nextFloat() * 2.0f)) * f);
                }
            }
            i4 /= 2;
            f *= this.noiseFactor;
        }
        for (int i14 = 0; i14 < getHeight(); i14++) {
            for (int i15 = 0; i15 < getWidth(); i15++) {
                setValue(i15, i14, fArr[(i14 * i) + i15]);
            }
        }
    }

    public final float getDiamondAverage(int i, int i2, int i3, float[] fArr, int i4, int i5) {
        int[] iArr = this.xys;
        iArr[0] = i;
        iArr[1] = i2;
        int i6 = i + i3;
        iArr[2] = i6;
        iArr[3] = i2;
        iArr[4] = i;
        int i7 = i2 + i3;
        iArr[5] = i7;
        iArr[6] = i6;
        iArr[7] = i7;
        return getAverage(fArr, i4, i5);
    }

    public final float getSquareAverage(int i, int i2, int i3, float[] fArr, int i4, int i5) {
        int i6 = i3 / 2;
        int[] iArr = this.xys;
        int i7 = i + i6;
        iArr[0] = i7;
        iArr[1] = i2;
        iArr[2] = i;
        int i8 = i6 + i2;
        iArr[3] = i8;
        iArr[4] = i + i3;
        iArr[5] = i8;
        iArr[6] = i7;
        iArr[7] = i2 + i3;
        return getAverage(fArr, i4, i5);
    }

    public final float getAverage(float[] fArr, int i, int i2) {
        float f = 0.0f;
        int i3 = 0;
        for (int i4 = 0; i4 < 8; i4 += 2) {
            int[] iArr = this.xys;
            int i5 = iArr[i4];
            int i6 = iArr[i4 + 1];
            if (i5 >= 0 && i6 >= 0 && i5 < i && i6 < i2) {
                f += fArr[i5 + (i6 * i)];
                i3++;
            }
        }
        return f / i3;
    }
}
