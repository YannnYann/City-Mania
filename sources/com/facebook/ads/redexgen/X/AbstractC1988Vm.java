package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import javax.annotation.CheckForNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Vm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class AbstractC1988Vm {
    public static int A00(@CheckForNull List<?> list, Object element) {
        if (list instanceof RandomAccess) {
            return A02(list, element);
        }
        ListIterator<?> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            if (A6.A01(element, listIterator.next())) {
                return listIterator.previousIndex();
            }
        }
        return -1;
    }

    public static int A01(@CheckForNull List<?> list, Object element) {
        if (list instanceof RandomAccess) {
            return A03(list, element);
        }
        ListIterator<?> listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            if (A6.A01(element, listIterator.previous())) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    public static int A02(@CheckForNull List<?> list, Object element) {
        int size = list.size();
        if (element == null) {
            for (int i = 0; i < size; i++) {
                if (list.get(i) == null) {
                    return i;
                }
            }
            return -1;
        }
        for (int i2 = 0; i2 < size; i2++) {
            if (element.equals(list.get(i2))) {
                return i2;
            }
        }
        return -1;
    }

    public static int A03(@CheckForNull List<?> list, Object element) {
        if (element == null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                if (list.get(size) == null) {
                    return size;
                }
            }
            return -1;
        }
        int i = list.size();
        for (int i2 = i - 1; i2 >= 0; i2--) {
            if (element.equals(list.get(i2))) {
                return i2;
            }
        }
        return -1;
    }

    public static <E> ArrayList<E> A04() {
        return new ArrayList<>();
    }

    public static <E> ArrayList<E> A05(Iterator<? extends E> elements) {
        ArrayList<E> list = A04();
        AbstractC1989Vn.A0A(list, elements);
        return list;
    }

    public static boolean A06(@CheckForNull List<?> thisList, Object other) {
        if (other == AbstractC2020Wu.A04(thisList)) {
            return true;
        }
        if (!(other instanceof List)) {
            return false;
        }
        List<?> thisList2 = (List) other;
        int size = thisList.size();
        if (size != thisList2.size()) {
            return false;
        }
        if ((thisList instanceof RandomAccess) && (thisList2 instanceof RandomAccess)) {
            for (int i = 0; i < size; i++) {
                if (!A6.A01(thisList.get(i), thisList2.get(i))) {
                    return false;
                }
            }
            return true;
        }
        return AbstractC1989Vn.A0F(thisList.iterator(), thisList2.iterator());
    }
}
