package ads_mobile_sdk;

import com.google.gson.JsonObject;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ac3 {
    public final List a;
    public final zy b;
    public final List c;
    public JsonObject d;

    public ac3(ArrayList adConfigurations, zy commonConfiguration, ArrayList actions) {
        Intrinsics.checkNotNullParameter(adConfigurations, "adConfigurations");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(actions, "actions");
        this.a = adConfigurations;
        this.b = commonConfiguration;
        this.c = actions;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ac3)) {
            return false;
        }
        ac3 ac3Var = (ac3) obj;
        return Intrinsics.areEqual(this.a, ac3Var.a) && Intrinsics.areEqual(this.b, ac3Var.b) && Intrinsics.areEqual(this.c, ac3Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "ServerResponse(adConfigurations=" + this.a + ", commonConfiguration=" + this.b + ", actions=" + this.c + ")";
    }

    public final JsonObject a() {
        return this.d;
    }
}
