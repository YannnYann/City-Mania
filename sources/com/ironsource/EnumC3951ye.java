package com.ironsource;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.ironsource.ye, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class EnumC3951ye {
    public static final EnumC3951ye b = new EnumC3951ye("LEVEL_PLAY_INIT", 0, 0);
    public static final EnumC3951ye c = new EnumC3951ye("EXTERNAL_MEDIATION_INIT", 1, 1);
    private static final /* synthetic */ EnumC3951ye[] d;
    private static final /* synthetic */ EnumEntries e;
    private final int a;

    static {
        EnumC3951ye[] enumC3951yeArrA = a();
        d = enumC3951yeArrA;
        e = EnumEntriesKt.enumEntries(enumC3951yeArrA);
    }

    private EnumC3951ye(String str, int i, int i2) {
        this.a = i2;
    }

    private static final /* synthetic */ EnumC3951ye[] a() {
        return new EnumC3951ye[]{b, c};
    }

    public static EnumEntries<EnumC3951ye> b() {
        return e;
    }

    public static EnumC3951ye valueOf(String str) {
        return (EnumC3951ye) Enum.valueOf(EnumC3951ye.class, str);
    }

    public static EnumC3951ye[] values() {
        return (EnumC3951ye[]) d.clone();
    }

    public final int c() {
        return this.a;
    }
}
