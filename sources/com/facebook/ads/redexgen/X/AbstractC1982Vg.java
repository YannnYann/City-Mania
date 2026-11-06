package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Vg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class AbstractC1982Vg<K0, V0> {
    public static byte[] A00;

    static {
        A04();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 75);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A00 = new byte[]{-44, -25, -33, -44, -46, -29, -44, -45, -70, -44, -24, -30};
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vg != com.google.common.collect.MultimapBuilder<K0, V0> */
    public AbstractC1982Vg() {
    }

    public static AbstractC1983Vh<Object> A00(final int expectedKeys) {
        W7.A00(expectedKeys, A03(0, 12, 36));
        return new AbstractC1983Vh<Object>() { // from class: com.facebook.ads.redexgen.X.9c
            @Override // com.facebook.ads.redexgen.X.AbstractC1983Vh
            public final <K, V> Map<K, Collection<V>> A04() {
                return AbstractC1978Va.A00(expectedKeys);
            }
        };
    }

    public static <K0> AbstractC1983Vh<K0> A01(final Comparator<K0> comparator) {
        AbstractC2020Wu.A04(comparator);
        return new AbstractC1983Vh<K0>() { // from class: com.facebook.ads.redexgen.X.9b
            @Override // com.facebook.ads.redexgen.X.AbstractC1983Vh
            public final <K extends K0, V> Map<K, Collection<V>> A04() {
                return new TreeMap(comparator);
            }
        };
    }

    public static AbstractC1983Vh<Comparable> A02() {
        return A01(AbstractC1979Vc.A03());
    }
}
