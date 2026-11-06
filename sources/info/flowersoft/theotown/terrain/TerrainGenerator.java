package info.flowersoft.theotown.terrain;

import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TerrainGenerator {
    public final float[] data;
    public final int height;
    public final int width;

    public abstract void generate(Random random);

    public TerrainGenerator(int i, int i2) {
        this.width = i;
        this.height = i2;
        this.data = new float[i * i2];
    }

    public final float getValue(int i, int i2) {
        return this.data[i + (i2 * this.width)];
    }

    public final float[] getValues() {
        return this.data;
    }

    public final int getWidth() {
        return this.width;
    }

    public final int getHeight() {
        return this.height;
    }

    public final void setValue(int i, int i2, float f) {
        this.data[i + (i2 * this.width)] = f;
    }

    public float getMinValue() {
        float fMin = this.data[0];
        for (int i = 0; i < this.height; i++) {
            int i2 = 0;
            while (true) {
                int i3 = this.width;
                if (i2 < i3) {
                    fMin = Math.min(fMin, this.data[(i3 * i) + i2]);
                    i2++;
                }
            }
        }
        return fMin;
    }

    public float getMaxValue() {
        float fMax = this.data[0];
        for (int i = 0; i < this.height; i++) {
            int i2 = 0;
            while (true) {
                int i3 = this.width;
                if (i2 < i3) {
                    fMax = Math.max(fMax, this.data[(i3 * i) + i2]);
                    i2++;
                }
            }
        }
        return fMax;
    }

    public void normalize() {
        float minValue = getMinValue();
        float maxValue = getMaxValue();
        for (int i = 0; i < this.height; i++) {
            int i2 = 0;
            while (true) {
                int i3 = this.width;
                if (i2 < i3) {
                    float[] fArr = this.data;
                    fArr[(i * i3) + i2] = (fArr[(i3 * i) + i2] - minValue) / (maxValue - minValue);
                    i2++;
                }
            }
        }
    }

    public void add(float f) {
        for (int i = 0; i < this.height; i++) {
            int i2 = 0;
            while (true) {
                int i3 = this.width;
                if (i2 < i3) {
                    float[] fArr = this.data;
                    int i4 = (i3 * i) + i2;
                    fArr[i4] = fArr[i4] + f;
                    i2++;
                }
            }
        }
    }

    public void multiply(float f) {
        for (int i = 0; i < this.height; i++) {
            int i2 = 0;
            while (true) {
                int i3 = this.width;
                if (i2 < i3) {
                    float[] fArr = this.data;
                    int i4 = (i3 * i) + i2;
                    fArr[i4] = fArr[i4] * f;
                    i2++;
                }
            }
        }
    }

    public float getNiveau(float f, float f2) {
        float minValue = getMinValue();
        float maxValue = getMaxValue();
        float f3 = maxValue + minValue;
        while (true) {
            float f4 = f3 / 2.0f;
            if (f4 - minValue <= f2) {
                return f4;
            }
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i >= this.height) {
                    break;
                }
                int i3 = 0;
                while (true) {
                    int i4 = this.width;
                    if (i3 < i4) {
                        if (this.data[(i4 * i) + i3] < f4) {
                            i2++;
                        }
                        i3++;
                    }
                }
                i++;
            }
            if (i2 / (this.width * r7) > f) {
                maxValue = f4;
            } else {
                minValue = f4;
            }
            f3 = maxValue + minValue;
        }
    }
}
