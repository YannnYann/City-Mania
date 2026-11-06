package com.ironsource;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.s9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3836s9 {
    private final String a;
    private final String b;
    private final EnumC3874u9 c;
    private final JSONObject d;

    public C3836s9(String url, String storePackage, EnumC3874u9 strategy, JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(storePackage, "storePackage");
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        this.a = url;
        this.b = storePackage;
        this.c = strategy;
        this.d = jSONObject;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final EnumC3874u9 c() {
        return this.c;
    }

    public final JSONObject d() {
        return this.d;
    }

    public final JSONObject e() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3836s9)) {
            return false;
        }
        C3836s9 c3836s9 = (C3836s9) obj;
        return Intrinsics.areEqual(this.a, c3836s9.a) && Intrinsics.areEqual(this.b, c3836s9.b) && this.c == c3836s9.c && Intrinsics.areEqual(this.d, c3836s9.d);
    }

    public final String f() {
        return this.b;
    }

    public final EnumC3874u9 g() {
        return this.c;
    }

    public final String h() {
        return this.a;
    }

    public int hashCode() {
        int iHashCode = ((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31;
        JSONObject jSONObject = this.d;
        return iHashCode + (jSONObject == null ? 0 : jSONObject.hashCode());
    }

    public String toString() {
        return "InlineStoreRequest(url=" + this.a + ", storePackage=" + this.b + ", strategy=" + this.c + ", extras=" + this.d + ")";
    }

    public final C3836s9 a(String url, String storePackage, EnumC3874u9 strategy, JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(storePackage, "storePackage");
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        return new C3836s9(url, storePackage, strategy, jSONObject);
    }

    public static /* synthetic */ C3836s9 a(C3836s9 c3836s9, String str, String str2, EnumC3874u9 enumC3874u9, JSONObject jSONObject, int i, Object obj) {
        if ((i & 1) != 0) {
            str = c3836s9.a;
        }
        if ((i & 2) != 0) {
            str2 = c3836s9.b;
        }
        if ((i & 4) != 0) {
            enumC3874u9 = c3836s9.c;
        }
        if ((i & 8) != 0) {
            jSONObject = c3836s9.d;
        }
        return c3836s9.a(str, str2, enumC3874u9, jSONObject);
    }

    public /* synthetic */ C3836s9(String str, String str2, EnumC3874u9 enumC3874u9, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? EnumC3874u9.c : enumC3874u9, (i & 8) != 0 ? null : jSONObject);
    }
}
