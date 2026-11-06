package io.blueflower.stapel2d.util;

import java.util.Arrays;
import java.util.Random;

/* JADX INFO: loaded from: classes5.dex */
public final class IntList implements Cloneable {
    public static IntList EMPTY_LIST = new IntList(0);
    public static final Random random = new Random();
    public int[] data;
    public int size;

    public interface IntConsumer {
        void accept(int i);
    }

    public IntList(int i) {
        this.data = new int[i];
        this.size = 0;
    }

    public IntList() {
        this(16);
    }

    public IntList(int[] iArr) {
        this.data = iArr;
        this.size = iArr.length;
    }

    public IntList(IntList intList) {
        int size = intList.size();
        this.size = size;
        int[] iArr = new int[Math.max(size, 16)];
        this.data = iArr;
        System.arraycopy(intList.data, 0, iArr, 0, intList.size());
    }

    public void add(int i) {
        if (this.size >= this.data.length) {
            increaseCapacity();
        }
        int[] iArr = this.data;
        int i2 = this.size;
        iArr[i2] = i;
        this.size = i2 + 1;
    }

    public void add(int[] iArr) {
        add(iArr, 0, iArr.length);
    }

    public void add(int[] iArr, int i, int i2) {
        int i3 = this.size;
        if ((i3 + i2) - i > this.data.length) {
            increaseCapacity((i3 + i2) - i);
        }
        int i4 = i2 - i;
        System.arraycopy(iArr, i, this.data, this.size, i4);
        this.size += i4;
    }

    public void set(int i, int i2) {
        this.data[i] = i2;
    }

    public int size() {
        return this.size;
    }

    public int get(int i) {
        return this.data[i];
    }

    public int last(int i) {
        int i2 = this.size;
        return i2 == 0 ? i : this.data[i2 - 1];
    }

    public int indexOf(int i) {
        return indexOf(i, 0);
    }

    public int indexOf(int i, int i2) {
        while (i2 < this.size) {
            if (this.data[i2] == i) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public boolean contains(int i) {
        for (int i2 = 0; i2 < this.size; i2++) {
            if (this.data[i2] == i) {
                return true;
            }
        }
        return false;
    }

    public int removeAt(int i) {
        int[] iArr = this.data;
        int i2 = iArr[i];
        int i3 = i + 1;
        int i4 = this.size;
        if (i3 < i4) {
            System.arraycopy(iArr, i3, iArr, i, (i4 - 1) - i);
        }
        int i5 = this.size - 1;
        this.size = i5;
        if (i5 <= this.data.length / 4 && i5 > 32) {
            reduce();
        }
        return i2;
    }

    public int removeAt(int i, int i2) {
        int[] iArr = this.data;
        int i3 = iArr[i];
        int i4 = i + i2;
        int i5 = this.size;
        if (i4 < i5) {
            System.arraycopy(iArr, i4, iArr, i, (i5 - i2) - i);
        }
        int i6 = this.size - i2;
        this.size = i6;
        if (i6 <= this.data.length / 4 && i6 > 32) {
            reduce();
        }
        return i3;
    }

    public int removeLast(int i) {
        int i2 = this.size;
        return i2 == 0 ? i : removeAt(i2 - 1);
    }

    public boolean removeValue(int i) {
        int iIndexOf = indexOf(i);
        if (iIndexOf < 0) {
            return false;
        }
        removeAt(iIndexOf);
        return true;
    }

    public void clear() {
        this.size = 0;
    }

    public void clearAndRelease() {
        this.size = 0;
        this.data = new int[0];
    }

    public int[] reduce() {
        int i = this.size;
        int[] iArr = this.data;
        if (i < iArr.length) {
            this.data = Arrays.copyOf(iArr, i);
        }
        return this.data;
    }

    public int[] toArray() {
        int i = this.size;
        int[] iArr = new int[i];
        System.arraycopy(this.data, 0, iArr, 0, i);
        return iArr;
    }

    public void reverse() {
        reverse(0, this.size);
    }

    public void reverse(int i, int i2) {
        int i3 = i2 - i;
        for (int i4 = 0; i4 < i3 / 2; i4++) {
            int[] iArr = this.data;
            int i5 = i + i4;
            int i6 = iArr[i5];
            int i7 = ((i + i3) - 1) - i4;
            iArr[i5] = iArr[i7];
            iArr[i7] = i6;
        }
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    public void forEach(IntConsumer intConsumer) {
        for (int i = 0; i < this.size; i++) {
            intConsumer.accept(this.data[i]);
        }
    }

    public void setCapacity(int i) {
        int[] iArrCopyOf = Arrays.copyOf(this.data, i);
        this.data = iArrCopyOf;
        this.size = Math.min(iArrCopyOf.length, this.size);
    }

    public int getCapacity() {
        return this.data.length;
    }

    public void swap(int i, int i2) {
        int[] iArr = this.data;
        int i3 = iArr[i];
        iArr[i] = iArr[i2];
        iArr[i2] = i3;
    }

    public void sort() {
        Arrays.sort(this.data, 0, this.size);
    }

    public final void increaseCapacity() {
        int[] iArr = this.data;
        this.data = Arrays.copyOf(iArr, Math.max(iArr.length * 2, 1));
    }

    public final void increaseCapacity(int i) {
        int length = this.data.length;
        do {
            length *= 2;
        } while (length < i);
        this.data = Arrays.copyOf(this.data, Math.max(length, 1));
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public IntList m2757clone() {
        return new IntList(this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("IntList[ ");
        for (int i = 0; i < this.size; i++) {
            sb.append(this.data[i]);
            if (i < this.size - 1) {
                sb.append(", ");
            }
        }
        sb.append(" ]");
        return sb.toString();
    }

    public String join(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.size; i++) {
            sb.append(this.data[i]);
            if (i < this.size - 1) {
                sb.append(str);
            }
        }
        return sb.toString();
    }

    public int hashCode() {
        int i = this.size;
        int i2 = i > 0 ? this.data[0] * 13 : 0;
        if (i > 1) {
            i2 += this.data[1] * 17;
        }
        if (i > 2) {
            i2 += this.data[2] * 19;
        }
        if (i > 3) {
            i2 += this.data[3] * 23;
        }
        if (i > 4) {
            i2 += this.data[i - 1] * 29;
        }
        if (i > 5) {
            i2 += this.data[i - 2] * 31;
        }
        if (i > 6) {
            i2 += this.data[i - 3] * 37;
        }
        if (i > 7) {
            i2 += this.data[i - 4] * 41;
        }
        return i2 + (i * 43);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof IntList)) {
            IntList intList = (IntList) obj;
            if (this.size == intList.size) {
                for (int i = 0; i < this.size; i++) {
                    if (this.data[i] != intList.data[i]) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public int sum() {
        int i = 0;
        for (int i2 = 0; i2 < this.size; i2++) {
            i += this.data[i2];
        }
        return i;
    }

    public static IntList asList(int... iArr) {
        return new IntList(iArr);
    }
}
