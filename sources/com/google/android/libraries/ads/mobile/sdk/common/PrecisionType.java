package com.google.android.libraries.ads.mobile.sdk.common;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class PrecisionType {
    public static final PrecisionType ESTIMATED;
    public static final PrecisionType PRECISE;
    public static final PrecisionType PUBLISHER_PROVIDED;
    public static final PrecisionType UNKNOWN;
    public static final /* synthetic */ PrecisionType[] a;

    static {
        PrecisionType precisionType = new PrecisionType("UNKNOWN", 0);
        UNKNOWN = precisionType;
        PrecisionType precisionType2 = new PrecisionType("ESTIMATED", 1);
        ESTIMATED = precisionType2;
        PrecisionType precisionType3 = new PrecisionType("PUBLISHER_PROVIDED", 2);
        PUBLISHER_PROVIDED = precisionType3;
        PrecisionType precisionType4 = new PrecisionType("PRECISE", 3);
        PRECISE = precisionType4;
        PrecisionType[] precisionTypeArr = {precisionType, precisionType2, precisionType3, precisionType4};
        a = precisionTypeArr;
        EnumEntriesKt.enumEntries(precisionTypeArr);
    }

    public PrecisionType(String str, int i) {
    }

    public static PrecisionType[] values() {
        return (PrecisionType[]) a.clone();
    }
}
