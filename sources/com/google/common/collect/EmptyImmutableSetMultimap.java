package com.google.common.collect;

import java.util.Collection;

/* JADX INFO: loaded from: classes3.dex */
public class EmptyImmutableSetMultimap extends ImmutableSetMultimap<Object, Object> {
    public static final EmptyImmutableSetMultimap INSTANCE = new EmptyImmutableSetMultimap();

    public EmptyImmutableSetMultimap() {
        super(ImmutableMap.of(), 0, null);
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public ImmutableMap<Object, Collection<Object>> asMap() {
        return super.asMap();
    }
}
