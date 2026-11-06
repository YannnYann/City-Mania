package com.badlogic.gdx.utils;

import com.ironsource.C3522b4;
import com.unity3d.services.UnityAdsConstants;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public class LongMap<V> implements Iterable<Entry<V>> {
    public transient Entries entries1;
    public transient Entries entries2;
    public boolean hasZeroValue;
    public long[] keyTable;
    public final float loadFactor;
    public int mask;
    public int shift;
    public int size;
    public int threshold;
    public V[] valueTable;
    public transient Values values1;
    public transient Values values2;
    public V zeroValue;

    public LongMap() {
        this(51, 0.8f);
    }

    public LongMap(int i, float f) {
        if (f <= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || f >= 1.0f) {
            throw new IllegalArgumentException("loadFactor must be > 0 and < 1: " + f);
        }
        this.loadFactor = f;
        int iTableSize = ObjectSet.tableSize(i, f);
        this.threshold = (int) (iTableSize * f);
        int i2 = iTableSize - 1;
        this.mask = i2;
        this.shift = Long.numberOfLeadingZeros(i2);
        this.keyTable = new long[iTableSize];
        this.valueTable = (V[]) new Object[iTableSize];
    }

    public int place(long j) {
        return (int) (((j ^ (j >>> 32)) * (-7046029254386353131L)) >>> this.shift);
    }

    public final int locateKey(long j) {
        long[] jArr = this.keyTable;
        int iPlace = place(j);
        while (true) {
            long j2 = jArr[iPlace];
            if (j2 == 0) {
                return -(iPlace + 1);
            }
            if (j2 == j) {
                return iPlace;
            }
            iPlace = (iPlace + 1) & this.mask;
        }
    }

    public V put(long j, V v) {
        if (j == 0) {
            V v2 = this.zeroValue;
            this.zeroValue = v;
            if (!this.hasZeroValue) {
                this.hasZeroValue = true;
                this.size++;
            }
            return v2;
        }
        int iLocateKey = locateKey(j);
        if (iLocateKey >= 0) {
            V[] vArr = this.valueTable;
            V v3 = vArr[iLocateKey];
            vArr[iLocateKey] = v;
            return v3;
        }
        int i = -(iLocateKey + 1);
        long[] jArr = this.keyTable;
        jArr[i] = j;
        this.valueTable[i] = v;
        int i2 = this.size + 1;
        this.size = i2;
        if (i2 < this.threshold) {
            return null;
        }
        resize(jArr.length << 1);
        return null;
    }

    public final void putResize(long j, V v) {
        long[] jArr = this.keyTable;
        int iPlace = place(j);
        while (jArr[iPlace] != 0) {
            iPlace = (iPlace + 1) & this.mask;
        }
        jArr[iPlace] = j;
        this.valueTable[iPlace] = v;
    }

    public V get(long j) {
        if (j == 0) {
            if (this.hasZeroValue) {
                return this.zeroValue;
            }
            return null;
        }
        int iLocateKey = locateKey(j);
        if (iLocateKey >= 0) {
            return this.valueTable[iLocateKey];
        }
        return null;
    }

    public V get(long j, V v) {
        if (j == 0) {
            if (this.hasZeroValue) {
                return this.zeroValue;
            }
        } else {
            int iLocateKey = locateKey(j);
            if (iLocateKey >= 0) {
                return this.valueTable[iLocateKey];
            }
        }
        return v;
    }

    public V remove(long j) {
        if (j == 0) {
            if (!this.hasZeroValue) {
                return null;
            }
            this.hasZeroValue = false;
            V v = this.zeroValue;
            this.zeroValue = null;
            this.size--;
            return v;
        }
        int iLocateKey = locateKey(j);
        if (iLocateKey < 0) {
            return null;
        }
        long[] jArr = this.keyTable;
        V[] vArr = this.valueTable;
        V v2 = vArr[iLocateKey];
        int i = this.mask;
        int i2 = iLocateKey + 1;
        while (true) {
            int i3 = i2 & i;
            long j2 = jArr[i3];
            if (j2 != 0) {
                int iPlace = place(j2);
                if (((i3 - iPlace) & i) > ((iLocateKey - iPlace) & i)) {
                    jArr[iLocateKey] = j2;
                    vArr[iLocateKey] = vArr[i3];
                    iLocateKey = i3;
                }
                i2 = i3 + 1;
            } else {
                jArr[iLocateKey] = 0;
                vArr[iLocateKey] = null;
                this.size--;
                return v2;
            }
        }
    }

    public void clear() {
        if (this.size == 0) {
            return;
        }
        this.size = 0;
        Arrays.fill(this.keyTable, 0L);
        Arrays.fill(this.valueTable, (Object) null);
        this.zeroValue = null;
        this.hasZeroValue = false;
    }

    public boolean containsKey(long j) {
        if (j == 0) {
            return this.hasZeroValue;
        }
        return locateKey(j) >= 0;
    }

    public final void resize(int i) {
        int length = this.keyTable.length;
        this.threshold = (int) (i * this.loadFactor);
        int i2 = i - 1;
        this.mask = i2;
        this.shift = Long.numberOfLeadingZeros(i2);
        long[] jArr = this.keyTable;
        V[] vArr = this.valueTable;
        this.keyTable = new long[i];
        this.valueTable = (V[]) new Object[i];
        if (this.size > 0) {
            for (int i3 = 0; i3 < length; i3++) {
                long j = jArr[i3];
                if (j != 0) {
                    putResize(j, vArr[i3]);
                }
            }
        }
    }

    public int hashCode() {
        V v;
        int iHashCode = this.size;
        if (this.hasZeroValue && (v = this.zeroValue) != null) {
            iHashCode += v.hashCode();
        }
        long[] jArr = this.keyTable;
        V[] vArr = this.valueTable;
        int length = jArr.length;
        for (int i = 0; i < length; i++) {
            long j = jArr[i];
            if (j != 0) {
                iHashCode = (int) (((long) iHashCode) + (j * 31));
                V v2 = vArr[i];
                if (v2 != null) {
                    iHashCode += v2.hashCode();
                }
            }
        }
        return iHashCode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LongMap)) {
            return false;
        }
        LongMap longMap = (LongMap) obj;
        if (longMap.size != this.size) {
            return false;
        }
        boolean z = longMap.hasZeroValue;
        boolean z2 = this.hasZeroValue;
        if (z != z2) {
            return false;
        }
        if (z2) {
            V v = longMap.zeroValue;
            if (v == null) {
                if (this.zeroValue != null) {
                    return false;
                }
            } else if (!v.equals(this.zeroValue)) {
                return false;
            }
        }
        long[] jArr = this.keyTable;
        V[] vArr = this.valueTable;
        int length = jArr.length;
        for (int i = 0; i < length; i++) {
            long j = jArr[i];
            if (j != 0) {
                V v2 = vArr[i];
                if (v2 == null) {
                    if (longMap.get(j, ObjectMap.dummy) != null) {
                        return false;
                    }
                } else if (!v2.equals(longMap.get(j))) {
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0042 -> B:16:0x0043). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String toString() {
        /*
            r10 = this;
            int r0 = r10.size
            if (r0 != 0) goto L7
            java.lang.String r0 = "[]"
            return r0
        L7:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = 32
            r0.<init>(r1)
            r1 = 91
            r0.append(r1)
            long[] r1 = r10.keyTable
            V[] r2 = r10.valueTable
            int r3 = r1.length
            boolean r4 = r10.hasZeroValue
            r5 = 61
            r6 = 0
            if (r4 == 0) goto L2b
            java.lang.String r4 = "0="
            r0.append(r4)
            V r4 = r10.zeroValue
            r0.append(r4)
            goto L43
        L2b:
            int r4 = r3 + (-1)
            if (r3 <= 0) goto L42
            r8 = r1[r4]
            int r3 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r3 != 0) goto L37
            r3 = r4
            goto L2b
        L37:
            r0.append(r8)
            r0.append(r5)
            r3 = r2[r4]
            r0.append(r3)
        L42:
            r3 = r4
        L43:
            int r4 = r3 + (-1)
            if (r3 <= 0) goto L5f
            r8 = r1[r4]
            int r3 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r3 != 0) goto L4e
            goto L42
        L4e:
            java.lang.String r3 = ", "
            r0.append(r3)
            r0.append(r8)
            r0.append(r5)
            r3 = r2[r4]
            r0.append(r3)
            goto L42
        L5f:
            r1 = 93
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.LongMap.toString():java.lang.String");
    }

    @Override // java.lang.Iterable
    public Iterator<Entry<V>> iterator() {
        return entries();
    }

    public Entries<V> entries() {
        if (Collections.allocateIterators) {
            return new Entries<>(this);
        }
        if (this.entries1 == null) {
            this.entries1 = new Entries(this);
            this.entries2 = new Entries(this);
        }
        Entries entries = this.entries1;
        if (!entries.valid) {
            entries.reset();
            Entries<V> entries2 = this.entries1;
            entries2.valid = true;
            this.entries2.valid = false;
            return entries2;
        }
        this.entries2.reset();
        Entries<V> entries3 = this.entries2;
        entries3.valid = true;
        this.entries1.valid = false;
        return entries3;
    }

    public Values<V> values() {
        if (Collections.allocateIterators) {
            return new Values<>(this);
        }
        if (this.values1 == null) {
            this.values1 = new Values(this);
            this.values2 = new Values(this);
        }
        Values values = this.values1;
        if (!values.valid) {
            values.reset();
            Values<V> values2 = this.values1;
            values2.valid = true;
            this.values2.valid = false;
            return values2;
        }
        this.values2.reset();
        Values<V> values3 = this.values2;
        values3.valid = true;
        this.values1.valid = false;
        return values3;
    }

    public static class Entry<V> {
        public long key;
        public V value;

        public String toString() {
            return this.key + C3522b4.j.b + this.value;
        }
    }

    public static class MapIterator<V> {
        public int currentIndex;
        public boolean hasNext;
        public final LongMap<V> map;
        public int nextIndex;
        public boolean valid = true;

        public MapIterator(LongMap<V> longMap) {
            this.map = longMap;
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
            long[] jArr = this.map.keyTable;
            int length = jArr.length;
            do {
                i = this.nextIndex + 1;
                this.nextIndex = i;
                if (i >= length) {
                    this.hasNext = false;
                    return;
                }
            } while (jArr[i] == 0);
            this.hasNext = true;
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0012  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void remove() {
            /*
                r11 = this;
                int r0 = r11.currentIndex
                r1 = -1
                r2 = 0
                if (r0 != r1) goto L12
                com.badlogic.gdx.utils.LongMap<V> r1 = r11.map
                boolean r3 = r1.hasZeroValue
                if (r3 == 0) goto L12
                r0 = 0
                r1.hasZeroValue = r0
                r1.zeroValue = r2
                goto L4d
            L12:
                if (r0 < 0) goto L59
                com.badlogic.gdx.utils.LongMap<V> r1 = r11.map
                long[] r3 = r1.keyTable
                V[] r4 = r1.valueTable
                int r1 = r1.mask
                int r5 = r0 + 1
            L1e:
                r5 = r5 & r1
                r6 = r3[r5]
                r8 = 0
                int r10 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r10 == 0) goto L3f
                com.badlogic.gdx.utils.LongMap<V> r8 = r11.map
                int r8 = r8.place(r6)
                int r9 = r5 - r8
                r9 = r9 & r1
                int r8 = r0 - r8
                r8 = r8 & r1
                if (r9 <= r8) goto L3c
                r3[r0] = r6
                r6 = r4[r5]
                r4[r0] = r6
                r0 = r5
            L3c:
                int r5 = r5 + 1
                goto L1e
            L3f:
                r3[r0] = r8
                r4[r0] = r2
                int r1 = r11.currentIndex
                if (r0 == r1) goto L4d
                int r0 = r11.nextIndex
                int r0 = r0 + (-1)
                r11.nextIndex = r0
            L4d:
                r0 = -2
                r11.currentIndex = r0
                com.badlogic.gdx.utils.LongMap<V> r0 = r11.map
                int r1 = r0.size
                int r1 = r1 + (-1)
                r0.size = r1
                return
            L59:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                java.lang.String r1 = "next must be called before remove."
                r0.<init>(r1)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.LongMap.MapIterator.remove():void");
        }
    }

    public static class Entries<V> extends MapIterator<V> implements Iterable<Entry<V>>, Iterator<Entry<V>> {
        public final Entry<V> entry;

        @Override // java.lang.Iterable
        public Iterator<Entry<V>> iterator() {
            return this;
        }

        @Override // com.badlogic.gdx.utils.LongMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.LongMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        public Entries(LongMap longMap) {
            super(longMap);
            this.entry = new Entry<>();
        }

        @Override // java.util.Iterator
        public Entry<V> next() {
            if (!this.hasNext) {
                throw new NoSuchElementException();
            }
            if (!this.valid) {
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            LongMap<V> longMap = this.map;
            long[] jArr = longMap.keyTable;
            int i = this.nextIndex;
            if (i == -1) {
                Entry<V> entry = this.entry;
                entry.key = 0L;
                entry.value = longMap.zeroValue;
            } else {
                Entry<V> entry2 = this.entry;
                entry2.key = jArr[i];
                entry2.value = longMap.valueTable[i];
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

    public static class Values<V> extends MapIterator<V> implements Iterable<V>, Iterator<V> {
        @Override // java.lang.Iterable
        public Iterator<V> iterator() {
            return this;
        }

        @Override // com.badlogic.gdx.utils.LongMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.LongMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        public Values(LongMap<V> longMap) {
            super(longMap);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (!this.valid) {
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            return this.hasNext;
        }

        @Override // java.util.Iterator
        public V next() {
            V v;
            if (!this.hasNext) {
                throw new NoSuchElementException();
            }
            if (!this.valid) {
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            int i = this.nextIndex;
            if (i == -1) {
                v = this.map.zeroValue;
            } else {
                v = this.map.valueTable[i];
            }
            this.currentIndex = i;
            findNextIndex();
            return v;
        }
    }
}
