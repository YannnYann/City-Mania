package com.ironsource;

import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class Eb {
    public static final a b = new a(null);
    public static final String c = "duration";
    private final long a;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Eb a(JSONObject jSONObject) {
            if (jSONObject != null) {
                long jOptLong = jSONObject.optLong("duration");
                if (jOptLong > 0) {
                    return new Eb(jOptLong);
                }
            }
            return null;
        }

        private a() {
        }
    }

    public Eb(long j) {
        this.a = j;
    }

    public final long a() {
        return this.a;
    }

    public final long b() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Eb) && this.a == ((Eb) obj).a;
    }

    public int hashCode() {
        return Long.hashCode(this.a);
    }

    public String toString() {
        return "LoadGraceConfig(graceDurationMs=" + this.a + ")";
    }

    public final Eb a(long j) {
        return new Eb(j);
    }

    public static /* synthetic */ Eb a(Eb eb, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = eb.a;
        }
        return eb.a(j);
    }
}
