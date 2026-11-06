package info.flowersoft.theotown.util;

import kotlin.math.MathKt__MathJVMKt;

/* JADX INFO: compiled from: QuadTree.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class QuadTree<T> {
    public final int height;
    public final int layers;
    public final Layer<T> root;
    public final int shiftStep;
    public final int width;

    public QuadTree(int i, int i2, int i3) {
        this.width = i;
        this.height = i2;
        this.shiftStep = i3;
        int iCeil = ((((int) Math.ceil(MathKt__MathJVMKt.log2(Math.max(i, i2)))) + i3) - 1) / i3;
        this.layers = iCeil;
        this.root = new Layer<>(i, i2, iCeil * i3, i3);
    }

    public final int getWidth() {
        return this.width;
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getShiftStep() {
        return this.shiftStep;
    }

    public final int getSize() {
        return this.root.getSize();
    }

    public final T get(int i, int i2) {
        return this.root.get(i, i2);
    }

    public final void set(int i, int i2, T t) {
        this.root.set(i, i2, t);
    }

    public final int getDepth(int i, int i2) {
        return this.root.getDepth(i, i2);
    }

    public final void clear() {
        this.root.clear();
    }
}
