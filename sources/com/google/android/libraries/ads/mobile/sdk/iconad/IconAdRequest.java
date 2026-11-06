package com.google.android.libraries.ads.mobile.sdk.iconad;

import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesPlacement;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class IconAdRequest extends AdRequest implements IconRequest {
    public final IconAdPlacement n;
    public final AdChoicesPlacement o;
    public final String p;
    public final boolean q;
    public final boolean r;
    public final Set s;

    public AdChoicesPlacement getAdChoicesPlacement() {
        return this.o;
    }

    public final boolean getAdPersistenceEnabled() {
        return this.r;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.iconad.IconRequest
    public String getCorrelator() {
        return this.p;
    }

    public final Set<String> getExcludedAppIds() {
        return this.s;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.iconad.IconRequest
    public IconAdPlacement getIconAdPlacement() {
        return this.n;
    }

    public boolean isImageLoadingDisabled() {
        return this.q;
    }
}
