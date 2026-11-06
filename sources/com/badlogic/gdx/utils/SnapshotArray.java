package com.badlogic.gdx.utils;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class SnapshotArray<T> extends Array<T> {
    public T[] recycled;
    public T[] snapshot;
    public int snapshots;

    public SnapshotArray(ArraySupplier<T[]> arraySupplier) {
        super(arraySupplier);
    }

    public SnapshotArray(int i) {
        super(i);
    }

    public T[] begin() {
        modified();
        T[] tArr = this.items;
        this.snapshot = tArr;
        this.snapshots++;
        return tArr;
    }

    public void end() {
        int iMax = Math.max(0, this.snapshots - 1);
        this.snapshots = iMax;
        T[] tArr = this.snapshot;
        if (tArr == null) {
            return;
        }
        if (tArr != this.items && iMax == 0) {
            this.recycled = tArr;
            Arrays.fill(tArr, (Object) null);
        }
        this.snapshot = null;
    }

    public final void modified() {
        T[] tArr;
        T[] tArr2 = this.snapshot;
        if (tArr2 == null || tArr2 != (tArr = this.items)) {
            return;
        }
        T[] tArr3 = this.recycled;
        if (tArr3 != null) {
            int length = tArr3.length;
            int i = this.size;
            if (length >= i) {
                System.arraycopy(tArr, 0, tArr3, 0, i);
                this.items = this.recycled;
                this.recycled = null;
                return;
            }
        }
        resize(tArr.length);
    }

    @Override // com.badlogic.gdx.utils.Array
    public boolean removeValue(T t, boolean z) {
        modified();
        return super.removeValue(t, z);
    }

    @Override // com.badlogic.gdx.utils.Array
    public T removeIndex(int i) {
        modified();
        return (T) super.removeIndex(i);
    }

    @Override // com.badlogic.gdx.utils.Array
    public T pop() {
        modified();
        return (T) super.pop();
    }

    @Override // com.badlogic.gdx.utils.Array
    public void clear() {
        modified();
        super.clear();
    }
}
