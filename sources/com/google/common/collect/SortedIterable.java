package com.google.common.collect;

import java.util.Comparator;

/* JADX INFO: loaded from: classes3.dex */
public interface SortedIterable<T> extends Iterable<T> {
    Comparator<? super T> comparator();
}
