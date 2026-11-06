package com.unity3d.ads;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ShowFinishState.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ShowFinishState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ShowFinishState[] $VALUES;
    public static final ShowFinishState SKIPPED = new ShowFinishState("SKIPPED", 0);
    public static final ShowFinishState COMPLETED = new ShowFinishState("COMPLETED", 1);

    private static final /* synthetic */ ShowFinishState[] $values() {
        return new ShowFinishState[]{SKIPPED, COMPLETED};
    }

    public static EnumEntries<ShowFinishState> getEntries() {
        return $ENTRIES;
    }

    private ShowFinishState(String str, int i) {
    }

    static {
        ShowFinishState[] showFinishStateArr$values = $values();
        $VALUES = showFinishStateArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(showFinishStateArr$values);
    }

    public static ShowFinishState valueOf(String str) {
        return (ShowFinishState) Enum.valueOf(ShowFinishState.class, str);
    }

    public static ShowFinishState[] values() {
        return (ShowFinishState[]) $VALUES.clone();
    }
}
