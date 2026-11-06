package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.errorprone.annotations.DoNotMock;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.SortedMap;
import javax.annotation.CheckForNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Vq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@DoNotMock
@ElementTypesAreNonnullByDefault
public abstract class AbstractC1992Vq<K, V> implements Map<K, V>, Serializable {
    public static byte[] A03 = null;
    public static String[] A04 = {"RbFvzwdJEDOKyx8H1hRwr", "gLvi", "wJ4SG4DiMC070d1W", "PXkywC9TsqaxthLd", "RjnCDL70BkhAf2WJnrMAr66K4ZNhbVA1", "6uBDV4rzP2JvdhUhMQE7yjU5q6AF3V0d", "uAyDx2lRXdmrkzhY", "7PuuOn72NJ8xuE5lhqBHD629fv8hvq"};
    public static final Map.Entry<?, ?>[] A05;
    public static final long serialVersionUID = 912559;

    @CheckForNull
    @LazyInit
    public transient AbstractC1995Vt<V> A00;

    @CheckForNull
    @LazyInit
    public transient AbstractC14389k<Map.Entry<K, V>> A01;

    @CheckForNull
    @LazyInit
    public transient AbstractC14389k<K> A02;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static <K, V> AbstractC1992Vq<K, V> A05(Iterable<? extends Map.Entry<? extends K, ? extends V>> entries) {
        C1993Vr c1993Vr = new C1993Vr(entries instanceof Collection ? ((Collection) entries).size() : 4);
        c1993Vr.A04(entries);
        return c1993Vr.A07();
    }

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = (bArrCopyOfRange[i4] - i3) - 112;
            if (A04[7].length() != 30) {
                throw new RuntimeException();
            }
            A04[1] = "jPE";
            bArrCopyOfRange[i4] = (byte) i5;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A08() {
        A03 = new byte[]{-50, -20, -34, -103, -52, -34, -21, -30, -38, -27, -30, -13, -34, -35, -65, -24, -21, -26};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // java.util.Map
    /* JADX INFO: renamed from: A09, reason: merged with bridge method [inline-methods] */
    public AbstractC1995Vt<V> values() {
        AbstractC1995Vt<V> abstractC1995Vt = this.A00;
        if (abstractC1995Vt != null) {
            return abstractC1995Vt;
        }
        AbstractC1995Vt<V> abstractC1995VtA0A = A0A();
        this.A00 = abstractC1995VtA0A;
        return abstractC1995VtA0A;
    }

    public abstract AbstractC1995Vt<V> A0A();

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // java.util.Map
    /* JADX INFO: renamed from: A0B, reason: merged with bridge method [inline-methods] */
    public AbstractC14389k<Map.Entry<K, V>> entrySet() {
        AbstractC14389k<Map.Entry<K, V>> abstractC14389k = this.A01;
        if (abstractC14389k != null) {
            return abstractC14389k;
        }
        AbstractC14389k<Map.Entry<K, V>> abstractC14389kA0D = A0D();
        this.A01 = abstractC14389kA0D;
        return abstractC14389kA0D;
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // java.util.Map
    /* JADX INFO: renamed from: A0C, reason: merged with bridge method [inline-methods] */
    public AbstractC14389k<K> keySet() {
        AbstractC14389k<K> abstractC14389k = this.A02;
        if (abstractC14389k != null) {
            return abstractC14389k;
        }
        AbstractC14389k<K> abstractC14389kA0E = A0E();
        this.A02 = abstractC14389kA0E;
        return abstractC14389kA0E;
    }

    public abstract AbstractC14389k<Map.Entry<K, V>> A0D();

    public abstract AbstractC14389k<K> A0E();

    public abstract boolean A0F();

    @Override // java.util.Map
    @CheckForNull
    public abstract V get(@CheckForNull Object key);

    static {
        A08();
        A05 = new Map.Entry[0];
    }

    public static <K, V> C1993Vr<K, V> A03() {
        return new C1993Vr<>();
    }

    public static <K, V> AbstractC1992Vq<K, V> A04() {
        AbstractC1992Vq<K, V> abstractC1992Vq = (AbstractC1992Vq<K, V>) C9X.A04;
        if (A04[6].length() != 16) {
            throw new RuntimeException();
        }
        String[] strArr = A04;
        strArr[2] = "KczvPZKCOxXZmzsX";
        strArr[3] = "z6iwHJiMzCNPGuEM";
        return abstractC1992Vq;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vq != com.google.common.collect.ImmutableMap<K, V> */
    public static <K, V> AbstractC1992Vq<K, V> A06(Map<? extends K, ? extends V> map) {
        if ((map instanceof AbstractC1992Vq) && !(map instanceof SortedMap)) {
            AbstractC1992Vq<K, V> abstractC1992Vq = (AbstractC1992Vq) map;
            if (!abstractC1992Vq.A0F()) {
                return abstractC1992Vq;
            }
        }
        return A05(map.entrySet());
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vq != com.google.common.collect.ImmutableMap<K, V> */
    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vq != com.google.common.collect.ImmutableMap<K, V> */
    @Override // java.util.Map
    public boolean containsKey(@CheckForNull Object key) {
        return get(key) != null;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vq != com.google.common.collect.ImmutableMap<K, V> */
    @Override // java.util.Map
    public final boolean containsValue(@CheckForNull Object value) {
        return values().contains(value);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vq != com.google.common.collect.ImmutableMap<K, V> */
    @Override // java.util.Map
    public boolean equals(@CheckForNull Object object) {
        return AbstractC1985Vj.A0B(this, object);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vq != com.google.common.collect.ImmutableMap<K, V> */
    @Override // java.util.Map
    @CheckForNull
    public final V getOrDefault(@CheckForNull Object key, @CheckForNull V defaultValue) {
        V result = get(key);
        if (result != null) {
            return result;
        }
        return defaultValue;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vq != com.google.common.collect.ImmutableMap<K, V> */
    @Override // java.util.Map
    public int hashCode() {
        return VX.A00(entrySet());
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vq != com.google.common.collect.ImmutableMap<K, V> */
    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vq != com.google.common.collect.ImmutableMap<K, V> */
    @Override // java.util.Map
    @CheckForNull
    @Deprecated
    public final V put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vq != com.google.common.collect.ImmutableMap<K, V> */
    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vq != com.google.common.collect.ImmutableMap<K, V> */
    private void readObject(ObjectInputStream stream) throws InvalidObjectException {
        throw new InvalidObjectException(A07(0, 18, 9));
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vq != com.google.common.collect.ImmutableMap<K, V> */
    @Override // java.util.Map
    @CheckForNull
    @Deprecated
    public final V remove(@CheckForNull Object o) {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vq != com.google.common.collect.ImmutableMap<K, V> */
    public final String toString() {
        return AbstractC1985Vj.A08(this);
    }
}
