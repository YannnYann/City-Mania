package com.google.android.gms.ads;

/* JADX INFO: loaded from: classes3.dex */
public class VersionInfo {
    private final int a;
    private final int b;
    private final int c;

    public VersionInfo(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public final int getMajorVersion() {
        return this.a;
    }

    public final int getMicroVersion() {
        return this.c;
    }

    public final int getMinorVersion() {
        return this.b;
    }

    public String toString() {
        return this.a + "." + this.b + "." + this.c;
    }
}
