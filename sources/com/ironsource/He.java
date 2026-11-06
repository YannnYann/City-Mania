package com.ironsource;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class He {
    public static final He a = new He("NOT_INIT", 0);
    public static final He b = new He("INIT_IN_PROGRESS", 1);
    public static final He c = new He("INIT_FAILED", 2);
    public static final He d = new He("INITIATED", 3);
    private static final /* synthetic */ He[] e;
    private static final /* synthetic */ EnumEntries f;

    static {
        He[] heArrA = a();
        e = heArrA;
        f = EnumEntriesKt.enumEntries(heArrA);
    }

    private He(String str, int i) {
    }

    private static final /* synthetic */ He[] a() {
        return new He[]{a, b, c, d};
    }

    public static EnumEntries<He> b() {
        return f;
    }

    public static He valueOf(String str) {
        return (He) Enum.valueOf(He.class, str);
    }

    public static He[] values() {
        return (He[]) e.clone();
    }
}
