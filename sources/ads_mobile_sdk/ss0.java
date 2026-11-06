package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ss0 {
    public final String a;
    public final String b;
    public final String c;

    public ss0(String str, String str2, String firebaseAdEventId) {
        Intrinsics.checkNotNullParameter(firebaseAdEventId, "firebaseAdEventId");
        this.a = str;
        this.b = str2;
        this.c = firebaseAdEventId;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ss0)) {
            return false;
        }
        ss0 ss0Var = (ss0) obj;
        return Intrinsics.areEqual(this.a, ss0Var.a) && Intrinsics.areEqual(this.b, ss0Var.b) && Intrinsics.areEqual(this.c, ss0Var.c);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        return this.c.hashCode() + ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "FirebaseAnalyticsIds(firebaseAppId=" + this.a + ", firebaseAppInstanceId=" + this.b + ", firebaseAdEventId=" + this.c + ")";
    }
}
