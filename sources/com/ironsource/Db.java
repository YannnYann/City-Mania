package com.ironsource;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class Db {
    public static final a c = new a(null);
    public static final String d = "revenue";
    public static final String e = "precision";
    private final double a;
    private final String b;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Db a(JSONObject json) {
            Intrinsics.checkNotNullParameter(json, "json");
            try {
                double d = json.getDouble("revenue");
                String string = json.getString("precision");
                Intrinsics.checkNotNull(string);
                return new Db(d, string);
            } catch (Exception e) {
                C3813r4.d().a(e);
                If.a(e);
                return null;
            }
        }

        private a() {
        }
    }

    public Db(double d2, String precision) {
        Intrinsics.checkNotNullParameter(precision, "precision");
        this.a = d2;
        this.b = precision;
    }

    public final double a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final String c() {
        return this.b;
    }

    public final double d() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Db)) {
            return false;
        }
        Db db = (Db) obj;
        return Double.compare(this.a, db.a) == 0 && Intrinsics.areEqual(this.b, db.b);
    }

    public int hashCode() {
        return (Double.hashCode(this.a) * 31) + this.b.hashCode();
    }

    public String toString() {
        return "LoadArmData(revenue=" + this.a + ", precision=" + this.b + ")";
    }

    public final Db a(double d2, String precision) {
        Intrinsics.checkNotNullParameter(precision, "precision");
        return new Db(d2, precision);
    }

    public static /* synthetic */ Db a(Db db, double d2, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            d2 = db.a;
        }
        if ((i & 2) != 0) {
            str = db.b;
        }
        return db.a(d2, str);
    }

    public static final Db a(JSONObject jSONObject) {
        return c.a(jSONObject);
    }
}
