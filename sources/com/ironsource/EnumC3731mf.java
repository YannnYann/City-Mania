package com.ironsource;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.ironsource.mf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class EnumC3731mf {
    public static final EnumC3731mf b = new EnumC3731mf("LoadSuccess", 0, 0);
    public static final EnumC3731mf c = new EnumC3731mf("ShowSuccess", 1, 1);
    public static final EnumC3731mf d = new EnumC3731mf("ShowFailed", 2, 2);
    public static final EnumC3731mf e = new EnumC3731mf("Destroyed", 3, 3);
    public static final EnumC3731mf f = new EnumC3731mf("LoadRequest", 4, -1);
    private static final /* synthetic */ EnumC3731mf[] g;
    private static final /* synthetic */ EnumEntries h;
    private final int a;

    static {
        EnumC3731mf[] enumC3731mfArrA = a();
        g = enumC3731mfArrA;
        h = EnumEntriesKt.enumEntries(enumC3731mfArrA);
    }

    private EnumC3731mf(String str, int i, int i2) {
        this.a = i2;
    }

    private static final /* synthetic */ EnumC3731mf[] a() {
        return new EnumC3731mf[]{b, c, d, e, f};
    }

    public static EnumEntries<EnumC3731mf> c() {
        return h;
    }

    public static EnumC3731mf valueOf(String str) {
        return (EnumC3731mf) Enum.valueOf(EnumC3731mf.class, str);
    }

    public static EnumC3731mf[] values() {
        return (EnumC3731mf[]) g.clone();
    }

    public final int b() {
        return this.a;
    }
}
