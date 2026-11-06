package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9n, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC14419n<E> extends AbstractC1996Vu<E> {
    public static byte[] A03;
    public static String[] A04 = {"5WA4o", "kLEm7uQrw7wXVeOTBlB901JKynqSVQKC", "92QNMMwB5tdcBroQcmhj13poNxwhGWqK", "4qtFDuytyeSziXURfqWjdFmUvI8NTbm7", "H6nlSewXnv5VCNeVwKxgWQjoP0FQ2GNY", "80AOtROsDD", "V", "eyu6VUc1NfxvoYaLMC3xI4ViJIkpz0xI"};
    public int A00;
    public boolean A01;
    public Object[] A02;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 117);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{66, 71, 66, 77, 66, 58, 69, 28, 58, 73, 58, 60, 66, 77, 82};
    }

    static {
        A01();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9n != com.google.common.collect.ImmutableCollection$ArrayBasedBuilder<E> */
    public AbstractC14419n(int initialCapacity) {
        W7.A00(initialCapacity, A00(0, 15, 100));
        this.A02 = new Object[initialCapacity];
        this.A00 = 0;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9n != com.google.common.collect.ImmutableCollection$ArrayBasedBuilder<E> */
    private void A02(int newElements) {
        Object[] objArr = this.A02;
        int iA03 = AbstractC1996Vu.A03(objArr.length, this.A00 + newElements);
        if (iA03 <= objArr.length) {
            boolean z = this.A01;
            int newCapacity = A04[3].charAt(24);
            if (newCapacity == 66) {
                throw new RuntimeException();
            }
            A04[5] = "Z8cvLeIpo1";
            if (!z) {
                return;
            }
        }
        Object[] contents = this.A02;
        this.A02 = Arrays.copyOf(contents, iA03);
        this.A01 = false;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9n != com.google.common.collect.ImmutableCollection$ArrayBasedBuilder<E> */
    public AbstractC14419n<E> A03(E element) {
        AbstractC2020Wu.A04(element);
        A02(1);
        Object[] objArr = this.A02;
        int i = this.A00;
        this.A00 = i + 1;
        objArr[i] = element;
        return this;
    }
}
