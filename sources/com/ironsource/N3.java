package com.ironsource;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class N3 {
    public static final N3 a = new N3("Pacing", 0);
    public static final N3 b = new N3("ShowCount", 1);
    public static final N3 c = new N3("Delivery", 2);
    private static final /* synthetic */ N3[] d;
    private static final /* synthetic */ EnumEntries e;

    static {
        N3[] n3ArrA = a();
        d = n3ArrA;
        e = EnumEntriesKt.enumEntries(n3ArrA);
    }

    private N3(String str, int i) {
    }

    private static final /* synthetic */ N3[] a() {
        return new N3[]{a, b, c};
    }

    public static EnumEntries<N3> b() {
        return e;
    }

    public static N3 valueOf(String str) {
        return (N3) Enum.valueOf(N3.class, str);
    }

    public static N3[] values() {
        return (N3[]) d.clone();
    }
}
