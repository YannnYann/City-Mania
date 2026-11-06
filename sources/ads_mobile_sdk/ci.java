package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.PersonallyIdentifiableInformation;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ci implements oe3 {
    public final String a;
    public final Boolean b;

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        String str = this.a;
        if (str != null) {
            PersonallyIdentifiableInformation personallyIdentifiableInformation = signals.personallyIdentifiableInformation;
            personallyIdentifiableInformation.amazonFireAdId = str;
            personallyIdentifiableInformation.isAmazonFireAdIdLimitAdTracking = this.b;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ci)) {
            return false;
        }
        ci ciVar = (ci) obj;
        return Intrinsics.areEqual(this.a, ciVar.a) && Intrinsics.areEqual(this.b, ciVar.b);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Boolean bool = this.b;
        return iHashCode + (bool != null ? bool.hashCode() : 0);
    }

    public final String toString() {
        return "AmazonFireAdIdSignal(advertisingId=" + this.a + ", limitAdTracking=" + this.b + ")";
    }

    public ci(String str, Boolean bool) {
        this.a = str;
        this.b = bool;
    }
}
