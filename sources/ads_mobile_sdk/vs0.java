package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class vs0 implements oe3 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final boolean e;

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        if (this.e) {
            String str = this.a;
            if (str == null) {
                str = "";
            }
            signals.gmpAppId = str;
            String str2 = this.b;
            if (str2 == null) {
                str2 = "";
            }
            signals.appInstanceId = str2;
            String str3 = this.c;
            signals.adEventId = str3 != null ? str3 : "";
            signals.appIdOrigin = this.d;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vs0)) {
            return false;
        }
        vs0 vs0Var = (vs0) obj;
        return Intrinsics.areEqual(this.a, vs0Var.a) && Intrinsics.areEqual(this.b, vs0Var.b) && Intrinsics.areEqual(this.c, vs0Var.c) && Intrinsics.areEqual(this.d, vs0Var.d) && this.e == vs0Var.e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v6 */
    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        boolean z = this.e;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iHashCode4 + r1;
    }

    public final String toString() {
        return "FirebaseAnalyticsSignal(firebaseAppId=" + this.a + ", firebaseAppInstanceId=" + this.b + ", firebaseAdEventId=" + this.c + ", firebaseAppIdOrigin=" + this.d + ", isFirebaseIntegrationEnabled=" + this.e + ")";
    }

    public vs0(String str, String str2, String str3, String str4, boolean z) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = z;
    }
}
