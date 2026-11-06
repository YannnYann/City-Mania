package com.google.android.gms.ads.mediation.rtb;

import ads_mobile_sdk.h93;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class RtbSignalData {
    private final Context a;
    private final List b;
    private final Bundle c;
    private final AdSize d;

    public RtbSignalData(Context context, List<MediationConfiguration> configurations, Bundle networkExtras, AdSize adSize) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configurations, "configurations");
        Intrinsics.checkNotNullParameter(networkExtras, "networkExtras");
        this.a = context;
        this.b = configurations;
        this.c = networkExtras;
        this.d = adSize;
    }

    public final Context component1() {
        return this.a;
    }

    public final List<MediationConfiguration> component2() {
        return this.b;
    }

    public final Bundle component3() {
        return this.c;
    }

    public final AdSize component4() {
        return this.d;
    }

    public final RtbSignalData copy(Context context, List<MediationConfiguration> configurations, Bundle networkExtras, AdSize adSize) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configurations, "configurations");
        Intrinsics.checkNotNullParameter(networkExtras, "networkExtras");
        return new RtbSignalData(context, configurations, networkExtras, adSize);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RtbSignalData)) {
            return false;
        }
        RtbSignalData rtbSignalData = (RtbSignalData) obj;
        return Intrinsics.areEqual(this.a, rtbSignalData.a) && Intrinsics.areEqual(this.b, rtbSignalData.b) && Intrinsics.areEqual(this.c, rtbSignalData.c) && Intrinsics.areEqual(this.d, rtbSignalData.d);
    }

    public final AdSize getAdSize() {
        return this.d;
    }

    public final MediationConfiguration getConfiguration() {
        return (MediationConfiguration) CollectionsKt___CollectionsKt.firstOrNull(this.b);
    }

    public final List<MediationConfiguration> getConfigurations() {
        return this.b;
    }

    public final Context getContext() {
        return this.a;
    }

    public final Bundle getNetworkExtras() {
        return this.c;
    }

    public int hashCode() {
        int iHashCode = (this.c.hashCode() + h93.a(this.b, this.a.hashCode() * 31, 31)) * 31;
        AdSize adSize = this.d;
        return iHashCode + (adSize == null ? 0 : adSize.hashCode());
    }

    public String toString() {
        return "RtbSignalData(context=" + this.a + ", configurations=" + this.b + ", networkExtras=" + this.c + ", adSize=" + this.d + ")";
    }
}
