package com.facebook.ads.redexgen.X;

import com.google.errorprone.annotations.DoNotMock;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Vr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@DoNotMock
public class C1993Vr<K, V> {
    public static String[] A05 = {"F2S7Aotfo7CbhOuAIKMJALM7hFsxad", "KI15cP5Bwq6dkpulwZn8yttLTQkLf0", "3", "F4ekZtPYozqLvPAH6e7sh", "W", "wTLMsV24TBK7Lz5LF0Ec9fx0rD1Ydpz", "66voupMpBNoG1Mm69eqsiYvIQjuy0sR", "j"};
    public int A00;
    public C1994Vs A01;

    @CheckForNull
    public Comparator<? super V> A02;
    public boolean A03;
    public Object[] A04;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vr != com.google.common.collect.ImmutableMap$Builder<K, V> */
    public C1993Vr() {
        this(4);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vr != com.google.common.collect.ImmutableMap$Builder<K, V> */
    public C1993Vr(int initialCapacity) {
        this.A04 = new Object[initialCapacity * 2];
        this.A00 = 0;
        this.A03 = false;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vq != com.google.common.collect.ImmutableMap<K, V> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vr != com.google.common.collect.ImmutableMap$Builder<K, V> */
    private AbstractC1992Vq<K, V> A00(boolean throwIfDuplicateKeys) {
        Object[] objArrA03;
        if (!throwIfDuplicateKeys || this.A01 == null) {
            int i = this.A00;
            if (this.A02 == null) {
                objArrA03 = this.A04;
            } else {
                boolean z = this.A03;
                if (A05[7].length() == 10) {
                    throw new RuntimeException();
                }
                A05[7] = "rrVih42sPPGeO8shhCL3DehMK";
                if (z) {
                    Object[] objArr = this.A04;
                    int localSize = this.A00;
                    this.A04 = Arrays.copyOf(objArr, localSize * 2);
                }
                objArrA03 = this.A04;
                if (!throwIfDuplicateKeys) {
                    int localSize2 = this.A00;
                    objArrA03 = A03(objArrA03, localSize2);
                    int length = objArrA03.length;
                    int localSize3 = this.A04.length;
                    if (length < localSize3) {
                        int localSize4 = objArrA03.length;
                        i = localSize4 >>> 1;
                    }
                }
                A02(objArrA03, i, this.A02);
            }
            this.A03 = true;
            C9X c9xA00 = C9X.A00(i, objArrA03, this);
            if (!throwIfDuplicateKeys || this.A01 == null) {
                return c9xA00;
            }
            throw this.A01.A02();
        }
        throw this.A01.A02();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vr != com.google.common.collect.ImmutableMap$Builder<K, V> */
    private void A01(int minCapacity) {
        if (minCapacity * 2 > this.A04.length) {
            this.A04 = Arrays.copyOf(this.A04, AbstractC1996Vu.A03(this.A04.length, minCapacity * 2));
            this.A03 = false;
        }
    }

    public static <V> void A02(Object[] alternatingKeysAndValues, int size, Comparator<? super V> valueComparator) {
        Map.Entry[] entryArr = new Map.Entry[size];
        for (int i = 0; i < size; i++) {
            Object key = Objects.requireNonNull(alternatingKeysAndValues[i * 2]);
            entryArr[i] = new AbstractMap.SimpleImmutableEntry(key, Objects.requireNonNull(alternatingKeysAndValues[(i * 2) + 1]));
        }
        Arrays.sort(entryArr, 0, size, AbstractC1979Vc.A04(valueComparator).A05(AbstractC1985Vj.A04()));
        for (int i2 = 0; i2 < size; i2++) {
            int i3 = i2 * 2;
            alternatingKeysAndValues[i3] = entryArr[i2].getKey();
            int i4 = (i2 * 2) + 1;
            Object value = entryArr[i2].getValue();
            String[] strArr = A05;
            String str = strArr[1];
            String str2 = strArr[0];
            int i5 = str.length();
            if (i5 != str2.length()) {
                throw new RuntimeException();
            }
            A05[7] = "5GzKj";
            alternatingKeysAndValues[i4] = value;
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vr != com.google.common.collect.ImmutableMap$Builder<K, V> */
    private Object[] A03(Object[] localAlternatingKeysAndValues, int size) {
        HashSet hashSet = new HashSet();
        BitSet bitSet = new BitSet();
        for (int i = size - 1; i >= 0; i--) {
            if (!hashSet.add(Objects.requireNonNull(localAlternatingKeysAndValues[i * 2]))) {
                bitSet.set(i);
            }
        }
        if (bitSet.isEmpty()) {
            return localAlternatingKeysAndValues;
        }
        Object[] objArr = new Object[(size - bitSet.cardinality()) * 2];
        int outI = 0;
        int inI = 0;
        while (outI < size * 2) {
            if (bitSet.get(outI >>> 1)) {
                outI += 2;
            } else {
                int i2 = inI + 1;
                int i3 = outI + 1;
                objArr[inI] = Objects.requireNonNull(localAlternatingKeysAndValues[outI]);
                inI = i2 + 1;
                outI = i3 + 1;
                objArr[i2] = Objects.requireNonNull(localAlternatingKeysAndValues[i3]);
            }
        }
        return objArr;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vr != com.google.common.collect.ImmutableMap$Builder<K, V> */
    public C1993Vr<K, V> A04(Iterable<? extends Map.Entry<? extends K, ? extends V>> entries) {
        if (entries instanceof Collection) {
            A01(this.A00 + ((Collection) entries).size());
        }
        Iterator<? extends Map.Entry<? extends K, ? extends V>> it = entries.iterator();
        while (it.hasNext()) {
            A06(it.next());
        }
        return this;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vr != com.google.common.collect.ImmutableMap$Builder<K, V> */
    public C1993Vr<K, V> A05(K key, V value) {
        A01(this.A00 + 1);
        W7.A03(key, value);
        this.A04[this.A00 * 2] = key;
        this.A04[(this.A00 * 2) + 1] = value;
        this.A00++;
        return this;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vr != com.google.common.collect.ImmutableMap$Builder<K, V> */
    public C1993Vr<K, V> A06(Map.Entry<? extends K, ? extends V> entry) {
        return A05(entry.getKey(), entry.getValue());
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vr != com.google.common.collect.ImmutableMap$Builder<K, V> */
    public AbstractC1992Vq<K, V> A07() {
        return A08();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vr != com.google.common.collect.ImmutableMap$Builder<K, V> */
    public AbstractC1992Vq<K, V> A08() {
        return A00(true);
    }
}
