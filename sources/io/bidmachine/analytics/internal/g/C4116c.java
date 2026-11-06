package io.bidmachine.analytics.internal.g;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.bidmachine.analytics.internal.g.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C4116c {
    private final String a;
    private final String b;
    private final long c;
    private final EnumC4114a d;
    private final float e;
    private final EnumC4120g f;

    public C4116c(String str, String str2, long j, EnumC4114a enumC4114a, float f, EnumC4120g enumC4120g) {
        this.a = str;
        this.b = str2;
        this.c = j;
        this.d = enumC4114a;
        this.e = f;
        this.f = enumC4120g;
    }

    public final EnumC4114a a() {
        return this.d;
    }

    public final String b() {
        return this.a;
    }

    public final long c() {
        return this.c;
    }

    public final float d() {
        return this.e;
    }

    public final EnumC4120g e() {
        return this.f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4116c)) {
            return false;
        }
        C4116c c4116c = (C4116c) obj;
        return Intrinsics.areEqual(this.a, c4116c.a) && Intrinsics.areEqual(this.b, c4116c.b) && this.c == c4116c.c && this.d == c4116c.d && Float.compare(this.e, c4116c.e) == 0 && this.f == c4116c.f;
    }

    public final String f() {
        return this.b;
    }

    public int hashCode() {
        return (((((((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + Long.hashCode(this.c)) * 31) + this.d.hashCode()) * 31) + Float.hashCode(this.e)) * 31) + this.f.hashCode();
    }

    public String toString() {
        return super.toString();
    }
}
