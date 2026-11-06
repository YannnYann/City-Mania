package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class et {
    public final int a;
    public final String b;

    public et(int i, String description) {
        Intrinsics.checkNotNullParameter(description, "description");
        this.a = i;
        this.b = description;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof et)) {
            return false;
        }
        et etVar = (et) obj;
        return this.a == etVar.a && Intrinsics.areEqual(this.b, etVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "BowResponseError(code=" + this.a + ", description=" + this.b + ")";
    }
}
