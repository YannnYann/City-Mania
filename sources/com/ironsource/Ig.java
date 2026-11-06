package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class Ig {
    public static final a c = new a(null);
    private final Double a;
    private final Double b;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a() {
            return new b();
        }

        public final Ig b() {
            return a().a();
        }

        private a() {
        }
    }

    public static final class b {
        private Double a;
        private Double b;

        public final void a(Double d) {
            this.b = d;
        }

        public final void b(Double d) {
            this.a = d;
        }

        public final Double c() {
            return this.a;
        }

        public final b a(double d) {
            this.b = Double.valueOf(d);
            return this;
        }

        public final Double b() {
            return this.b;
        }

        public final Ig a() {
            return new Ig(this, null);
        }

        public final b b(double d) {
            this.a = Double.valueOf(d);
            return this;
        }
    }

    public /* synthetic */ Ig(b bVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(bVar);
    }

    public static final b a() {
        return c.a();
    }

    public static final Ig b() {
        return c.b();
    }

    public final Double c() {
        return this.b;
    }

    public final Double d() {
        return this.a;
    }

    public final String e() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ceiling", this.b);
            jSONObject.put("floor", this.a);
        } catch (JSONException e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.getMessage());
        }
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    public String toString() {
        return "WaterfallConfiguration" + e();
    }

    private Ig(b bVar) {
        this.a = bVar.c();
        this.b = bVar.b();
    }
}
