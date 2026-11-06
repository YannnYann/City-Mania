package io.blueflower.stapel2d.util;

/* JADX INFO: loaded from: classes5.dex */
public final class MinimumSelector<T> {
    public int assumptionCount;
    public float minValue;
    public T selectedItem;

    public MinimumSelector() {
        clear();
    }

    public void clear() {
        this.selectedItem = null;
        this.minValue = Float.MAX_VALUE;
        this.assumptionCount = 0;
    }

    public boolean assume(T t, float f) {
        if (t == null) {
            throw new IllegalArgumentException("Item may not be null!");
        }
        this.assumptionCount++;
        if (f >= this.minValue) {
            return false;
        }
        this.minValue = f;
        this.selectedItem = t;
        return true;
    }

    public T getMinimum() {
        T t = this.selectedItem;
        if (t != null) {
            return t;
        }
        throw new IllegalStateException("No item assumed!");
    }

    public float getMinimumValue() {
        return this.minValue;
    }

    public boolean hasResult() {
        return this.selectedItem != null;
    }
}
