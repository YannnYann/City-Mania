package com.badlogic.gdx.utils;

import com.ironsource.C3522b4;
import com.unity3d.services.UnityAdsConstants;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public class IntIntMap implements Iterable<Entry> {
    public transient Entries entries1;
    public transient Entries entries2;
    public boolean hasZeroValue;
    public int[] keyTable;
    public transient Keys keys1;
    public transient Keys keys2;
    public final float loadFactor;
    public int mask;
    public int shift;
    public int size;
    public int threshold;
    public int[] valueTable;
    public int zeroValue;

    public IntIntMap() {
        this(51, 0.8f);
    }

    public IntIntMap(int i, float f) {
        if (f <= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || f >= 1.0f) {
            throw new IllegalArgumentException("loadFactor must be > 0 and < 1: " + f);
        }
        this.loadFactor = f;
        int iTableSize = ObjectSet.tableSize(i, f);
        this.threshold = (int) (iTableSize * f);
        int i2 = iTableSize - 1;
        this.mask = i2;
        this.shift = Long.numberOfLeadingZeros(i2);
        this.keyTable = new int[iTableSize];
        this.valueTable = new int[iTableSize];
    }

    public int place(int i) {
        return (int) ((((long) i) * (-7046029254386353131L)) >>> this.shift);
    }

    public final int locateKey(int i) {
        int[] iArr = this.keyTable;
        int iPlace = place(i);
        while (true) {
            int i2 = iArr[iPlace];
            if (i2 == 0) {
                return -(iPlace + 1);
            }
            if (i2 == i) {
                return iPlace;
            }
            iPlace = (iPlace + 1) & this.mask;
        }
    }

    public void put(int i, int i2) {
        if (i == 0) {
            this.zeroValue = i2;
            if (this.hasZeroValue) {
                return;
            }
            this.hasZeroValue = true;
            this.size++;
            return;
        }
        int iLocateKey = locateKey(i);
        if (iLocateKey >= 0) {
            this.valueTable[iLocateKey] = i2;
            return;
        }
        int i3 = -(iLocateKey + 1);
        int[] iArr = this.keyTable;
        iArr[i3] = i;
        this.valueTable[i3] = i2;
        int i4 = this.size + 1;
        this.size = i4;
        if (i4 >= this.threshold) {
            resize(iArr.length << 1);
        }
    }

    public final void putResize(int i, int i2) {
        int[] iArr = this.keyTable;
        int iPlace = place(i);
        while (iArr[iPlace] != 0) {
            iPlace = (iPlace + 1) & this.mask;
        }
        iArr[iPlace] = i;
        this.valueTable[iPlace] = i2;
    }

    public int get(int i, int i2) {
        if (i == 0) {
            if (this.hasZeroValue) {
                return this.zeroValue;
            }
        } else {
            int iLocateKey = locateKey(i);
            if (iLocateKey >= 0) {
                return this.valueTable[iLocateKey];
            }
        }
        return i2;
    }

    public int getAndIncrement(int i, int i2, int i3) {
        if (i == 0) {
            if (!this.hasZeroValue) {
                this.hasZeroValue = true;
                this.zeroValue = i3 + i2;
                this.size++;
                return i2;
            }
            int i4 = this.zeroValue;
            this.zeroValue = i3 + i4;
            return i4;
        }
        int iLocateKey = locateKey(i);
        if (iLocateKey >= 0) {
            int[] iArr = this.valueTable;
            int i5 = iArr[iLocateKey];
            iArr[iLocateKey] = i3 + i5;
            return i5;
        }
        int i6 = -(iLocateKey + 1);
        int[] iArr2 = this.keyTable;
        iArr2[i6] = i;
        this.valueTable[i6] = i3 + i2;
        int i7 = this.size + 1;
        this.size = i7;
        if (i7 >= this.threshold) {
            resize(iArr2.length << 1);
        }
        return i2;
    }

    public int remove(int i, int i2) {
        if (i == 0) {
            if (this.hasZeroValue) {
                this.hasZeroValue = false;
                this.size--;
                return this.zeroValue;
            }
        } else {
            int iLocateKey = locateKey(i);
            if (iLocateKey >= 0) {
                int[] iArr = this.keyTable;
                int[] iArr2 = this.valueTable;
                int i3 = iArr2[iLocateKey];
                int i4 = this.mask;
                int i5 = iLocateKey + 1;
                while (true) {
                    int i6 = i5 & i4;
                    int i7 = iArr[i6];
                    if (i7 != 0) {
                        int iPlace = place(i7);
                        if (((i6 - iPlace) & i4) > ((iLocateKey - iPlace) & i4)) {
                            iArr[iLocateKey] = i7;
                            iArr2[iLocateKey] = iArr2[i6];
                            iLocateKey = i6;
                        }
                        i5 = i6 + 1;
                    } else {
                        iArr[iLocateKey] = 0;
                        this.size--;
                        return i3;
                    }
                }
            }
        }
        return i2;
    }

    public void clear() {
        if (this.size == 0) {
            return;
        }
        Arrays.fill(this.keyTable, 0);
        this.size = 0;
        this.hasZeroValue = false;
    }

    public boolean containsKey(int i) {
        if (i == 0) {
            return this.hasZeroValue;
        }
        return locateKey(i) >= 0;
    }

    public final void resize(int i) {
        int length = this.keyTable.length;
        this.threshold = (int) (i * this.loadFactor);
        int i2 = i - 1;
        this.mask = i2;
        this.shift = Long.numberOfLeadingZeros(i2);
        int[] iArr = this.keyTable;
        int[] iArr2 = this.valueTable;
        this.keyTable = new int[i];
        this.valueTable = new int[i];
        if (this.size > 0) {
            for (int i3 = 0; i3 < length; i3++) {
                int i4 = iArr[i3];
                if (i4 != 0) {
                    putResize(i4, iArr2[i3]);
                }
            }
        }
    }

    public int hashCode() {
        int i = this.size;
        if (this.hasZeroValue) {
            i += this.zeroValue;
        }
        int[] iArr = this.keyTable;
        int[] iArr2 = this.valueTable;
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = iArr[i2];
            if (i3 != 0) {
                i += (i3 * 31) + iArr2[i2];
            }
        }
        return i;
    }

    public boolean equals(Object obj) {
        int i;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof IntIntMap)) {
            return false;
        }
        IntIntMap intIntMap = (IntIntMap) obj;
        if (intIntMap.size != this.size) {
            return false;
        }
        boolean z = intIntMap.hasZeroValue;
        boolean z2 = this.hasZeroValue;
        if (z != z2) {
            return false;
        }
        if (z2 && intIntMap.zeroValue != this.zeroValue) {
            return false;
        }
        int[] iArr = this.keyTable;
        int[] iArr2 = this.valueTable;
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = iArr[i2];
            if (i3 != 0 && (((i = intIntMap.get(i3, 0)) == 0 && !intIntMap.containsKey(i3)) || i != iArr2[i2])) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0059  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x003e -> B:16:0x003f). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String toString() {
        /*
            r7 = this;
            int r0 = r7.size
            if (r0 != 0) goto L7
            java.lang.String r0 = "[]"
            return r0
        L7:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = 32
            r0.<init>(r1)
            r1 = 91
            r0.append(r1)
            int[] r1 = r7.keyTable
            int[] r2 = r7.valueTable
            int r3 = r1.length
            boolean r4 = r7.hasZeroValue
            r5 = 61
            if (r4 == 0) goto L29
            java.lang.String r4 = "0="
            r0.append(r4)
            int r4 = r7.zeroValue
            r0.append(r4)
            goto L3f
        L29:
            int r4 = r3 + (-1)
            if (r3 <= 0) goto L3e
            r3 = r1[r4]
            if (r3 != 0) goto L33
            r3 = r4
            goto L29
        L33:
            r0.append(r3)
            r0.append(r5)
            r3 = r2[r4]
            r0.append(r3)
        L3e:
            r3 = r4
        L3f:
            int r4 = r3 + (-1)
            if (r3 <= 0) goto L59
            r3 = r1[r4]
            if (r3 != 0) goto L48
            goto L3e
        L48:
            java.lang.String r6 = ", "
            r0.append(r6)
            r0.append(r3)
            r0.append(r5)
            r3 = r2[r4]
            r0.append(r3)
            goto L3e
        L59:
            r1 = 93
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.IntIntMap.toString():java.lang.String");
    }

    @Override // java.lang.Iterable
    public Iterator<Entry> iterator() {
        return entries();
    }

    public Entries entries() {
        if (Collections.allocateIterators) {
            return new Entries(this);
        }
        if (this.entries1 == null) {
            this.entries1 = new Entries(this);
            this.entries2 = new Entries(this);
        }
        Entries entries = this.entries1;
        if (!entries.valid) {
            entries.reset();
            Entries entries2 = this.entries1;
            entries2.valid = true;
            this.entries2.valid = false;
            return entries2;
        }
        this.entries2.reset();
        Entries entries3 = this.entries2;
        entries3.valid = true;
        this.entries1.valid = false;
        return entries3;
    }

    public Keys keys() {
        if (Collections.allocateIterators) {
            return new Keys(this);
        }
        if (this.keys1 == null) {
            this.keys1 = new Keys(this);
            this.keys2 = new Keys(this);
        }
        Keys keys = this.keys1;
        if (!keys.valid) {
            keys.reset();
            Keys keys2 = this.keys1;
            keys2.valid = true;
            this.keys2.valid = false;
            return keys2;
        }
        this.keys2.reset();
        Keys keys3 = this.keys2;
        keys3.valid = true;
        this.keys1.valid = false;
        return keys3;
    }

    public static class Entry {
        public int key;
        public int value;

        public String toString() {
            return this.key + C3522b4.j.b + this.value;
        }
    }

    public static class MapIterator {
        public int currentIndex;
        public boolean hasNext;
        public final IntIntMap map;
        public int nextIndex;
        public boolean valid = true;

        public MapIterator(IntIntMap intIntMap) {
            this.map = intIntMap;
            reset();
        }

        public void reset() {
            this.currentIndex = -2;
            this.nextIndex = -1;
            if (this.map.hasZeroValue) {
                this.hasNext = true;
            } else {
                findNextIndex();
            }
        }

        public void findNextIndex() {
            int i;
            int[] iArr = this.map.keyTable;
            int length = iArr.length;
            do {
                i = this.nextIndex + 1;
                this.nextIndex = i;
                if (i >= length) {
                    this.hasNext = false;
                    return;
                }
            } while (iArr[i] == 0);
            this.hasNext = true;
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x000f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void remove() {
            /*
                r9 = this;
                int r0 = r9.currentIndex
                r1 = -1
                r2 = 0
                if (r0 != r1) goto Lf
                com.badlogic.gdx.utils.IntIntMap r1 = r9.map
                boolean r3 = r1.hasZeroValue
                if (r3 == 0) goto Lf
                r1.hasZeroValue = r2
                goto L44
            Lf:
                if (r0 < 0) goto L50
                com.badlogic.gdx.utils.IntIntMap r1 = r9.map
                int[] r3 = r1.keyTable
                int[] r4 = r1.valueTable
                int r1 = r1.mask
                int r5 = r0 + 1
            L1b:
                r5 = r5 & r1
                r6 = r3[r5]
                if (r6 == 0) goto L38
                com.badlogic.gdx.utils.IntIntMap r7 = r9.map
                int r7 = r7.place(r6)
                int r8 = r5 - r7
                r8 = r8 & r1
                int r7 = r0 - r7
                r7 = r7 & r1
                if (r8 <= r7) goto L35
                r3[r0] = r6
                r6 = r4[r5]
                r4[r0] = r6
                r0 = r5
            L35:
                int r5 = r5 + 1
                goto L1b
            L38:
                r3[r0] = r2
                int r1 = r9.currentIndex
                if (r0 == r1) goto L44
                int r0 = r9.nextIndex
                int r0 = r0 + (-1)
                r9.nextIndex = r0
            L44:
                r0 = -2
                r9.currentIndex = r0
                com.badlogic.gdx.utils.IntIntMap r0 = r9.map
                int r1 = r0.size
                int r1 = r1 + (-1)
                r0.size = r1
                return
            L50:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                java.lang.String r1 = "next must be called before remove."
                r0.<init>(r1)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.IntIntMap.MapIterator.remove():void");
        }
    }

    public static class Entries extends MapIterator implements Iterable<Entry>, Iterator<Entry> {
        public final Entry entry;

        @Override // java.lang.Iterable
        public Iterator<Entry> iterator() {
            return this;
        }

        @Override // com.badlogic.gdx.utils.IntIntMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.IntIntMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        public Entries(IntIntMap intIntMap) {
            super(intIntMap);
            this.entry = new Entry();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public Entry next() {
            if (!this.hasNext) {
                throw new NoSuchElementException();
            }
            if (!this.valid) {
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            IntIntMap intIntMap = this.map;
            int[] iArr = intIntMap.keyTable;
            int i = this.nextIndex;
            if (i == -1) {
                Entry entry = this.entry;
                entry.key = 0;
                entry.value = intIntMap.zeroValue;
            } else {
                Entry entry2 = this.entry;
                entry2.key = iArr[i];
                entry2.value = intIntMap.valueTable[i];
            }
            this.currentIndex = i;
            findNextIndex();
            return this.entry;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (!this.valid) {
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            return this.hasNext;
        }
    }

    public static class Keys extends MapIterator {
        @Override // com.badlogic.gdx.utils.IntIntMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        public Keys(IntIntMap intIntMap) {
            super(intIntMap);
        }

        public int next() {
            if (!this.hasNext) {
                throw new NoSuchElementException();
            }
            if (!this.valid) {
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            int i = this.nextIndex;
            int i2 = i == -1 ? 0 : this.map.keyTable[i];
            this.currentIndex = i;
            findNextIndex();
            return i2;
        }
    }
}
