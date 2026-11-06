package com.ironsource;

import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class Dg {
    private final boolean a;
    private final boolean b;
    private final boolean c;

    public Dg(boolean z, boolean z2, boolean z3) {
        this.a = z;
        this.b = z2;
        this.c = z3;
    }

    public final boolean a() {
        return this.a;
    }

    public final boolean b() {
        return this.b;
    }

    public final boolean c() {
        return this.c;
    }

    public final boolean d() {
        return this.c;
    }

    public final boolean e() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Dg)) {
            return false;
        }
        Dg dg = (Dg) obj;
        return this.a == dg.a && this.b == dg.b && this.c == dg.c;
    }

    public final boolean f() {
        return this.b;
    }

    public final JSONObject g() throws JSONException {
        JSONObject jSONObjectPut = new JSONObject().put(C3670j8.k, this.a).put(C3670j8.l, this.b).put(C3670j8.m, this.c);
        Intrinsics.checkNotNullExpressionValue(jSONObjectPut, "put(...)");
        return jSONObjectPut;
    }

    public int hashCode() {
        return (((Boolean.hashCode(this.a) * 31) + Boolean.hashCode(this.b)) * 31) + Boolean.hashCode(this.c);
    }

    public String toString() {
        return "ViewVisibilityParams(isVisible=" + this.a + ", isWindowVisible=" + this.b + ", isShown=" + this.c + ")";
    }

    public final Dg a(boolean z, boolean z2, boolean z3) {
        return new Dg(z, z2, z3);
    }

    public static /* synthetic */ Dg a(Dg dg, boolean z, boolean z2, boolean z3, int i, Object obj) {
        if ((i & 1) != 0) {
            z = dg.a;
        }
        if ((i & 2) != 0) {
            z2 = dg.b;
        }
        if ((i & 4) != 0) {
            z3 = dg.c;
        }
        return dg.a(z, z2, z3);
    }
}
