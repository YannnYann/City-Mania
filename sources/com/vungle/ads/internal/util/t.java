package com.vungle.ads.internal.util;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class t {
    public String a;
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;
    public Boolean g;
    public com.vungle.ads.internal.h h;
    public Boolean i;
    public String j;
    public Long k;
    public String l;
    public String m;

    public final void a(com.vungle.ads.internal.h hVar) {
        this.h = hVar;
    }

    public final void b(String str) {
        this.d = str;
    }

    public final void c(String str) {
        this.b = str;
    }

    public final void d(String str) {
        this.c = str;
    }

    public final void e(String str) {
        this.j = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!Intrinsics.areEqual(t.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.vungle.ads.internal.util.LogEntry");
        t tVar = (t) obj;
        return Intrinsics.areEqual(this.a, tVar.a) && Intrinsics.areEqual(this.b, tVar.b) && Intrinsics.areEqual(this.c, tVar.c) && Intrinsics.areEqual(this.d, tVar.d) && Intrinsics.areEqual(this.e, tVar.e) && Intrinsics.areEqual(this.f, tVar.f) && Intrinsics.areEqual(this.g, tVar.g) && this.h == tVar.h && Intrinsics.areEqual(this.i, tVar.i) && Intrinsics.areEqual(this.j, tVar.j) && Intrinsics.areEqual(this.k, tVar.k) && Intrinsics.areEqual(this.l, tVar.l) && Intrinsics.areEqual(this.m, tVar.m);
    }

    public final void f(String str) {
        this.e = str;
    }

    public final void g(String str) {
        this.a = str;
    }

    public final String h() {
        return this.c;
    }

    public final int hashCode() {
        int iA = (a(this.f) + ((a(this.e) + ((a(this.d) + ((a(this.c) + ((a(this.b) + (a(this.a) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        Boolean bool = this.g;
        int iHashCode = (iA + (bool != null ? bool.hashCode() : 0)) * 31;
        com.vungle.ads.internal.h hVar = this.h;
        int iHashCode2 = (iHashCode + (hVar != null ? hVar.hashCode() : 0)) * 31;
        Boolean bool2 = this.i;
        int iA2 = (a(this.j) + ((iHashCode2 + (bool2 != null ? bool2.hashCode() : 0)) * 31)) * 31;
        Long l = this.k;
        return a(this.m) + ((a(this.l) + ((iA2 + (l != null ? l.hashCode() : 0)) * 31)) * 31);
    }

    public final String i() {
        return this.j;
    }

    public final String j() {
        return this.e;
    }

    public final String k() {
        return this.m;
    }

    public final String l() {
        return this.a;
    }

    public final String m() {
        return this.f;
    }

    public final String toString() {
        return "LogEntry(placementRefId=" + this.a + ", creativeId=" + this.b + ", eventId=" + this.c + ", adSource=" + this.d + ", mediationName=" + this.e + ", vmVersion=" + this.f + ", adoEnabled=" + this.g + ", adState=" + this.h + " adPoddingEnabled=" + this.i + ", experiments=" + this.j + ", adLoadType=" + this.k + ", adapterAdFormat=" + this.l + ", mediationPartnerName=" + this.m + ')';
    }

    public final void a(Boolean bool) {
        this.i = bool;
    }

    public final void b(Boolean bool) {
        this.g = bool;
    }

    public final String c() {
        return this.d;
    }

    public final com.vungle.ads.internal.h d() {
        return this.h;
    }

    public final String e() {
        return this.l;
    }

    public final Boolean f() {
        return this.g;
    }

    public final String g() {
        return this.b;
    }

    public final void h(String str) {
        this.f = str;
    }

    public final Long a() {
        return this.k;
    }

    public final Boolean b() {
        return this.i;
    }

    public final void a(Long l) {
        this.k = l;
    }

    public static int a(String str) {
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }
}
