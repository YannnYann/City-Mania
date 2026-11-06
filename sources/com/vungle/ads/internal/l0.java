package com.vungle.ads.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class l0 {
    public final int a;
    public final int b;

    public l0(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public final int a() {
        return this.a;
    }

    public final int b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l0)) {
            return false;
        }
        l0 l0Var = (l0) obj;
        return this.a == l0Var.a && this.b == l0Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Coordinate(x=");
        sbA.append(this.a);
        sbA.append(", y=");
        sbA.append(this.b);
        sbA.append(')');
        return sbA.toString();
    }
}
