package ads_mobile_sdk;

import com.google.gson.JsonObject;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class yb3 {
    public final String a;
    public final JsonObject b;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yb3)) {
            return false;
        }
        yb3 yb3Var = (yb3) obj;
        return Intrinsics.areEqual(this.a, yb3Var.a) && Intrinsics.areEqual(this.b, yb3Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        JsonObject jsonObject = this.b;
        return iHashCode + (jsonObject == null ? 0 : jsonObject.hashCode());
    }

    public final String toString() {
        return "Action(name=" + this.a + ", info=" + this.b + ")";
    }

    public yb3(JsonObject jsonObject, String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.a = name;
        this.b = jsonObject;
    }
}
