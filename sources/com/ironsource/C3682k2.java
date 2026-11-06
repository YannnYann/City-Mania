package com.ironsource;

import java.util.HashMap;
import java.util.Map;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.k2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3682k2 {
    private final String a;
    private final boolean b;
    private boolean c;
    private String d;
    private Map<String, ? extends Object> e;
    private C3664j2 f;
    private Map<String, Object> g;

    public C3682k2(String name, boolean z) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.a = name;
        this.b = z;
        this.d = "";
        this.e = MapsKt__MapsKt.emptyMap();
        this.g = new HashMap();
    }

    public final String a() {
        return this.a;
    }

    public final boolean b() {
        return this.b;
    }

    public final Map<String, Object> c() {
        return this.g;
    }

    public final C3664j2 d() {
        return this.f;
    }

    public final boolean e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3682k2)) {
            return false;
        }
        C3682k2 c3682k2 = (C3682k2) obj;
        return Intrinsics.areEqual(this.a, c3682k2.a) && this.b == c3682k2.b;
    }

    public final Map<String, Object> f() {
        return this.e;
    }

    public final String g() {
        return this.a;
    }

    public final String h() {
        return this.d;
    }

    public int hashCode() {
        return (this.a.hashCode() * 31) + Boolean.hashCode(this.b);
    }

    public final boolean i() {
        return this.c;
    }

    public String toString() {
        return "AuctionInstanceInfo(name=" + this.a + ", bidder=" + this.b + ")";
    }

    public final C3682k2 a(String name, boolean z) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new C3682k2(name, z);
    }

    public final void b(Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.e = map;
    }

    public static /* synthetic */ C3682k2 a(C3682k2 c3682k2, String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = c3682k2.a;
        }
        if ((i & 2) != 0) {
            z = c3682k2.b;
        }
        return c3682k2.a(str, z);
    }

    public final void a(boolean z) {
        this.c = z;
    }

    public final void a(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.d = str;
    }

    public final void a(C3664j2 c3664j2) {
        this.f = c3664j2;
    }

    public final void a(Map<String, Object> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.g = map;
    }
}
