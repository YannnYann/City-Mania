package ads_mobile_sdk;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.PersonallyIdentifiableInformation;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class x3 implements oe3 {
    public final AdvertisingIdClient.Info a;

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        AdvertisingIdClient.Info info2 = this.a;
        if (info2 != null) {
            PersonallyIdentifiableInformation personallyIdentifiableInformation = signals.personallyIdentifiableInformation;
            personallyIdentifiableInformation.adId = info2.getId();
            personallyIdentifiableInformation.isLimitedAdTracking = Boolean.valueOf(this.a.isLimitAdTrackingEnabled());
            personallyIdentifiableInformation.idTypeParameter = "adid";
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof x3) && Intrinsics.areEqual(this.a, ((x3) obj).a);
    }

    public final int hashCode() {
        AdvertisingIdClient.Info info2 = this.a;
        if (info2 == null) {
            return 0;
        }
        return info2.hashCode();
    }

    public final String toString() {
        return "AdIdInfoSignal(adIdInfo=" + this.a + ")";
    }

    public x3(AdvertisingIdClient.Info info2) {
        this.a = info2;
    }
}
