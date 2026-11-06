package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class eg2 implements oe3 {
    public final String a;
    public final String b;
    public final String c;

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        signals.omidVersion = this.a;
        signals.clientOmidVersion = this.b;
        signals.omidPartnerName = this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof eg2)) {
            return false;
        }
        eg2 eg2Var = (eg2) obj;
        return Intrinsics.areEqual(this.a, eg2Var.a) && Intrinsics.areEqual(this.b, eg2Var.b) && Intrinsics.areEqual(this.c, eg2Var.c);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.c;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        return "OmidSignal(omidVersion=" + this.a + ", clientOmidVersion=" + this.b + ", omidPartnerName=" + this.c + ")";
    }

    public eg2(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }
}
