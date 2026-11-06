package com.badlogic.gdx.utils;

import com.ironsource.C3522b4;
import com.ironsource.G5;
import com.unity3d.services.UnityAdsConstants;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public class ObjectMap<K, V> implements Iterable<Entry<K, V>> {
    public static final Object dummy = new Object();
    public transient Entries entries1;
    public transient Entries entries2;
    public K[] keyTable;
    public transient Keys keys1;
    public transient Keys keys2;
    public float loadFactor;
    public int mask;
    public int shift;
    public int size;
    public int threshold;
    public V[] valueTable;

    public ObjectMap() {
        this(51, 0.8f);
    }

    public ObjectMap(int i, float f) {
        if (f <= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || f >= 1.0f) {
            throw new IllegalArgumentException("loadFactor must be > 0 and < 1: " + f);
        }
        this.loadFactor = f;
        int iTableSize = ObjectSet.tableSize(i, f);
        this.threshold = (int) (iTableSize * f);
        int i2 = iTableSize - 1;
        this.mask = i2;
        this.shift = Long.numberOfLeadingZeros(i2);
        this.keyTable = (K[]) new Object[iTableSize];
        this.valueTable = (V[]) new Object[iTableSize];
    }

    public int place(K k) {
        return (int) ((((long) k.hashCode()) * (-7046029254386353131L)) >>> this.shift);
    }

    public int locateKey(K k) {
        if (k == null) {
            throw new IllegalArgumentException("key cannot be null.");
        }
        K[] kArr = this.keyTable;
        int iPlace = place(k);
        while (true) {
            K k2 = kArr[iPlace];
            if (k2 == null) {
                return -(iPlace + 1);
            }
            if (k2.equals(k)) {
                return iPlace;
            }
            iPlace = (iPlace + 1) & this.mask;
        }
    }

    public V put(K k, V v) {
        int iLocateKey = locateKey(k);
        if (iLocateKey >= 0) {
            V[] vArr = this.valueTable;
            V v2 = vArr[iLocateKey];
            vArr[iLocateKey] = v;
            return v2;
        }
        int i = -(iLocateKey + 1);
        K[] kArr = this.keyTable;
        kArr[i] = k;
        this.valueTable[i] = v;
        int i2 = this.size + 1;
        this.size = i2;
        if (i2 < this.threshold) {
            return null;
        }
        resize(kArr.length << 1);
        return null;
    }

    public final void putResize(K k, V v) {
        K[] kArr = this.keyTable;
        int iPlace = place(k);
        while (kArr[iPlace] != null) {
            iPlace = (iPlace + 1) & this.mask;
        }
        kArr[iPlace] = k;
        this.valueTable[iPlace] = v;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends K> V get(T t) {
        int iLocateKey = locateKey(t);
        if (iLocateKey < 0) {
            return null;
        }
        return this.valueTable[iLocateKey];
    }

    public V get(K k, V v) {
        int iLocateKey = locateKey(k);
        return iLocateKey < 0 ? v : this.valueTable[iLocateKey];
    }

    public V remove(K k) {
        int iLocateKey = locateKey(k);
        if (iLocateKey < 0) {
            return null;
        }
        K[] kArr = this.keyTable;
        V[] vArr = this.valueTable;
        V v = vArr[iLocateKey];
        int i = this.mask;
        int i2 = iLocateKey + 1;
        while (true) {
            int i3 = i2 & i;
            K k2 = kArr[i3];
            if (k2 != null) {
                int iPlace = place(k2);
                if (((i3 - iPlace) & i) > ((iLocateKey - iPlace) & i)) {
                    kArr[iLocateKey] = k2;
                    vArr[iLocateKey] = vArr[i3];
                    iLocateKey = i3;
                }
                i2 = i3 + 1;
            } else {
                kArr[iLocateKey] = null;
                vArr[iLocateKey] = null;
                this.size--;
                return v;
            }
        }
    }

    public final void resize(int i) {
        int length = this.keyTable.length;
        this.threshold = (int) (i * this.loadFactor);
        int i2 = i - 1;
        this.mask = i2;
        this.shift = Long.numberOfLeadingZeros(i2);
        K[] kArr = this.keyTable;
        V[] vArr = this.valueTable;
        this.keyTable = (K[]) new Object[i];
        this.valueTable = (V[]) new Object[i];
        if (this.size > 0) {
            for (int i3 = 0; i3 < length; i3++) {
                K k = kArr[i3];
                if (k != null) {
                    putResize(k, vArr[i3]);
                }
            }
        }
    }

    public int hashCode() {
        int iHashCode = this.size;
        K[] kArr = this.keyTable;
        V[] vArr = this.valueTable;
        int length = kArr.length;
        for (int i = 0; i < length; i++) {
            K k = kArr[i];
            if (k != null) {
                iHashCode += k.hashCode();
                V v = vArr[i];
                if (v != null) {
                    iHashCode += v.hashCode();
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
        if (!(obj instanceof ObjectMap)) {
            return false;
        }
        ObjectMap objectMap = (ObjectMap) obj;
        if (objectMap.size != this.size) {
            return false;
        }
        K[] kArr = this.keyTable;
        V[] vArr = this.valueTable;
        int length = kArr.length;
        for (int i = 0; i < length; i++) {
            K k = kArr[i];
            if (k != null) {
                V v = vArr[i];
                if (v == null) {
                    if (objectMap.get(k, dummy) != null) {
                        return false;
                    }
                } else if (!v.equals(objectMap.get(k))) {
                    return false;
                }
            }
        }
        return true;
    }

    public String toString() {
        return toString(", ", true);
    }

    public String toString(String str, boolean z) {
        int i;
        if (this.size == 0) {
            return z ? "{}" : "";
        }
        StringBuilder sb = new StringBuilder(32);
        if (z) {
            sb.append('{');
        }
        Object[] objArr = this.keyTable;
        Object[] objArr2 = this.valueTable;
        int length = objArr.length;
        while (true) {
            i = length - 1;
            if (length <= 0) {
                break;
            }
            Object obj = objArr[i];
            if (obj == null) {
                length = i;
            } else {
                if (obj == this) {
                    obj = "(this)";
                }
                sb.append(obj);
                sb.append(G5.U);
                Object obj2 = objArr2[i];
                if (obj2 == this) {
                    obj2 = "(this)";
                }
                sb.append(obj2);
            }
        }
        while (true) {
            int i2 = i - 1;
            if (i <= 0) {
                break;
            }
            Object obj3 = objArr[i2];
            if (obj3 != null) {
                sb.append(str);
                if (obj3 == this) {
                    obj3 = "(this)";
                }
                sb.append(obj3);
                sb.append(G5.U);
                Object obj4 = objArr2[i2];
                if (obj4 == this) {
                    obj4 = "(this)";
                }
                sb.append(obj4);
            }
            i = i2;
        }
        if (z) {
            sb.append('}');
        }
        return sb.toString();
    }

    @Override // java.lang.Iterable
    public Entries<K, V> iterator() {
        return entries();
    }

    public Entries<K, V> entries() {
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
            Entries<K, V> entries2 = this.entries1;
            entries2.valid = true;
            this.entries2.valid = false;
            return entries2;
        }
        this.entries2.reset();
        Entries<K, V> entries3 = this.entries2;
        entries3.valid = true;
        this.entries1.valid = false;
        return entries3;
    }

    public Keys<K> keys() {
        if (Collections.allocateIterators) {
            return new Keys<>(this);
        }
        if (this.keys1 == null) {
            this.keys1 = new Keys(this);
            this.keys2 = new Keys(this);
        }
        Keys keys = this.keys1;
        if (!keys.valid) {
            keys.reset();
            Keys<K> keys2 = this.keys1;
            keys2.valid = true;
            this.keys2.valid = false;
            return keys2;
        }
        this.keys2.reset();
        Keys<K> keys3 = this.keys2;
        keys3.valid = true;
        this.keys1.valid = false;
        return keys3;
    }

    public static class Entry<K, V> {
        public K key;
        public V value;

        public String toString() {
            return this.key + C3522b4.j.b + this.value;
        }
    }

    public static abstract class MapIterator<K, V, I> implements Iterable<I>, Iterator<I> {
        public int currentIndex;
        public boolean hasNext;
        public final ObjectMap<K, V> map;
        public int nextIndex;
        public boolean valid = true;

        public MapIterator(ObjectMap<K, V> objectMap) {
            this.map = objectMap;
            reset();
        }

        public void reset() {
            this.currentIndex = -1;
            this.nextIndex = -1;
            findNextIndex();
        }

        public void findNextIndex() {
            int i;
            K[] kArr = this.map.keyTable;
            int length = kArr.length;
            do {
                i = this.nextIndex + 1;
                this.nextIndex = i;
                if (i >= length) {
                    this.hasNext = false;
                    return;
                }
            } while (kArr[i] == null);
            this.hasNext = true;
        }

        public void remove() {
            int i = this.currentIndex;
            if (i < 0) {
                throw new IllegalStateException("next must be called before remove.");
            }
            ObjectMap<K, V> objectMap = this.map;
            K[] kArr = objectMap.keyTable;
            V[] vArr = objectMap.valueTable;
            int i2 = objectMap.mask;
            int i3 = i + 1;
            while (true) {
                int i4 = i3 & i2;
                K k = kArr[i4];
                if (k == null) {
                    break;
                }
                int iPlace = this.map.place(k);
                if (((i4 - iPlace) & i2) > ((i - iPlace) & i2)) {
                    kArr[i] = k;
                    vArr[i] = vArr[i4];
                    i = i4;
                }
                i3 = i4 + 1;
            }
            kArr[i] = null;
            vArr[i] = null;
            ObjectMap<K, V> objectMap2 = this.map;
            objectMap2.size--;
            if (i != this.currentIndex) {
                this.nextIndex--;
            }
            this.currentIndex = -1;
        }
    }

    public static class Entries<K, V> extends MapIterator<K, V, Entry<K, V>> {
        public Entry<K, V> entry;

        @Override // java.lang.Iterable
        public Entries<K, V> iterator() {
            return this;
        }

        @Override // com.badlogic.gdx.utils.ObjectMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.ObjectMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        public Entries(ObjectMap<K, V> objectMap) {
            super(objectMap);
            this.entry = new Entry<>();
        }

        @Override // java.util.Iterator
        public Entry<K, V> next() {
            if (!this.hasNext) {
                throw new NoSuchElementException();
            }
            if (!this.valid) {
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            ObjectMap<K, V> objectMap = this.map;
            K[] kArr = objectMap.keyTable;
            Entry<K, V> entry = this.entry;
            int i = this.nextIndex;
            entry.key = kArr[i];
            entry.value = objectMap.valueTable[i];
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

    public static class Keys<K> extends MapIterator<K, Object, K> {
        @Override // java.lang.Iterable
        public Keys<K> iterator() {
            return this;
        }

        @Override // com.badlogic.gdx.utils.ObjectMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.ObjectMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        public Keys(ObjectMap<K, ?> objectMap) {
            super(objectMap);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (!this.valid) {
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            return this.hasNext;
        }

        @Override // java.util.Iterator
        public K next() {
            if (!this.hasNext) {
                throw new NoSuchElementException();
            }
            if (!this.valid) {
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            K[] kArr = this.map.keyTable;
            int i = this.nextIndex;
            K k = kArr[i];
            this.currentIndex = i;
            findNextIndex();
            return k;
        }
    }
}
