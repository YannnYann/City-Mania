package ads_mobile_sdk;

import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.PersonallyIdentifiableInformation;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class dm implements oe3 {
    public final AppSetIdInfo a;

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        AppSetIdInfo appSetIdInfo = this.a;
        if (appSetIdInfo != null) {
            PersonallyIdentifiableInformation personallyIdentifiableInformation = signals.personallyIdentifiableInformation;
            personallyIdentifiableInformation.appSetId = appSetIdInfo.getId();
            personallyIdentifiableInformation.appSetIdScope = Integer.valueOf(this.a.getScope());
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof dm) && Intrinsics.areEqual(this.a, ((dm) obj).a);
    }

    public final int hashCode() {
        AppSetIdInfo appSetIdInfo = this.a;
        if (appSetIdInfo == null) {
            return 0;
        }
        return appSetIdInfo.hashCode();
    }

    public final String toString() {
        return "AppSetIdInfoSignal(appSetIdInfo=" + this.a + ")";
    }

    public dm(AppSetIdInfo appSetIdInfo) {
        this.a = appSetIdInfo;
    }
}
