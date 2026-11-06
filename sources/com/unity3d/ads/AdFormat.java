package com.unity3d.ads;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: AdFormat.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AdFormat {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AdFormat[] $VALUES;
    public static final AdFormat UNSPECIFIED = new AdFormat("UNSPECIFIED", 0);
    public static final AdFormat INTERSTITIAL = new AdFormat("INTERSTITIAL", 1);
    public static final AdFormat REWARDED = new AdFormat("REWARDED", 2);
    public static final AdFormat BANNER = new AdFormat("BANNER", 3);

    private static final /* synthetic */ AdFormat[] $values() {
        return new AdFormat[]{UNSPECIFIED, INTERSTITIAL, REWARDED, BANNER};
    }

    public static EnumEntries<AdFormat> getEntries() {
        return $ENTRIES;
    }

    private AdFormat(String str, int i) {
    }

    static {
        AdFormat[] adFormatArr$values = $values();
        $VALUES = adFormatArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(adFormatArr$values);
    }

    public static AdFormat valueOf(String str) {
        return (AdFormat) Enum.valueOf(AdFormat.class, str);
    }

    public static AdFormat[] values() {
        return (AdFormat[]) $VALUES.clone();
    }
}
