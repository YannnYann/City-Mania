package com.google.android.libraries.ads.mobile.sdk.common;

import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.common.annotation.KeepForSdk;
import io.bidmachine.protobuf.EventTypeExtended;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
public abstract class BaseRequest {
    public final String a;
    public final Set b;
    public final String c;
    public final Map d;
    public final Bundle e;
    public final Set f;
    public final Set g;
    public final Map h;
    public final String i;
    public final String j;
    public final long k;
    public final boolean l;

    public BaseRequest(String str, Set categoryExclusions, String str2, Map customTargeting, Bundle googleExtrasBundle, Set keywords, Set neighboringContentUrls, Map adSourceExtrasBundles, String str3, String str4, long j, boolean z) {
        Intrinsics.checkNotNullParameter(categoryExclusions, "categoryExclusions");
        Intrinsics.checkNotNullParameter(customTargeting, "customTargeting");
        Intrinsics.checkNotNullParameter(googleExtrasBundle, "googleExtrasBundle");
        Intrinsics.checkNotNullParameter(keywords, "keywords");
        Intrinsics.checkNotNullParameter(neighboringContentUrls, "neighboringContentUrls");
        Intrinsics.checkNotNullParameter(adSourceExtrasBundles, "adSourceExtrasBundles");
        this.a = str;
        this.b = categoryExclusions;
        this.c = str2;
        this.d = customTargeting;
        this.e = googleExtrasBundle;
        this.f = keywords;
        this.g = neighboringContentUrls;
        this.h = adSourceExtrasBundles;
        this.i = str3;
        this.j = str4;
        this.k = j;
        this.l = z;
    }

    public final Bundle getAdSourceExtrasBundle(Class<? extends MediationExtrasReceiver> adapterClass) {
        Intrinsics.checkNotNullParameter(adapterClass, "adapterClass");
        return Intrinsics.areEqual(adapterClass, AdMobAdapter.class) ? this.e : (Bundle) this.h.get(adapterClass.getName());
    }

    public final Map<String, Bundle> getAdSourceExtrasBundles() {
        return this.h;
    }

    public String getAdUnitId() {
        return this.a;
    }

    public final Set<String> getCategoryExclusions() {
        return this.b;
    }

    public final String getContentUrl() {
        return this.c;
    }

    public final Map<String, String> getCustomTargeting() {
        return this.d;
    }

    public final Bundle getGoogleExtrasBundle() {
        return this.e;
    }

    public final Set<String> getKeywords() {
        return this.f;
    }

    public final Set<String> getNeighboringContentUrls() {
        return this.g;
    }

    public final long getPlacementId() {
        return this.k;
    }

    public final String getPublisherProvidedId() {
        return this.i;
    }

    public final String getRequestAgent() {
        return this.j;
    }

    public final boolean getSkipUninitializedAdapters() {
        return this.l;
    }

    public /* synthetic */ BaseRequest(String str, Set set, String str2, Map map, Bundle bundle, Set set2, Set set3, Map map2, String str3, String str4, long j, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, set, (i & 4) != 0 ? null : str2, map, bundle, set2, set3, map2, (i & 256) != 0 ? null : str3, (i & EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE) != 0 ? null : str4, (i & 1024) != 0 ? 0L : j, (i & com.ironsource.mediationsdk.metadata.a.o) != 0 ? false : z);
    }
}
