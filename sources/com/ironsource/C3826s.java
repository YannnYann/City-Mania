package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3826s {
    private final String a;
    private final EnumC3928x9 b;
    private final boolean c;
    private final String d;
    private final long e;

    public C3826s(String adSourceNameForEvents, EnumC3928x9 instanceType, boolean z, String providerName, long j) {
        Intrinsics.checkNotNullParameter(adSourceNameForEvents, "adSourceNameForEvents");
        Intrinsics.checkNotNullParameter(instanceType, "instanceType");
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        this.a = adSourceNameForEvents;
        this.b = instanceType;
        this.c = z;
        this.d = providerName;
        this.e = j;
    }

    public final String a() {
        return this.a;
    }

    public final EnumC3928x9 b() {
        return this.b;
    }

    public final boolean c() {
        return this.c;
    }

    public final String d() {
        return this.d;
    }

    public final long e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3826s)) {
            return false;
        }
        C3826s c3826s = (C3826s) obj;
        return Intrinsics.areEqual(this.a, c3826s.a) && this.b == c3826s.b && this.c == c3826s.c && Intrinsics.areEqual(this.d, c3826s.d) && this.e == c3826s.e;
    }

    public final String f() {
        return this.a;
    }

    public final EnumC3928x9 g() {
        return this.b;
    }

    public final long h() {
        return this.e;
    }

    public int hashCode() {
        return (((((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + Boolean.hashCode(this.c)) * 31) + this.d.hashCode()) * 31) + Long.hashCode(this.e);
    }

    public final String i() {
        return this.d;
    }

    public final boolean j() {
        return this.c;
    }

    public String toString() {
        return "AdFormatConfig(adSourceNameForEvents=" + this.a + ", instanceType=" + this.b + ", isOneFlow=" + this.c + ", providerName=" + this.d + ", loadTimeoutInMillis=" + this.e + ")";
    }

    public final C3826s a(String adSourceNameForEvents, EnumC3928x9 instanceType, boolean z, String providerName, long j) {
        Intrinsics.checkNotNullParameter(adSourceNameForEvents, "adSourceNameForEvents");
        Intrinsics.checkNotNullParameter(instanceType, "instanceType");
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        return new C3826s(adSourceNameForEvents, instanceType, z, providerName, j);
    }

    public static /* synthetic */ C3826s a(C3826s c3826s, String str, EnumC3928x9 enumC3928x9, boolean z, String str2, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = c3826s.a;
        }
        if ((i & 2) != 0) {
            enumC3928x9 = c3826s.b;
        }
        if ((i & 4) != 0) {
            z = c3826s.c;
        }
        if ((i & 8) != 0) {
            str2 = c3826s.d;
        }
        if ((i & 16) != 0) {
            j = c3826s.e;
        }
        long j2 = j;
        return c3826s.a(str, enumC3928x9, z, str2, j2);
    }
}
