package com.google.android.libraries.ads.mobile.sdk.initialization;

import com.google.android.libraries.ads.mobile.sdk.common.AdFormat;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class AdapterInitializationConfig {
    public final long a;
    public final Set b;
    public final Set c;
    public final Set d;
    public final Set e;
    public final long f;

    public final long a() {
        return this.a;
    }

    public final Set<AdFormat> getAllowedAdFormats() {
        return this.b;
    }

    public final Set<String> getAllowedAdUnitIds() {
        return this.c;
    }

    public final Set<String> getAllowedAdapterClasses() {
        return this.d;
    }

    public final Set<String> getExcludedAdapterClasses() {
        return this.e;
    }

    public final long getInitializationTimeoutMs() {
        return this.f;
    }
}
