package com.vungle.ads.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class k0 {
    public l0 a;
    public l0 b;

    public k0(l0 downCoordinate, l0 upCoordinate) {
        Intrinsics.checkNotNullParameter(downCoordinate, "downCoordinate");
        Intrinsics.checkNotNullParameter(upCoordinate, "upCoordinate");
        this.a = downCoordinate;
        this.b = upCoordinate;
    }

    public final l0 a() {
        return this.a;
    }

    public final l0 b() {
        return this.b;
    }

    public final boolean c() {
        l0 l0Var = this.a;
        if (l0Var.a == Integer.MIN_VALUE || l0Var.b == Integer.MIN_VALUE) {
            return false;
        }
        l0 l0Var2 = this.b;
        return (l0Var2.a == Integer.MIN_VALUE || l0Var2.b == Integer.MIN_VALUE) ? false : true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k0)) {
            return false;
        }
        k0 k0Var = (k0) obj;
        return Intrinsics.areEqual(this.a, k0Var.a) && Intrinsics.areEqual(this.b, k0Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("ClickCoordinate(downCoordinate=");
        sbA.append(this.a);
        sbA.append(", upCoordinate=");
        sbA.append(this.b);
        sbA.append(')');
        return sbA.toString();
    }

    public final void a(l0 l0Var) {
        Intrinsics.checkNotNullParameter(l0Var, "<set-?>");
        this.a = l0Var;
    }

    public final void b(l0 l0Var) {
        Intrinsics.checkNotNullParameter(l0Var, "<set-?>");
        this.b = l0Var;
    }
}
