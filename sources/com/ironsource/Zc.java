package com.ironsource;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
public final class Zc {
    private final boolean a;
    private final int b;

    /* JADX WARN: Multi-variable type inference failed */
    public Zc() {
        this(false, 0 == true ? 1 : 0, 3, null);
    }

    public final boolean a() {
        return this.a;
    }

    public final int b() {
        return this.b;
    }

    public final int c() {
        return this.b;
    }

    public final boolean d() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Zc)) {
            return false;
        }
        Zc zc = (Zc) obj;
        return this.a == zc.a && this.b == zc.b;
    }

    public int hashCode() {
        return (Boolean.hashCode(this.a) * 31) + Integer.hashCode(this.b);
    }

    public String toString() {
        return "OpenUrlConfigurations(isImmersive=" + this.a + ", flags=" + this.b + ")";
    }

    public Zc(boolean z, int i) {
        this.a = z;
        this.b = i;
    }

    public final Zc a(boolean z, int i) {
        return new Zc(z, i);
    }

    public static /* synthetic */ Zc a(Zc zc, boolean z, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = zc.a;
        }
        if ((i2 & 2) != 0) {
            i = zc.b;
        }
        return zc.a(z, i);
    }

    public /* synthetic */ Zc(boolean z, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? 805306368 : i);
    }
}
