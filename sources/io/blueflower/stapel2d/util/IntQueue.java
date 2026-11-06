package io.blueflower.stapel2d.util;

/* JADX INFO: loaded from: classes5.dex */
public final class IntQueue {
    public int[] array;
    public int i;
    public int size;

    public IntQueue() {
        this(32);
    }

    public IntQueue(int i) {
        this.array = new int[i];
        this.size = 0;
        this.i = 0;
    }

    public void add(int i) {
        int i2 = this.size;
        int[] iArr = this.array;
        if (i2 >= iArr.length) {
            int[] iArr2 = new int[iArr.length * 2];
            for (int i3 = i2 - 1; i3 >= 0; i3--) {
                int i4 = this.i - 1;
                int[] iArr3 = this.array;
                int length = (i4 + iArr3.length) % iArr3.length;
                this.i = length;
                iArr2[i3] = iArr3[length];
            }
            this.i = this.size;
            this.array = iArr2;
        }
        int[] iArr4 = this.array;
        int i5 = this.i;
        iArr4[i5] = i;
        this.i = (i5 + 1) % iArr4.length;
        this.size++;
    }

    public int remove() {
        int i = this.i;
        int i2 = this.size;
        int[] iArr = this.array;
        int length = ((i - i2) + iArr.length) % iArr.length;
        this.size = i2 - 1;
        return iArr[length];
    }

    public void clear() {
        this.size = 0;
        this.i = 0;
    }

    public boolean isEmpty() {
        return this.size == 0;
    }
}
