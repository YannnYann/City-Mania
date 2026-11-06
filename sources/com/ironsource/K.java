package com.ironsource;

import com.ironsource.C3809r0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class K {
    private final int a;
    private final List<I> b = new CopyOnWriteArrayList();

    public K(int i) {
        this.a = i;
    }

    private final boolean b() {
        return this.a == 0;
    }

    private final boolean c() {
        return this.a != -1;
    }

    public final void a(I i) {
        if (b()) {
            return;
        }
        if (a()) {
            CollectionsKt__MutableCollectionsKt.removeFirstOrNull(this.b);
        }
        if (i == null) {
            i = new I(C3809r0.a.f);
        }
        this.b.add(i);
    }

    public final String d() {
        List<I> list = this.b;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((I) it.next()).b().ordinal()));
        }
        return CollectionsKt___CollectionsKt.joinToString$default(arrayList, ",", null, null, 0, null, null, 62, null);
    }

    private final boolean a() {
        return c() && this.b.size() >= this.a;
    }
}
