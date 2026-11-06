package com.unity3d.services.core.network.model;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: BodyType.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class BodyType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ BodyType[] $VALUES;
    public static final BodyType UNKNOWN = new BodyType("UNKNOWN", 0);
    public static final BodyType STRING = new BodyType("STRING", 1);

    private static final /* synthetic */ BodyType[] $values() {
        return new BodyType[]{UNKNOWN, STRING};
    }

    public static EnumEntries<BodyType> getEntries() {
        return $ENTRIES;
    }

    private BodyType(String str, int i) {
    }

    static {
        BodyType[] bodyTypeArr$values = $values();
        $VALUES = bodyTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(bodyTypeArr$values);
    }

    public static BodyType valueOf(String str) {
        return (BodyType) Enum.valueOf(BodyType.class, str);
    }

    public static BodyType[] values() {
        return (BodyType[]) $VALUES.clone();
    }
}
