package com.ironsource;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class Qg {
    public static final Qg a = new Qg("DEFAULT", 0);
    public static final Qg b = new Qg("BIDDER_SENSITIVE", 1);
    private static final /* synthetic */ Qg[] c;
    private static final /* synthetic */ EnumEntries d;

    static {
        Qg[] qgArrA = a();
        c = qgArrA;
        d = EnumEntriesKt.enumEntries(qgArrA);
    }

    private Qg(String str, int i) {
    }

    private static final /* synthetic */ Qg[] a() {
        return new Qg[]{a, b};
    }

    public static EnumEntries<Qg> b() {
        return d;
    }

    public static Qg valueOf(String str) {
        return (Qg) Enum.valueOf(Qg.class, str);
    }

    public static Qg[] values() {
        return (Qg[]) c.clone();
    }
}
