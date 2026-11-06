package com.unity3d.ads.core.data.model;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: CacheSource.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class CacheSource {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CacheSource[] $VALUES;
    public static final CacheSource LOCAL = new CacheSource("LOCAL", 0);
    public static final CacheSource REMOTE = new CacheSource("REMOTE", 1);

    private static final /* synthetic */ CacheSource[] $values() {
        return new CacheSource[]{LOCAL, REMOTE};
    }

    public static EnumEntries<CacheSource> getEntries() {
        return $ENTRIES;
    }

    private CacheSource(String str, int i) {
    }

    static {
        CacheSource[] cacheSourceArr$values = $values();
        $VALUES = cacheSourceArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(cacheSourceArr$values);
    }

    public static CacheSource valueOf(String str) {
        return (CacheSource) Enum.valueOf(CacheSource.class, str);
    }

    public static CacheSource[] values() {
        return (CacheSource[]) $VALUES.clone();
    }
}
