package io.blueflower.stapel2d.util;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class BuilderGroup<T> extends Builder<T> {
    public List<Builder<T>> builders;

    public BuilderGroup(T t) {
        super(t);
        this.builders = new ArrayList();
    }

    public void addBuilder(Builder<T> builder) {
        this.builders.add(builder);
    }

    @Override // io.blueflower.stapel2d.util.Builder
    public void build() {
        Iterator<Builder<T>> it = this.builders.iterator();
        while (it.hasNext()) {
            it.next().build();
        }
        Iterator<Builder<T>> it2 = this.builders.iterator();
        while (it2.hasNext()) {
            it2.next().release();
        }
    }
}
