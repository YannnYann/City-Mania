package info.flowersoft.theotown.util;

import com.badlogic.gdx.math.MathUtils;
import kotlin.collections.ArraysKt___ArraysJvmKt;

/* JADX INFO: compiled from: QuadTree.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class Layer<T> {
    public final int gridHeight;
    public final int gridWidth;
    public final int indexMask;
    public final int shift;
    public final int shiftStep;
    public int size;
    public final Object[] values;

    public Layer(int i, int i2, int i3, int i4) {
        this.shift = i3;
        this.shiftStep = i4;
        int iMax = Math.max(MathUtils.nextPowerOfTwo(i) >> i3, 1);
        this.gridWidth = iMax;
        int iMax2 = Math.max(MathUtils.nextPowerOfTwo(i2) >> i3, 1);
        this.gridHeight = iMax2;
        this.indexMask = (1 << i3) - 1;
        int i5 = iMax * iMax2;
        Object[] objArr = new Object[i5];
        for (int i6 = 0; i6 < i5; i6++) {
            objArr[i6] = null;
        }
        this.values = objArr;
    }

    public final int getShift() {
        return this.shift;
    }

    public final int getShiftStep() {
        return this.shiftStep;
    }

    public final int index(int i, int i2) {
        return i + (i2 * this.gridWidth);
    }

    public final int getSize() {
        return this.size;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final T get(int i, int i2) {
        Object[] objArr = this.values;
        int i3 = this.shift;
        T t = (T) objArr[index(i >> i3, i2 >> i3)];
        if (t == 0) {
            return null;
        }
        if (this.shift == 0) {
            return t;
        }
        int i4 = this.indexMask;
        return (T) ((Layer) t).get(i & i4, i2 & i4);
    }

    public final int getDepth(int i, int i2) {
        Object[] objArr = this.values;
        int i3 = this.shift;
        Object obj = objArr[index(i >> i3, i2 >> i3)];
        if (obj == null) {
            return 0;
        }
        if (this.shift == 0) {
            return 1;
        }
        int i4 = this.indexMask;
        return ((Layer) obj).getDepth(i & i4, i2 & i4) + 1;
    }

    public final void set(int i, int i2, T t) {
        int i3 = this.shift;
        int iIndex = index(i >> i3, i2 >> i3);
        int i4 = this.shift;
        if (i4 == 0) {
            Object[] objArr = this.values;
            if ((objArr[iIndex] == null) != (t == null)) {
                if (t == null) {
                    this.size--;
                } else {
                    this.size++;
                }
            }
            objArr[iIndex] = t;
            return;
        }
        Layer layer = (Layer) this.values[iIndex];
        if (layer == null) {
            if (t == null) {
                return;
            }
            layer = new Layer(1 << i4, 1 << i4, Math.max(i4 - this.shiftStep, 0), this.shiftStep);
            this.values[iIndex] = layer;
        }
        this.size -= layer.size;
        int i5 = this.indexMask;
        layer.set(i & i5, i2 & i5, t);
        this.size += layer.size;
        if (layer.size == 0) {
            this.values[iIndex] = null;
        }
    }

    public final void clear() {
        ArraysKt___ArraysJvmKt.fill$default(this.values, null, 0, 0, 6, null);
        this.size = 0;
    }
}
