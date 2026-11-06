package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9X, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public final class C9X<K, V> extends AbstractC1992Vq<K, V> {
    public static String[] A03 = {"0JCoK4PZ0IyrSLrhpLXDGtW7CYJKFavd", "vVp4yGiG2pwrs9hfFSq954qopQZNS2M3", "8rm8KVIKfejszq0ftKxTGSKW9n8zRxxE", "puOB3grMAVT2N8OXlFYYxiuBKlP5LhF3", "0LpmPtXY5Q", "SzRgaK4USjqb7fE", "4VC6aP0VXaxjT", "XOemoKi8sXB6M"};
    public static final AbstractC1992Vq<Object, Object> A04 = new C9X(null, new Object[0], 0);
    public static final long serialVersionUID = 0;
    public final transient Object[] A00;
    public final transient int A01;

    @CheckForNull
    public final transient Object A02;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static <K, V> C9X<K, V> A00(int n, Object[] alternatingKeysAndValues, C1993Vr<K, V> builder) {
        Object obj;
        if (n == 0) {
            return (C9X) A04;
        }
        if (n == 1) {
            W7.A03(Objects.requireNonNull(alternatingKeysAndValues[0]), Objects.requireNonNull(alternatingKeysAndValues[1]));
            return new C9X<>(null, alternatingKeysAndValues, 1);
        }
        AbstractC2020Wu.A01(n, alternatingKeysAndValues.length >> 1);
        Object objA02 = A02(alternatingKeysAndValues, n, AbstractC14389k.A03(n), 0);
        if (objA02 instanceof Object[]) {
            Object[] objArr = (Object[]) objA02;
            C1994Vs c1994Vs = (C1994Vs) objArr[2];
            if (builder == null) {
                throw c1994Vs.A02();
            }
            builder.A01 = c1994Vs;
            obj = objArr[0];
            n = ((Integer) objArr[1]).intValue();
            alternatingKeysAndValues = Arrays.copyOf(alternatingKeysAndValues, n * 2);
        } else {
            obj = objA02;
        }
        return new C9X<>(obj, alternatingKeysAndValues, n);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9X != com.google.common.collect.RegularImmutableMap<K, V> */
    public C9X(@CheckForNull Object hashTable, Object[] alternatingKeysAndValues, int size) {
        this.A02 = hashTable;
        this.A00 = alternatingKeysAndValues;
        this.A01 = size;
    }

    @CheckForNull
    public static Object A01(@CheckForNull Object hashTableObject, @CheckForNull Object[] alternatingKeysAndValues, int size, int keyOffset, Object key) {
        if (key == null) {
            return null;
        }
        if (size == 1) {
            if (!Objects.requireNonNull(alternatingKeysAndValues[keyOffset]).equals(key)) {
                return null;
            }
            Object obj = alternatingKeysAndValues[keyOffset ^ 1];
            if (A03[0].charAt(0) == 't') {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[7] = "m74HwlRwKK5qs";
            strArr[6] = "QzZAHk8R722Mu";
            return Objects.requireNonNull(obj);
        }
        if (hashTableObject == null) {
            return null;
        }
        if (hashTableObject instanceof byte[]) {
            byte[] bArr = (byte[]) hashTableObject;
            int mask = bArr.length - 1;
            int iA00 = AbstractC1997Vv.A00(key.hashCode());
            while (true) {
                int i = iA00 & mask;
                int h = bArr[i] & 255;
                if (h == 255) {
                    return null;
                }
                if (key.equals(alternatingKeysAndValues[h])) {
                    return alternatingKeysAndValues[h ^ 1];
                }
                iA00 = i + 1;
            }
        } else if (hashTableObject instanceof short[]) {
            short[] sArr = (short[]) hashTableObject;
            int mask2 = sArr.length - 1;
            int iA002 = AbstractC1997Vv.A00(key.hashCode());
            while (true) {
                int i2 = iA002 & mask2;
                int h2 = sArr[i2] & 65535;
                if (h2 == 65535) {
                    return null;
                }
                if (key.equals(alternatingKeysAndValues[h2])) {
                    return alternatingKeysAndValues[h2 ^ 1];
                }
                iA002 = i2 + 1;
            }
        } else {
            int[] iArr = (int[]) hashTableObject;
            int mask3 = iArr.length - 1;
            int iA003 = AbstractC1997Vv.A00(key.hashCode());
            while (true) {
                int i3 = iA003 & mask3;
                int h3 = iArr[i3];
                if (h3 == -1) {
                    return null;
                }
                if (key.equals(alternatingKeysAndValues[h3])) {
                    return alternatingKeysAndValues[h3 ^ 1];
                }
                iA003 = i3 + 1;
            }
        }
    }

    @CheckForNull
    public static Object A02(Object[] alternatingKeysAndValues, int n, int tableSize, int keyOffset) {
        Object objRequireNonNull;
        int iA00;
        if (n == 1) {
            W7.A03(Objects.requireNonNull(alternatingKeysAndValues[keyOffset]), Objects.requireNonNull(alternatingKeysAndValues[keyOffset ^ 1]));
            return null;
        }
        int h = tableSize - 1;
        C1994Vs c1994Vs = null;
        int i = -1;
        if (tableSize > 128) {
            if (tableSize <= 32768) {
                short[] hashTable = new short[tableSize];
                Arrays.fill(hashTable, (short) -1);
                int i2 = 0;
                for (int i3 = 0; i3 < n; i3++) {
                    int i4 = (i3 * 2) + keyOffset;
                    int outI = (i2 * 2) + keyOffset;
                    Object objRequireNonNull2 = Objects.requireNonNull(alternatingKeysAndValues[i4]);
                    Object objRequireNonNull3 = Objects.requireNonNull(alternatingKeysAndValues[i4 ^ 1]);
                    W7.A03(objRequireNonNull2, objRequireNonNull3);
                    int iA002 = AbstractC1997Vv.A00(objRequireNonNull2.hashCode());
                    while (true) {
                        int i5 = iA002 & h;
                        int h2 = hashTable[i5] & 65535;
                        if (h2 == 65535) {
                            short s = (short) outI;
                            String[] strArr = A03;
                            if (strArr[7].length() != strArr[6].length()) {
                                throw new RuntimeException();
                            }
                            String[] strArr2 = A03;
                            strArr2[3] = "RYUuWOHldm0v9FSj6rxkYBJp8GLKyfZS";
                            strArr2[1] = "WhyHqWlMlW7EEzIF7xPF9ZB4dwDOPtto";
                            hashTable[i5] = s;
                            if (i2 < i3) {
                                alternatingKeysAndValues[outI] = objRequireNonNull2;
                                alternatingKeysAndValues[outI ^ 1] = objRequireNonNull3;
                            }
                            i2++;
                        } else {
                            Object obj = alternatingKeysAndValues[h2];
                            if (A03[4].length() == 7) {
                                throw new RuntimeException();
                            }
                            A03[2] = "132H5NZsZrg6Xqi7jtE1e9rwUTzIYkqc";
                            if (objRequireNonNull2.equals(obj)) {
                                c1994Vs = new C1994Vs(objRequireNonNull2, objRequireNonNull3, Objects.requireNonNull(alternatingKeysAndValues[h2 ^ 1]));
                                alternatingKeysAndValues[h2 ^ 1] = objRequireNonNull3;
                                break;
                            }
                            iA002 = i5 + 1;
                        }
                    }
                }
                return i2 == n ? hashTable : new Object[]{hashTable, Integer.valueOf(i2), c1994Vs};
            }
            int[] iArr = new int[tableSize];
            Arrays.fill(iArr, -1);
            int i6 = 0;
            int mask = 0;
            while (mask < n) {
                int i7 = (mask * 2) + keyOffset;
                int i8 = (i6 * 2) + keyOffset;
                Object objRequireNonNull4 = Objects.requireNonNull(alternatingKeysAndValues[i7]);
                Object key = alternatingKeysAndValues[i7 ^ 1];
                if (A03[4].length() != 7) {
                    String[] strArr3 = A03;
                    strArr3[3] = "znNdX2XpfWsTkrLTozQqyBdhAAOJURRo";
                    strArr3[1] = "JfodrNQWZAXgkCQeLodduPbNZlM3VrbX";
                    objRequireNonNull = Objects.requireNonNull(key);
                    W7.A03(objRequireNonNull4, objRequireNonNull);
                    iA00 = AbstractC1997Vv.A00(objRequireNonNull4.hashCode());
                } else {
                    objRequireNonNull = Objects.requireNonNull(key);
                    W7.A03(objRequireNonNull4, objRequireNonNull);
                    iA00 = AbstractC1997Vv.A00(objRequireNonNull4.hashCode());
                }
                while (true) {
                    int i9 = iA00 & h;
                    int outKeyIndex = iArr[i9];
                    if (outKeyIndex == i) {
                        iArr[i9] = i8;
                        if (i6 < mask) {
                            alternatingKeysAndValues[i8] = objRequireNonNull4;
                            alternatingKeysAndValues[i8 ^ 1] = objRequireNonNull;
                        }
                        i6++;
                    } else {
                        if (objRequireNonNull4.equals(alternatingKeysAndValues[outKeyIndex])) {
                            c1994Vs = new C1994Vs(objRequireNonNull4, objRequireNonNull, Objects.requireNonNull(alternatingKeysAndValues[outKeyIndex ^ 1]));
                            alternatingKeysAndValues[outKeyIndex ^ 1] = objRequireNonNull;
                            break;
                        }
                        iA00 = i9 + 1;
                        i = -1;
                    }
                }
                mask++;
                i = -1;
            }
            return i6 == n ? iArr : new Object[]{iArr, Integer.valueOf(i6), c1994Vs};
        }
        byte[] bArr = new byte[tableSize];
        Arrays.fill(bArr, (byte) -1);
        int mask2 = 0;
        for (int i10 = 0; i10 < n; i10++) {
            int i11 = (i10 * 2) + keyOffset;
            int i12 = (mask2 * 2) + keyOffset;
            Object objRequireNonNull5 = Objects.requireNonNull(alternatingKeysAndValues[i11]);
            Object objRequireNonNull6 = Objects.requireNonNull(alternatingKeysAndValues[i11 ^ 1]);
            W7.A03(objRequireNonNull5, objRequireNonNull6);
            int keyIndex = AbstractC1997Vv.A00(objRequireNonNull5.hashCode());
            while (true) {
                int keyIndex2 = keyIndex & h;
                int i13 = bArr[keyIndex2] & 255;
                if (i13 == 255) {
                    bArr[keyIndex2] = (byte) i12;
                    if (mask2 < i10) {
                        alternatingKeysAndValues[i12] = objRequireNonNull5;
                        alternatingKeysAndValues[i12 ^ 1] = objRequireNonNull6;
                    }
                    mask2++;
                } else {
                    if (objRequireNonNull5.equals(alternatingKeysAndValues[i13])) {
                        c1994Vs = new C1994Vs(objRequireNonNull5, objRequireNonNull6, Objects.requireNonNull(alternatingKeysAndValues[i13 ^ 1]));
                        alternatingKeysAndValues[i13 ^ 1] = objRequireNonNull6;
                        break;
                    }
                    keyIndex = keyIndex2 + 1;
                }
            }
        }
        return mask2 == n ? bArr : new Object[]{bArr, Integer.valueOf(mask2), c1994Vs};
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9X != com.google.common.collect.RegularImmutableMap<K, V> */
    @Override // com.facebook.ads.redexgen.X.AbstractC1992Vq
    public final AbstractC1995Vt<V> A0A() {
        return new C4U(this.A00, 1, this.A01);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9X != com.google.common.collect.RegularImmutableMap<K, V> */
    @Override // com.facebook.ads.redexgen.X.AbstractC1992Vq
    public final AbstractC14389k<Map.Entry<K, V>> A0D() {
        return new C4W(this, this.A00, 0, this.A01);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9X != com.google.common.collect.RegularImmutableMap<K, V> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9l != com.google.common.collect.ImmutableList<K> */
    @Override // com.facebook.ads.redexgen.X.AbstractC1992Vq
    public final AbstractC14389k<K> A0E() {
        final C4U c4u = new C4U(this.A00, 0, this.A01);
        return new AbstractC14389k<K>(this, c4u) { // from class: com.facebook.ads.redexgen.X.4V
            public final transient AbstractC14399l<K> A00;
            public final transient AbstractC1992Vq<K, ?> A01;

            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.4V != com.google.common.collect.RegularImmutableMap$KeySet<K> */
            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9l != com.google.common.collect.ImmutableList<K> */
            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vq != com.google.common.collect.ImmutableMap<K, ?> */
            {
                this.A01 = this;
                this.A00 = c4u;
            }

            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.4V != com.google.common.collect.RegularImmutableMap$KeySet<K> */
            @Override // com.facebook.ads.redexgen.X.AbstractC1995Vt
            public final int A0I(Object[] dst, int offset) {
                return A0J().A0I(dst, offset);
            }

            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.4V != com.google.common.collect.RegularImmutableMap$KeySet<K> */
            @Override // com.facebook.ads.redexgen.X.AbstractC14389k, com.facebook.ads.redexgen.X.AbstractC1995Vt
            public final AbstractC14399l<K> A0J() {
                return this.A00;
            }

            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.4V != com.google.common.collect.RegularImmutableMap$KeySet<K> */
            @Override // com.facebook.ads.redexgen.X.AbstractC1995Vt
            public final boolean A0K() {
                return true;
            }

            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.4V != com.google.common.collect.RegularImmutableMap$KeySet<K> */
            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            /* JADX INFO: renamed from: A0N */
            public final VV<K> iterator() {
                return A0J().iterator();
            }

            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.4V != com.google.common.collect.RegularImmutableMap$KeySet<K> */
            @Override // com.facebook.ads.redexgen.X.AbstractC1995Vt, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean contains(@CheckForNull Object object) {
                return this.A01.get(object) != null;
            }

            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.4V != com.google.common.collect.RegularImmutableMap$KeySet<K> */
            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final int size() {
                return this.A01.size();
            }
        };
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9X != com.google.common.collect.RegularImmutableMap<K, V> */
    @Override // com.facebook.ads.redexgen.X.AbstractC1992Vq
    public final boolean A0F() {
        return false;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9X != com.google.common.collect.RegularImmutableMap<K, V> */
    @Override // com.facebook.ads.redexgen.X.AbstractC1992Vq, java.util.Map
    @CheckForNull
    public final V get(@CheckForNull Object obj) {
        V v = (V) A01(this.A02, this.A00, this.A01, 0, obj);
        if (v == null) {
            return null;
        }
        return v;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9X != com.google.common.collect.RegularImmutableMap<K, V> */
    @Override // java.util.Map
    public final int size() {
        return this.A01;
    }
}
