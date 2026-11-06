package com.unity3d.ads.core.data.model;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: AdRevenueOrigin.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AdRevenueOrigin {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AdRevenueOrigin[] $VALUES;
    public static final AdRevenueOrigin AUTOMATIC_COLLECTION = new AdRevenueOrigin("AUTOMATIC_COLLECTION", 0);

    private static final /* synthetic */ AdRevenueOrigin[] $values() {
        return new AdRevenueOrigin[]{AUTOMATIC_COLLECTION};
    }

    public static EnumEntries<AdRevenueOrigin> getEntries() {
        return $ENTRIES;
    }

    private AdRevenueOrigin(String str, int i) {
    }

    static {
        AdRevenueOrigin[] adRevenueOriginArr$values = $values();
        $VALUES = adRevenueOriginArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(adRevenueOriginArr$values);
    }

    public static AdRevenueOrigin valueOf(String str) {
        return (AdRevenueOrigin) Enum.valueOf(AdRevenueOrigin.class, str);
    }

    public static AdRevenueOrigin[] values() {
        return (AdRevenueOrigin[]) $VALUES.clone();
    }
}
