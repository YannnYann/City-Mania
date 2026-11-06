package com.ironsource.mediationsdk.adunit.adapter.utility;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class AdOptionsPosition {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AdOptionsPosition[] $VALUES;
    public static String AD_OPTIONS_POSITION_KEY;
    public static final Companion Companion;
    public static final AdOptionsPosition TOP_LEFT = new AdOptionsPosition("TOP_LEFT", 0);
    public static final AdOptionsPosition TOP_RIGHT = new AdOptionsPosition("TOP_RIGHT", 1);
    public static final AdOptionsPosition BOTTOM_LEFT = new AdOptionsPosition("BOTTOM_LEFT", 2);
    public static final AdOptionsPosition BOTTOM_RIGHT = new AdOptionsPosition("BOTTOM_RIGHT", 3);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    private static final /* synthetic */ AdOptionsPosition[] $values() {
        return new AdOptionsPosition[]{TOP_LEFT, TOP_RIGHT, BOTTOM_LEFT, BOTTOM_RIGHT};
    }

    static {
        AdOptionsPosition[] adOptionsPositionArr$values = $values();
        $VALUES = adOptionsPositionArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(adOptionsPositionArr$values);
        Companion = new Companion(null);
        AD_OPTIONS_POSITION_KEY = "adOptionsPos";
    }

    private AdOptionsPosition(String str, int i) {
    }

    public static EnumEntries<AdOptionsPosition> getEntries() {
        return $ENTRIES;
    }

    public static AdOptionsPosition valueOf(String str) {
        return (AdOptionsPosition) Enum.valueOf(AdOptionsPosition.class, str);
    }

    public static AdOptionsPosition[] values() {
        return (AdOptionsPosition[]) $VALUES.clone();
    }
}
