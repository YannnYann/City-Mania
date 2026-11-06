package com.badlogic.gdx.utils;

/* JADX INFO: loaded from: classes.dex */
public class BooleanArray {
    public boolean[] items;
    public boolean ordered;
    public int size;

    public BooleanArray() {
        this(true, 16);
    }

    public BooleanArray(boolean z, int i) {
        this.ordered = z;
        this.items = new boolean[i];
    }

    public void add(boolean z) {
        boolean[] zArrResize = this.items;
        int i = this.size;
        if (i == zArrResize.length) {
            zArrResize = resize(Math.max(8, (int) (i * 1.75f)));
        }
        int i2 = this.size;
        this.size = i2 + 1;
        zArrResize[i2] = z;
    }

    public boolean[] resize(int i) {
        boolean[] zArr = new boolean[i];
        System.arraycopy(this.items, 0, zArr, 0, Math.min(this.size, i));
        this.items = zArr;
        return zArr;
    }

    public boolean[] toArray() {
        int i = this.size;
        boolean[] zArr = new boolean[i];
        System.arraycopy(this.items, 0, zArr, 0, i);
        return zArr;
    }

    public int hashCode() {
        if (!this.ordered) {
            return super.hashCode();
        }
        boolean[] zArr = this.items;
        int i = this.size;
        int i2 = 1;
        for (int i3 = 0; i3 < i; i3++) {
            i2 = (i2 * 31) + (zArr[i3] ? 1231 : 1237);
        }
        return i2;
    }

    public boolean equals(Object obj) {
        int i;
        if (obj == this) {
            return true;
        }
        if (!this.ordered || !(obj instanceof BooleanArray)) {
            return false;
        }
        BooleanArray booleanArray = (BooleanArray) obj;
        if (!booleanArray.ordered || (i = this.size) != booleanArray.size) {
            return false;
        }
        boolean[] zArr = this.items;
        boolean[] zArr2 = booleanArray.items;
        for (int i2 = 0; i2 < i; i2++) {
            if (zArr[i2] != zArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        if (this.size == 0) {
            return "[]";
        }
        boolean[] zArr = this.items;
        StringBuilder sb = new StringBuilder(32);
        sb.append('[');
        sb.append(zArr[0]);
        for (int i = 1; i < this.size; i++) {
            sb.append(", ");
            sb.append(zArr[i]);
        }
        sb.append(']');
        return sb.toString();
    }
}
