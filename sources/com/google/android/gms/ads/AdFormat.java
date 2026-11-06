package com.google.android.gms.ads;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class AdFormat {
    public static final AdFormat APP_OPEN_AD;
    public static final AdFormat BANNER;
    public static final AdFormat INTERSTITIAL;
    public static final AdFormat NATIVE;
    public static final AdFormat REWARDED;
    public static final AdFormat REWARDED_INTERSTITIAL;
    public static final AdFormat UNKNOWN;
    private static final /* synthetic */ AdFormat[] a;

    static {
        AdFormat adFormat = new AdFormat("BANNER", 0);
        BANNER = adFormat;
        AdFormat adFormat2 = new AdFormat("INTERSTITIAL", 1);
        INTERSTITIAL = adFormat2;
        AdFormat adFormat3 = new AdFormat("REWARDED", 2);
        REWARDED = adFormat3;
        AdFormat adFormat4 = new AdFormat("REWARDED_INTERSTITIAL", 3);
        REWARDED_INTERSTITIAL = adFormat4;
        AdFormat adFormat5 = new AdFormat("NATIVE", 4);
        NATIVE = adFormat5;
        AdFormat adFormat6 = new AdFormat("UNKNOWN", 5);
        UNKNOWN = adFormat6;
        AdFormat adFormat7 = new AdFormat("APP_OPEN_AD", 6);
        APP_OPEN_AD = adFormat7;
        AdFormat[] adFormatArr = {adFormat, adFormat2, adFormat3, adFormat4, adFormat5, adFormat6, adFormat7};
        a = adFormatArr;
        EnumEntriesKt.enumEntries(adFormatArr);
    }

    private AdFormat(String str, int i) {
    }

    public static AdFormat[] values() {
        return (AdFormat[]) a.clone();
    }
}
