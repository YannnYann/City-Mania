package com.ironsource;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class Pd {
    public static final Pd b = new Pd("CAN_RECOVER", 0, "Can recover");
    public static final Pd c = new Pd("NO_LOADED_ADS", 1, "No loaded ad");
    public static final Pd d = new Pd("MAX_ATTEMPTS_REACHED", 2, "Fail to show");
    public static final Pd e = new Pd("FEATURE_DISABLED", 3, "Recovery feature is disabled");
    private static final /* synthetic */ Pd[] f;
    private static final /* synthetic */ EnumEntries g;
    private final String a;

    static {
        Pd[] pdArrA = a();
        f = pdArrA;
        g = EnumEntriesKt.enumEntries(pdArrA);
    }

    private Pd(String str, int i, String str2) {
        this.a = str2;
    }

    private static final /* synthetic */ Pd[] a() {
        return new Pd[]{b, c, d, e};
    }

    public static EnumEntries<Pd> b() {
        return g;
    }

    public static Pd valueOf(String str) {
        return (Pd) Enum.valueOf(Pd.class, str);
    }

    public static Pd[] values() {
        return (Pd[]) f.clone();
    }

    public final String c() {
        return this.a;
    }
}
