package com.unity3d.ads.core.data.model;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: AdObject.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AdObjectState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AdObjectState[] $VALUES;
    public static final AdObjectState INIT = new AdObjectState("INIT", 0);
    public static final AdObjectState LOADED = new AdObjectState("LOADED", 1);
    public static final AdObjectState SHOWING = new AdObjectState("SHOWING", 2);
    public static final AdObjectState EXPIRED = new AdObjectState("EXPIRED", 3);
    public static final AdObjectState COMPLETED = new AdObjectState("COMPLETED", 4);

    private static final /* synthetic */ AdObjectState[] $values() {
        return new AdObjectState[]{INIT, LOADED, SHOWING, EXPIRED, COMPLETED};
    }

    public static EnumEntries<AdObjectState> getEntries() {
        return $ENTRIES;
    }

    private AdObjectState(String str, int i) {
    }

    static {
        AdObjectState[] adObjectStateArr$values = $values();
        $VALUES = adObjectStateArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(adObjectStateArr$values);
    }

    public static AdObjectState valueOf(String str) {
        return (AdObjectState) Enum.valueOf(AdObjectState.class, str);
    }

    public static AdObjectState[] values() {
        return (AdObjectState[]) $VALUES.clone();
    }
}
