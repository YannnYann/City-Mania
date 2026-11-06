package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class B1 {
    private final String a;
    private final boolean b;

    public B1(String processName, boolean z) {
        Intrinsics.checkNotNullParameter(processName, "processName");
        this.a = processName;
        this.b = z;
    }

    public final String a() {
        return this.a;
    }

    public final boolean b() {
        return this.b;
    }

    public final String c() {
        return this.a;
    }

    public final boolean d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof B1)) {
            return false;
        }
        B1 b1 = (B1) obj;
        return Intrinsics.areEqual(this.a, b1.a) && this.b == b1.b;
    }

    public int hashCode() {
        return (this.a.hashCode() * 31) + Boolean.hashCode(this.b);
    }

    public String toString() {
        return "AnrProcessIdentity(processName=" + this.a + ", isMainProcess=" + this.b + ")";
    }

    public final B1 a(String processName, boolean z) {
        Intrinsics.checkNotNullParameter(processName, "processName");
        return new B1(processName, z);
    }

    public static /* synthetic */ B1 a(B1 b1, String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = b1.a;
        }
        if ((i & 2) != 0) {
            z = b1.b;
        }
        return b1.a(str, z);
    }
}
