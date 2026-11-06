package com.google.android.libraries.ads.mobile.sdk.common;

/* JADX INFO: loaded from: classes3.dex */
public final class VersionInfo {
    public final int a;
    public final int b;
    public final int c;

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
