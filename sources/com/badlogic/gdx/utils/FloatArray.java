package com.badlogic.gdx.utils;

/* JADX INFO: loaded from: classes.dex */
public class FloatArray {
    public float[] items;
    public boolean ordered;
    public int size;

    public FloatArray() {
        this(true, 16);
    }

    public FloatArray(boolean z, int i) {
        this.ordered = z;
        this.items = new float[i];
    }

    public void add(float f) {
        float[] fArrResize = this.items;
        int i = this.size;
        if (i == fArrResize.length) {
            fArrResize = resize(Math.max(8, (int) (i * 1.75f)));
        }
        int i2 = this.size;
        this.size = i2 + 1;
        fArrResize[i2] = f;
    }

    public void add(float f, float f2) {
        float[] fArrResize = this.items;
        int i = this.size;
        if (i + 1 >= fArrResize.length) {
            fArrResize = resize(Math.max(8, (int) (i * 1.75f)));
        }
        int i2 = this.size;
        fArrResize[i2] = f;
        fArrResize[i2 + 1] = f2;
        this.size = i2 + 2;
    }

    public void add(float f, float f2, float f3, float f4) {
        float[] fArrResize = this.items;
        int i = this.size;
        if (i + 3 >= fArrResize.length) {
            fArrResize = resize(Math.max(8, (int) (i * 1.8f)));
        }
        int i2 = this.size;
        fArrResize[i2] = f;
        fArrResize[i2 + 1] = f2;
        fArrResize[i2 + 2] = f3;
        fArrResize[i2 + 3] = f4;
        this.size = i2 + 4;
    }

    public float get(int i) {
        if (i >= this.size) {
            throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.size);
        }
        return this.items[i];
    }

    public void clear() {
        this.size = 0;
    }

    public float[] resize(int i) {
        float[] fArr = new float[i];
        System.arraycopy(this.items, 0, fArr, 0, Math.min(this.size, i));
        this.items = fArr;
        return fArr;
    }

    public int hashCode() {
        if (!this.ordered) {
            return super.hashCode();
        }
        float[] fArr = this.items;
        int i = this.size;
        int iFloatToRawIntBits = 1;
        for (int i2 = 0; i2 < i; i2++) {
            iFloatToRawIntBits = (iFloatToRawIntBits * 31) + NumberUtils.floatToRawIntBits(fArr[i2]);
        }
        return iFloatToRawIntBits;
    }

    public boolean equals(Object obj) {
        int i;
        if (obj == this) {
            return true;
        }
        if (!this.ordered || !(obj instanceof FloatArray)) {
            return false;
        }
        FloatArray floatArray = (FloatArray) obj;
        if (!floatArray.ordered || (i = this.size) != floatArray.size) {
            return false;
        }
        float[] fArr = this.items;
        float[] fArr2 = floatArray.items;
        for (int i2 = 0; i2 < i; i2++) {
            if (fArr[i2] != fArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        if (this.size == 0) {
            return "[]";
        }
        float[] fArr = this.items;
        StringBuilder sb = new StringBuilder(32);
        sb.append('[');
        sb.append(fArr[0]);
        for (int i = 1; i < this.size; i++) {
            sb.append(", ");
            sb.append(fArr[i]);
        }
        sb.append(']');
        return sb.toString();
    }
}
