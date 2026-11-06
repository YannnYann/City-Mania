package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.common.collect.ParametricNullness;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import javax.annotation.CheckForNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Vn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class AbstractC1989Vn {
    public static byte[] A00;
    public static String[] A01 = {"9N6fClpvr5LogfhEoC3Ym2ZOcMEkPqse", "x6vATfT7Vf", "aFaZ9dc", "0MkqZTlH9L2nw01RphYptsRi2kX68x5e", "l3MmWfWW1bK2VQW7K4iTAOafgi6wKvuU", "qUnT2LTLLCOBUNZqrcPphJ4Y9y0yxiuE", "FSwRZrZn60", "Ot1RG"};

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A01;
            if (strArr[6].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[4] = "e39X5axlEPHpWOZwt6dGSAqI6KpvofZo";
            strArr2[5] = "PyZJSPVIBtkFnrexwHSJUxDm1MLb3Emp";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 92);
            i4++;
        }
    }

    public static void A08() {
        A00 = new byte[]{49, 51, 38, 37, 42, 36, 34, 53, 38};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static <T> boolean A0B(Iterator<T> iterator, InterfaceC2019Wt<? super T> predicate) {
        return A00(iterator, predicate) != -1;
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static boolean A0F(Iterator<?> iterator1, Iterator<?> iterator2) {
        while (iterator1.hasNext()) {
            if (!iterator2.hasNext() || !A6.A01(iterator1.next(), iterator2.next())) {
                return false;
            }
        }
        return !iterator2.hasNext();
    }

    static {
        A08();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x002a, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Wt != com.google.common.base.Predicate<? super T> */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static <T> int A00(java.util.Iterator<T> r5, com.facebook.ads.redexgen.X.InterfaceC2019Wt<? super T> r6) {
        /*
            r2 = 0
            r1 = 9
            r0 = 101(0x65, float:1.42E-43)
            java.lang.String r0 = A07(r2, r1, r0)
            com.facebook.ads.redexgen.X.AbstractC2020Wu.A05(r6, r0)
            r4 = 0
        Ld:
            boolean r3 = r5.hasNext()
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC1989Vn.A01
            r0 = 3
            r1 = r2[r0]
            r0 = 0
            r2 = r2[r0]
            r0 = 31
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L2b
        L25:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L2b:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC1989Vn.A01
            java.lang.String r1 = "qkIcI"
            r0 = 7
            r2[r0] = r1
            if (r3 == 0) goto L5b
            java.lang.Object r0 = r5.next()
            boolean r3 = r6.A4d(r0)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.AbstractC1989Vn.A01
            r0 = 2
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 25
            if (r1 == r0) goto L25
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC1989Vn.A01
            java.lang.String r1 = "KgpdcHP4Qu3Yo9bGKYk4wIx2No7jT03e"
            r0 = 3
            r2[r0] = r1
            java.lang.String r1 = "fT447mfK0jSIpwOFgxTZmIAvIDIY5xBe"
            r0 = 0
            r2[r0] = r1
            if (r3 == 0) goto L58
            return r4
        L58:
            int r4 = r4 + 1
            goto Ld
        L5b:
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC1989Vn.A00(java.util.Iterator, com.facebook.ads.redexgen.X.Wt):int");
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Wt != com.google.common.base.Predicate<? super T> */
    public static <T> VV<T> A01(final Iterator<T> unfiltered, final InterfaceC2019Wt<? super T> retainIfTrue) {
        AbstractC2020Wu.A04(unfiltered);
        AbstractC2020Wu.A04(retainIfTrue);
        return new A2<T>() { // from class: com.facebook.ads.redexgen.X.4c
            public static String[] A02 = {"PY0ykusbaAzaA0tdkuvjz0VYH", "h7aoUrwlHY9NGl5V3azO8LhtwV4y8foG", "25zZmy69rHYb2WrLrifApLhpHCniZbXh", "f06ulwQ2X5IERHUfRYMq5r1GFhmBB2J1", "", "LVKko7v5T", "6ykFsfQ2ClQma73S90yp2Rj3IMh9zHwC", "16ZsLBVPK0yZwF"};

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // com.facebook.ads.redexgen.X.A2
            @CheckForNull
            public final T A02() {
                T t;
                do {
                    boolean zHasNext = unfiltered.hasNext();
                    if (A02[5].length() == 3) {
                        throw new RuntimeException();
                    }
                    A02[6] = "Y0rbe9DkfNE9HDv49VA4209Q8w546LLU";
                    if (zHasNext) {
                        t = (T) unfiltered.next();
                    } else {
                        return A01();
                    }
                } while (!retainIfTrue.A4d(t));
                return t;
            }
        };
    }

    public static <T> Iterator<T> A02() {
        return EnumC1990Vo.A02;
    }

    public static <T> VV<T> A03(@ParametricNullness final T value) {
        return new VV<T>(value) { // from class: com.facebook.ads.redexgen.X.9j
            public boolean A00;
            public final T A01;

            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9j != com.google.common.collect.Iterators$SingletonIterator<T> */
            {
                this.A01 = value;
            }

            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9j != com.google.common.collect.Iterators$SingletonIterator<T> */
            @Override // java.util.Iterator
            public final boolean hasNext() {
                return !this.A00;
            }

            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9j != com.google.common.collect.Iterators$SingletonIterator<T> */
            @Override // java.util.Iterator
            @ParametricNullness
            public final T next() {
                if (!this.A00) {
                    this.A00 = true;
                    return this.A01;
                }
                throw new NoSuchElementException();
            }
        };
    }

    @CheckForNull
    public static <T> T A04(Iterator<T> iterator) {
        if (iterator.hasNext()) {
            T result = iterator.next();
            iterator.remove();
            return result;
        }
        return null;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Wt != com.google.common.base.Predicate<? super T> */
    @ParametricNullness
    public static <T> T A05(Iterator<T> iterator, InterfaceC2019Wt<? super T> predicate) {
        AbstractC2020Wu.A04(iterator);
        AbstractC2020Wu.A04(predicate);
        while (iterator.hasNext()) {
            T next = iterator.next();
            boolean zA4d = predicate.A4d(next);
            String[] strArr = A01;
            if (strArr[6].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[3] = "TLTDT0em8OPGsvbXN9kIxspoKISGsM7e";
            strArr2[0] = "UEE5niBFp0Eu5JfZ6Tbd8HeREOlvLCve";
            if (zA4d) {
                return next;
            }
        }
        throw new NoSuchElementException();
    }

    @ParametricNullness
    public static <T> T A06(@ParametricNullness Iterator<? extends T> iterator, T defaultValue) {
        if (!iterator.hasNext()) {
            return defaultValue;
        }
        T defaultValue2 = iterator.next();
        return defaultValue2;
    }

    public static void A09(Iterator<?> iterator) {
        AbstractC2020Wu.A04(iterator);
        while (iterator.hasNext()) {
            iterator.next();
            iterator.remove();
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x000b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static <T> boolean A0A(java.util.Collection<T> r2, java.util.Iterator<? extends T> r3) {
        /*
            com.facebook.ads.redexgen.X.AbstractC2020Wu.A04(r2)
            com.facebook.ads.redexgen.X.AbstractC2020Wu.A04(r3)
            r1 = 0
        L7:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L17
            java.lang.Object r0 = r3.next()
            boolean r0 = r2.add(r0)
            r1 = r1 | r0
            goto L7
        L17:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC1989Vn.A0A(java.util.Collection, java.util.Iterator):boolean");
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Wt != com.google.common.base.Predicate<? super T> */
    /* JADX WARN: Incorrect condition in loop: B:4:0x0008 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static <T> boolean A0C(java.util.Iterator<T> r3, com.facebook.ads.redexgen.X.InterfaceC2019Wt<? super T> r4) {
        /*
            com.facebook.ads.redexgen.X.AbstractC2020Wu.A04(r4)
            r1 = 0
        L4:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L38
            java.lang.Object r0 = r3.next()
            boolean r0 = r4.A4d(r0)
            if (r0 == 0) goto L4
            r3.remove()
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.AbstractC1989Vn.A01
            r0 = 2
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 25
            if (r1 == r0) goto L32
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC1989Vn.A01
            java.lang.String r1 = "sMZfE14AwjxZOYQOlM9o8PsdLIVrvXme"
            r0 = 3
            r2[r0] = r1
            java.lang.String r1 = "mLE0wws09Z1jmvTbLn99AUGk1x8kjTve"
            r0 = 0
            r2[r0] = r1
            r1 = 1
            goto L4
        L32:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L38:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC1989Vn.A0C(java.util.Iterator, com.facebook.ads.redexgen.X.Wt):boolean");
    }

    public static boolean A0D(@CheckForNull Iterator<?> iterator, Object element) {
        if (element == null) {
            while (iterator.hasNext()) {
                if (iterator.next() == null) {
                    return true;
                }
            }
            return false;
        }
        while (iterator.hasNext()) {
            boolean zEquals = element.equals(iterator.next());
            String[] strArr = A01;
            if (strArr[6].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            A01[7] = "MSXYr";
            if (zEquals) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0008 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean A0E(java.util.Iterator<?> r5, java.util.Collection<?> r6) {
        /*
            com.facebook.ads.redexgen.X.AbstractC2020Wu.A04(r6)
            r4 = 0
        L4:
            boolean r0 = r5.hasNext()
            if (r0 == 0) goto L6d
            java.lang.Object r3 = r5.next()
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC1989Vn.A01
            r0 = 3
            r1 = r2[r0]
            r0 = 0
            r2 = r2[r0]
            r0 = 31
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L28
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L28:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC1989Vn.A01
            java.lang.String r1 = "BHcJFk2XLj"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "0i5THSQWJg"
            r0 = 1
            r2[r0] = r1
            boolean r0 = r6.contains(r3)
            if (r0 == 0) goto L4
            r5.remove()
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC1989Vn.A01
            r0 = 4
            r1 = r2[r0]
            r0 = 5
            r2 = r2[r0]
            r0 = 13
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L5f
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC1989Vn.A01
            java.lang.String r1 = "eL5kF2HBDH4ajEUG2G4UVtUleJgFeXO0"
            r0 = 4
            r2[r0] = r1
            java.lang.String r1 = "Y3CBehoSs3ZNPfORsVFCdKcVWTzjmRHZ"
            r0 = 5
            r2[r0] = r1
            r4 = 1
            goto L4
        L5f:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC1989Vn.A01
            java.lang.String r1 = "tvqKMKL5Tu5RfYCa2YiDxaKi6ksjwumI"
            r0 = 4
            r2[r0] = r1
            java.lang.String r1 = "kw1WU0ltlxVitFrDWdz1MX63AdvZ1m2E"
            r0 = 5
            r2[r0] = r1
            r4 = 0
            goto L4
        L6d:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC1989Vn.A0E(java.util.Iterator, java.util.Collection):boolean");
    }
}
