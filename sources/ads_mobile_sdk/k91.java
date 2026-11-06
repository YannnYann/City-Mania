package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.iconad.IconAdPlacement;
import com.google.android.libraries.ads.mobile.sdk.iconad.IconAdRequest;
import com.google.android.libraries.ads.mobile.sdk.iconad.IconRequest;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class k91 implements oe3 {
    public final IconRequest a;

    public k91(IconRequest iconRequest) {
        Intrinsics.checkNotNullParameter(iconRequest, "iconRequest");
        this.a = iconRequest;
    }

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        signals.isIconAdRequest = Boolean.TRUE;
        signals.correlator = this.a.getCorrelator();
        IconAdPlacement iconAdPlacement = this.a.getIconAdPlacement();
        if (iconAdPlacement != null) {
            signals.iconAdPlacement = Integer.valueOf(iconAdPlacement.getValue());
        }
        IconRequest iconRequest = this.a;
        IconAdRequest iconAdRequest = iconRequest instanceof IconAdRequest ? (IconAdRequest) iconRequest : null;
        Set<String> excludedAppIds = iconAdRequest != null ? iconAdRequest.getExcludedAppIds() : null;
        if (excludedAppIds == null || excludedAppIds.isEmpty()) {
            return;
        }
        signals.excludedAppIds = CollectionsKt___CollectionsKt.joinToString$default(excludedAppIds, "|", null, null, 0, null, null, 62, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof k91) && Intrinsics.areEqual(this.a, ((k91) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "IconAdSignal(iconRequest=" + this.a + ")";
    }
}
