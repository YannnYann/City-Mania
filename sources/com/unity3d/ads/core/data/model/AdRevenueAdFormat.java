package com.unity3d.ads.core.data.model;

import java.util.Locale;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: AdRevenueAdFormat.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AdRevenueAdFormat {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AdRevenueAdFormat[] $VALUES;
    public static final Companion Companion;
    public static final AdRevenueAdFormat BANNER = new AdRevenueAdFormat("BANNER", 0);
    public static final AdRevenueAdFormat MREC = new AdRevenueAdFormat("MREC", 1);
    public static final AdRevenueAdFormat INTERSTITIAL = new AdRevenueAdFormat("INTERSTITIAL", 2);
    public static final AdRevenueAdFormat REWARDED = new AdRevenueAdFormat("REWARDED", 3);
    public static final AdRevenueAdFormat NATIVE = new AdRevenueAdFormat("NATIVE", 4);

    private static final /* synthetic */ AdRevenueAdFormat[] $values() {
        return new AdRevenueAdFormat[]{BANNER, MREC, INTERSTITIAL, REWARDED, NATIVE};
    }

    public static EnumEntries<AdRevenueAdFormat> getEntries() {
        return $ENTRIES;
    }

    private AdRevenueAdFormat(String str, int i) {
    }

    static {
        AdRevenueAdFormat[] adRevenueAdFormatArr$values = $values();
        $VALUES = adRevenueAdFormatArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(adRevenueAdFormatArr$values);
        Companion = new Companion(null);
    }

    /* JADX INFO: compiled from: AdRevenueAdFormat.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final AdRevenueAdFormat fromString(String str) {
            Object objM2760constructorimpl;
            if (str == null) {
                return null;
            }
            try {
                Result.Companion companion = Result.Companion;
                String upperCase = str.toUpperCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                objM2760constructorimpl = Result.m2760constructorimpl(AdRevenueAdFormat.valueOf(upperCase));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
            }
            return (AdRevenueAdFormat) (Result.m2765isFailureimpl(objM2760constructorimpl) ? null : objM2760constructorimpl);
        }
    }

    public static AdRevenueAdFormat valueOf(String str) {
        return (AdRevenueAdFormat) Enum.valueOf(AdRevenueAdFormat.class, str);
    }

    public static AdRevenueAdFormat[] values() {
        return (AdRevenueAdFormat[]) $VALUES.clone();
    }
}
