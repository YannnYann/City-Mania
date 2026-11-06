package com.ironsource;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.ironsource.o0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class EnumC3752o0 {
    public static final EnumC3752o0 a = new EnumC3752o0("LOAD_REQUEST", 0, 0);
    public static final EnumC3752o0 b = new EnumC3752o0("LOAD_SUCCESS", 1, 1);
    public static final EnumC3752o0 c = new EnumC3752o0("SHOW_SUCCESS", 2, 2);
    public static final EnumC3752o0 d = new EnumC3752o0("SHOW_FAIL", 3, 3);
    public static final EnumC3752o0 e = new EnumC3752o0("DESTROYED", 4, 4);
    private static final /* synthetic */ EnumC3752o0[] f;
    private static final /* synthetic */ EnumEntries g;

    static {
        EnumC3752o0[] enumC3752o0ArrA = a();
        f = enumC3752o0ArrA;
        g = EnumEntriesKt.enumEntries(enumC3752o0ArrA);
    }

    private EnumC3752o0(String str, int i, int i2) {
    }

    private static final /* synthetic */ EnumC3752o0[] a() {
        return new EnumC3752o0[]{a, b, c, d, e};
    }

    public static EnumEntries<EnumC3752o0> b() {
        return g;
    }

    public static EnumC3752o0 valueOf(String str) {
        return (EnumC3752o0) Enum.valueOf(EnumC3752o0.class, str);
    }

    public static EnumC3752o0[] values() {
        return (EnumC3752o0[]) f.clone();
    }
}
