package com.unity3d.ads.core.data.model;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: StorageType.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class StorageType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ StorageType[] $VALUES;
    public static final StorageType EXTERNAL = new StorageType("EXTERNAL", 0);
    public static final StorageType INTERNAL = new StorageType("INTERNAL", 1);

    private static final /* synthetic */ StorageType[] $values() {
        return new StorageType[]{EXTERNAL, INTERNAL};
    }

    public static EnumEntries<StorageType> getEntries() {
        return $ENTRIES;
    }

    private StorageType(String str, int i) {
    }

    static {
        StorageType[] storageTypeArr$values = $values();
        $VALUES = storageTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(storageTypeArr$values);
    }

    public static StorageType valueOf(String str) {
        return (StorageType) Enum.valueOf(StorageType.class, str);
    }

    public static StorageType[] values() {
        return (StorageType[]) $VALUES.clone();
    }
}
