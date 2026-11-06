package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class hm1 {
    public final String a;
    public final String b;

    public hm1(String description, String muteUrl) {
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(muteUrl, "muteUrl");
        this.a = description;
        this.b = muteUrl;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hm1)) {
            return false;
        }
        hm1 hm1Var = (hm1) obj;
        return Intrinsics.areEqual(this.a, hm1Var.a) && Intrinsics.areEqual(this.b, hm1Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "InternalMuteThisAdReason(description=" + this.a + ", muteUrl=" + this.b + ")";
    }
}
