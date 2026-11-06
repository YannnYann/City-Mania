package info.flowersoft.theotown.util;

import io.blueflower.stapel2d.util.IntList;

/* JADX INFO: loaded from: classes4.dex */
public class LEQCounter {
    public final IntList arr;
    public int total;

    public LEQCounter() {
        IntList intList = new IntList();
        this.arr = intList;
        intList.add(0);
        this.total = 0;
    }

    public void insert(int i) {
        insert(i, 1);
    }

    public void insert(int i, int i2) {
        while (this.arr.size() - 1 < i) {
            IntList intList = this.arr;
            intList.add(intList.get(intList.size() - 1));
        }
        while (i < this.arr.size()) {
            IntList intList2 = this.arr;
            intList2.set(i, intList2.get(i) + i2);
            i++;
        }
        this.total += i2;
    }

    public int countEqual(int i) {
        return countLessEqual(i) - countLess(i);
    }

    public int countLess(int i) {
        if (i > 0) {
            return countLessEqual(i - 1);
        }
        return 0;
    }

    public int countLessEqual(int i) {
        return this.arr.get(Math.min(i, r0.size() - 1));
    }

    public int countInRange(int i, int i2) {
        return countLessEqual(i2) - countLess(i);
    }

    public int getTotal() {
        return this.total;
    }
}
