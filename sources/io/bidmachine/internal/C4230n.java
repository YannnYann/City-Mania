package io.bidmachine.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.bidmachine.internal.n, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C4230n {
    public final String a;
    public final String b;
    public final Long c;
    public final Long d;
    public final Long e;
    public final Long f;
    public final Boolean g;

    public C4230n(String str, String str2, Long l, Long l2, Long l3, Long l4, Boolean bool) {
        this.a = str;
        this.b = str2;
        this.c = l;
        this.d = l2;
        this.e = l3;
        this.f = l4;
        this.g = bool;
    }

    public final Long a() {
        return this.d;
    }

    public final Long b() {
        return this.f;
    }

    public final Long c() {
        return this.c;
    }

    public final Long d() {
        return this.e;
    }

    public final String e() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4230n)) {
            return false;
        }
        C4230n c4230n = (C4230n) obj;
        return Intrinsics.areEqual(this.a, c4230n.a) && Intrinsics.areEqual(this.b, c4230n.b) && Intrinsics.areEqual(this.c, c4230n.c) && Intrinsics.areEqual(this.d, c4230n.d) && Intrinsics.areEqual(this.e, c4230n.e) && Intrinsics.areEqual(this.f, c4230n.f) && Intrinsics.areEqual(this.g, c4230n.g);
    }

    public final String f() {
        return this.b;
    }

    public final boolean h() {
        Long l;
        Long l2;
        Long l3;
        Long l4;
        return (this.a == null || this.b == null || (l = this.c) == null || l.longValue() == 0 || (l2 = this.d) == null || l2.longValue() == 0 || (l3 = this.e) == null || l3.longValue() == 0 || (l4 = this.f) == null || l4.longValue() == 0 || this.g == null) ? false : true;
    }

    public int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Long l = this.c;
        int iHashCode3 = (iHashCode2 + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.d;
        int iHashCode4 = (iHashCode3 + (l2 == null ? 0 : l2.hashCode())) * 31;
        Long l3 = this.e;
        int iHashCode5 = (iHashCode4 + (l3 == null ? 0 : l3.hashCode())) * 31;
        Long l4 = this.f;
        int iHashCode6 = (iHashCode5 + (l4 == null ? 0 : l4.hashCode())) * 31;
        Boolean bool = this.g;
        return iHashCode6 + (bool != null ? bool.hashCode() : 0);
    }

    public final Boolean i() {
        return this.g;
    }

    public String toString() {
        return "InstallInfo(installReferrerUrl=" + this.a + ", installVersion=" + this.b + ", installReferrerClickSec=" + this.c + ", installBeginSec=" + this.d + ", installReferrerClickServerSec=" + this.e + ", installBeginServerSec=" + this.f + ", isGooglePlayInstant=" + this.g + ')';
    }
}
