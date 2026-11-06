package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import com.google.android.gms.ads.AdFormat;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class MediationConfiguration {
    public static final String CUSTOM_EVENT_SERVER_PARAMETER_FIELD = "parameter";
    public static final Companion Companion = new Companion(0);
    private final AdFormat a;
    private final Bundle b;

    public static final class Companion {
        public /* synthetic */ Companion(int i) {
            this();
        }

        private Companion() {
        }
    }

    public MediationConfiguration(AdFormat format, Bundle serverParameters) {
        Intrinsics.checkNotNullParameter(format, "format");
        Intrinsics.checkNotNullParameter(serverParameters, "serverParameters");
        this.a = format;
        this.b = serverParameters;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof MediationConfiguration)) {
            return false;
        }
        MediationConfiguration mediationConfiguration = (MediationConfiguration) obj;
        return this.a == mediationConfiguration.a && Intrinsics.areEqual(this.b, mediationConfiguration.b);
    }

    public final AdFormat getFormat() {
        return this.a;
    }

    public final Bundle getServerParameters() {
        return this.b;
    }
}
