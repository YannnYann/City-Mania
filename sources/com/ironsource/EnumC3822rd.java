package com.ironsource;

/* JADX INFO: renamed from: com.ironsource.rd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public enum EnumC3822rd {
    PER_DAY("d"),
    PER_HOUR("h");

    public String a;

    EnumC3822rd(String str) {
        this.a = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.a;
    }
}
