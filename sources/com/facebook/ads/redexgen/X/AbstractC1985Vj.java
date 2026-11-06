package com.facebook.ads.redexgen.X;

import com.google.android.gms.common.api.Api;
import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.common.collect.ParametricNullness;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Vj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class AbstractC1985Vj {
    public static byte[] A00;
    public static String[] A01 = {"mAiG95c3PV6PZIbr7CcPZ2Ck9GyMUpyZ", "lw1YZWJ7U1azUuYYKbHXMkT4U3dm1VrT", "aobcnUjLVsEBWzcZtt7kfs9RrWYxZtyr", "ImQAKjjqLJZmYiBF", "uvOQvbJY9PZ3K3nvM", "gEpMLyAnmLcugNo9FYFiqlLdewCmgbEy", "MN0b4tvR", "A6MYtCMGqLq8yCAegpkwWAUcqV2auHKn"};

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @CheckForNull
    public static <V> V A05(@CheckForNull Map<?, V> map, Object key) {
        AbstractC2020Wu.A04(map);
        try {
            return map.get(key);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @CheckForNull
    public static <V> V A06(@CheckForNull Map<?, V> map, Object key) {
        AbstractC2020Wu.A04(map);
        try {
            return map.remove(key);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 77);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A09() {
        A00 = new byte[]{12, 0, 101, 120, 112, 101, 99, 116, 101, 100, 83, 105, 122, 101};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static boolean A0B(@CheckForNull Map<?, ?> map, Object object) {
        if (map == object) {
            return true;
        }
        if (object instanceof Map) {
            return map.entrySet().equals(((Map) object).entrySet());
        }
        return false;
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static boolean A0C(@CheckForNull Map<?, ?> map, Object key) {
        AbstractC2020Wu.A04(map);
        try {
            return map.containsKey(key);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    static {
        A09();
    }

    public static int A00(int expectedSize) {
        if (expectedSize < 3) {
            W7.A00(expectedSize, A07(2, 12, 77));
            return expectedSize + 1;
        }
        if (expectedSize < 1073741824) {
            return (int) Math.ceil(((double) expectedSize) / 0.75d);
        }
        return Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    public static <K, V> Map.Entry<K, V> A01(@ParametricNullness K key, @ParametricNullness V value) {
        return new C14409m(key, value);
    }

    public static <K, V> Iterator<K> A02(final Iterator<Map.Entry<K, V>> entryIterator) {
        return new VW<Map.Entry<K, V>, K>(entryIterator) { // from class: com.facebook.ads.redexgen.X.9h
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.VW
            @ParametricNullness
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final K A01(Map.Entry<K, V> entry) {
                return entry.getKey();
            }
        };
    }

    public static <K, V> Iterator<V> A03(final Iterator<Map.Entry<K, V>> entryIterator) {
        return new VW<Map.Entry<K, V>, V>(entryIterator) { // from class: com.facebook.ads.redexgen.X.9g
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.VW
            @ParametricNullness
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final V A01(Map.Entry<K, V> entry) {
                return entry.getValue();
            }
        };
    }

    public static <V> InterfaceC2023Wy<Map.Entry<?, V>, V> A04() {
        return EnumC14339f.A04;
    }

    public static String A08(Map<?, ?> map) {
        StringBuilder sbAppend = W5.A01(map.size()).append('{');
        boolean z = true;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            if (!z) {
                sbAppend.append(A07(0, 2, 109));
            }
            z = false;
            sbAppend.append(entry.getKey()).append(com.ironsource.G5.U).append(entry.getValue());
        }
        StringBuilder sbAppend2 = sbAppend.append('}');
        if (A01[4].length() != 17) {
            throw new RuntimeException();
        }
        A01[4] = "WvXOrP2Pule709zdu";
        return sbAppend2.toString();
    }

    public static boolean A0A(@CheckForNull Map<?, ?> map, Object value) {
        return AbstractC1989Vn.A0D(A03(map.entrySet().iterator()), value);
    }
}
