package com.google.android.libraries.ads.mobile.sdk.initialization;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class InitializationConfig {
    public static final Companion Companion = new Companion(0);
    public final String a;
    public final boolean b;
    public final boolean c;
    public final RequestConfiguration d;
    public final Bundle e;
    public final AdapterInitializationConfig f;
    public final String g;
    public final boolean h;

    public static final class Builder {
        public final String a;
        public Bundle b;
        public RequestConfiguration c;
        public boolean d;
        public boolean e;
        public AdapterInitializationConfig f;
        public String g;
        public boolean h;

        public Builder(String applicationId) {
            Intrinsics.checkNotNullParameter(applicationId, "applicationId");
            this.a = applicationId;
            this.b = new Bundle();
            this.c = new RequestConfiguration.Builder().build();
        }

        public final InitializationConfig build() {
            return new InitializationConfig(this.a, this.d, this.e, this.c, this.b, this.f, this.g, this.h, 0);
        }

        public final Builder disableMediationAdapterInitialization() {
            this.e = true;
            return this;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(int i) {
            this();
        }

        public Companion() {
        }
    }

    public /* synthetic */ InitializationConfig(String str, boolean z, boolean z2, RequestConfiguration requestConfiguration, Bundle bundle, AdapterInitializationConfig adapterInitializationConfig, String str2, boolean z3, int i) {
        this(str, z, z2, requestConfiguration, bundle, adapterInitializationConfig, str2, z3);
    }

    public final /* synthetic */ String a() {
        return this.g;
    }

    public final AdapterInitializationConfig getAdapterInitializationConfig() {
        return this.f;
    }

    public final String getApplicationId() {
        return this.a;
    }

    public final Bundle getExtras() {
        return this.e;
    }

    public final boolean getMediationAdapterInitializationDisabled() {
        return this.c;
    }

    public final boolean getNativeAdDebuggerDisabled() {
        return this.b;
    }

    public final RequestConfiguration getRequestConfiguration() {
        return this.d;
    }

    public final boolean getSdkCrashReportingDisabled() {
        return this.h;
    }

    public InitializationConfig(String str, boolean z, boolean z2, RequestConfiguration requestConfiguration, Bundle bundle, AdapterInitializationConfig adapterInitializationConfig, String str2, boolean z3) {
        this.a = str;
        this.b = z;
        this.c = z2;
        this.d = requestConfiguration;
        this.e = bundle;
        this.f = adapterInitializationConfig;
        this.g = str2;
        this.h = z3;
    }
}
