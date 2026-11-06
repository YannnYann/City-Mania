package com.google.android.libraries.ads.mobile.sdk.iconad;

import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesPlacement;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;

/* JADX INFO: loaded from: classes3.dex */
public final class IconSignalRequest extends SignalRequest implements IconRequest {
    public final IconAdPlacement o;
    public final AdChoicesPlacement p;
    public final String q;
    public final boolean r;

    public AdChoicesPlacement getAdChoicesPlacement() {
        return this.p;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.iconad.IconRequest
    public String getCorrelator() {
        return this.q;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.iconad.IconRequest
    public IconAdPlacement getIconAdPlacement() {
        return this.o;
    }

    public boolean isImageLoadingDisabled() {
        return this.r;
    }
}
