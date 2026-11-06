package com.ironsource;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.ironsource.of, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class EnumC3767of {
    public static final EnumC3767of a = new EnumC3767of("FullHistory", 0);
    public static final EnumC3767of b = new EnumC3767of("CurrentlyLoadedAds", 1);
    private static final /* synthetic */ EnumC3767of[] c;
    private static final /* synthetic */ EnumEntries d;

    static {
        EnumC3767of[] enumC3767ofArrA = a();
        c = enumC3767ofArrA;
        d = EnumEntriesKt.enumEntries(enumC3767ofArrA);
    }

    private EnumC3767of(String str, int i) {
    }

    private static final /* synthetic */ EnumC3767of[] a() {
        return new EnumC3767of[]{a, b};
    }

    public static EnumEntries<EnumC3767of> b() {
        return d;
    }

    public static EnumC3767of valueOf(String str) {
        return (EnumC3767of) Enum.valueOf(EnumC3767of.class, str);
    }

    public static EnumC3767of[] values() {
        return (EnumC3767of[]) c.clone();
    }
}
