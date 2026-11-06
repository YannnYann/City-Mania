package com.ironsource;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Hb {
    private final EnumC3928x9 a;
    private final String b;
    private final long c;
    private final boolean d;
    private final boolean e;

    public Hb(EnumC3928x9 instanceType, String adSourceNameForEvents, long j, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(instanceType, "instanceType");
        Intrinsics.checkNotNullParameter(adSourceNameForEvents, "adSourceNameForEvents");
        this.a = instanceType;
        this.b = adSourceNameForEvents;
        this.c = j;
        this.d = z;
        this.e = z2;
    }

    public final EnumC3928x9 a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final long c() {
        return this.c;
    }

    public final boolean d() {
        return this.d;
    }

    public final boolean e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Hb)) {
            return false;
        }
        Hb hb = (Hb) obj;
        return this.a == hb.a && Intrinsics.areEqual(this.b, hb.b) && this.c == hb.c && this.d == hb.d && this.e == hb.e;
    }

    public final String f() {
        return this.b;
    }

    public final EnumC3928x9 g() {
        return this.a;
    }

    public final long h() {
        return this.c;
    }

    public int hashCode() {
        return (((((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + Long.hashCode(this.c)) * 31) + Boolean.hashCode(this.d)) * 31) + Boolean.hashCode(this.e);
    }

    public final boolean i() {
        return this.e;
    }

    public final boolean j() {
        return this.d;
    }

    public String toString() {
        return "LoadTaskConfig(instanceType=" + this.a + ", adSourceNameForEvents=" + this.b + ", loadTimeoutInMills=" + this.c + ", isOneFlow=" + this.d + ", isMultipleAdObjects=" + this.e + ")";
    }

    public final Hb a(EnumC3928x9 instanceType, String adSourceNameForEvents, long j, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(instanceType, "instanceType");
        Intrinsics.checkNotNullParameter(adSourceNameForEvents, "adSourceNameForEvents");
        return new Hb(instanceType, adSourceNameForEvents, j, z, z2);
    }

    public static /* synthetic */ Hb a(Hb hb, EnumC3928x9 enumC3928x9, String str, long j, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            enumC3928x9 = hb.a;
        }
        if ((i & 2) != 0) {
            str = hb.b;
        }
        if ((i & 4) != 0) {
            j = hb.c;
        }
        if ((i & 8) != 0) {
            z = hb.d;
        }
        if ((i & 16) != 0) {
            z2 = hb.e;
        }
        long j2 = j;
        return hb.a(enumC3928x9, str, j2, z, z2);
    }

    public /* synthetic */ Hb(EnumC3928x9 enumC3928x9, String str, long j, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(enumC3928x9, str, j, z, (i & 16) != 0 ? true : z2);
    }
}
