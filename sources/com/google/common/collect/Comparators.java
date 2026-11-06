package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Comparator;

/* JADX INFO: loaded from: classes3.dex */
public final class Comparators {
    public static <T, S extends T> Comparator<Iterable<S>> lexicographical(Comparator<T> comparator) {
        return new LexicographicalOrdering((Comparator) Preconditions.checkNotNull(comparator));
    }

    public static <T extends Comparable<? super T>> T max(T a, T b) {
        return a.compareTo(b) >= 0 ? a : b;
    }
}
