package com.ironsource;

import com.ironsource.sdk.controller.f;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class Sb {
    public static final a d = new a(null);
    private final String a;
    private final String b;
    private final JSONObject c;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Sb a(String jsonStr) throws JSONException {
            Intrinsics.checkNotNullParameter(jsonStr, "jsonStr");
            JSONObject jSONObject = new JSONObject(jsonStr);
            String string = jSONObject.getString(f.b.c);
            String string2 = jSONObject.getString(f.b.g);
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("params");
            Intrinsics.checkNotNull(string);
            Intrinsics.checkNotNull(string2);
            return new Sb(string, string2, jSONObjectOptJSONObject);
        }

        private a() {
        }
    }

    public Sb(String adId, String command, JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(adId, "adId");
        Intrinsics.checkNotNullParameter(command, "command");
        this.a = adId;
        this.b = command;
        this.c = jSONObject;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final JSONObject c() {
        return this.c;
    }

    public final String d() {
        return this.a;
    }

    public final String e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Sb)) {
            return false;
        }
        Sb sb = (Sb) obj;
        return Intrinsics.areEqual(this.a, sb.a) && Intrinsics.areEqual(this.b, sb.b) && Intrinsics.areEqual(this.c, sb.c);
    }

    public final JSONObject f() {
        return this.c;
    }

    public int hashCode() {
        int iHashCode = ((this.a.hashCode() * 31) + this.b.hashCode()) * 31;
        JSONObject jSONObject = this.c;
        return iHashCode + (jSONObject == null ? 0 : jSONObject.hashCode());
    }

    public String toString() {
        return "MessageToNative(adId=" + this.a + ", command=" + this.b + ", params=" + this.c + ")";
    }

    public final Sb a(String adId, String command, JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(adId, "adId");
        Intrinsics.checkNotNullParameter(command, "command");
        return new Sb(adId, command, jSONObject);
    }

    public static /* synthetic */ Sb a(Sb sb, String str, String str2, JSONObject jSONObject, int i, Object obj) {
        if ((i & 1) != 0) {
            str = sb.a;
        }
        if ((i & 2) != 0) {
            str2 = sb.b;
        }
        if ((i & 4) != 0) {
            jSONObject = sb.c;
        }
        return sb.a(str, str2, jSONObject);
    }

    public static final Sb a(String str) throws JSONException {
        return d.a(str);
    }
}
