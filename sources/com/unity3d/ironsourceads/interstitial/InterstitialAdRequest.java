package com.unity3d.ironsourceads.interstitial;

import android.os.Bundle;
import com.ironsource.C3565da;
import com.ironsource.Dc;
import com.ironsource.Jd;
import com.ironsource.mediationsdk.logger.IronLog;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class InterstitialAdRequest {
    private final String a;
    private final String b;
    private final Bundle c;
    private final Jd d;
    private final String e;

    public static final class Builder {
        private final String a;
        private final String b;
        private Bundle c;

        public Builder(String instanceId, String adm) {
            Intrinsics.checkNotNullParameter(instanceId, "instanceId");
            Intrinsics.checkNotNullParameter(adm, "adm");
            this.a = instanceId;
            this.b = adm;
        }

        public final InterstitialAdRequest build() {
            IronLog.API.info("instanceId: " + this.a);
            return new InterstitialAdRequest(this.a, this.b, this.c, null);
        }

        public final String getAdm() {
            return this.b;
        }

        public final String getInstanceId() {
            return this.a;
        }

        public final Builder withExtraParams(Bundle extraParams) {
            Intrinsics.checkNotNullParameter(extraParams, "extraParams");
            this.c = extraParams;
            return this;
        }
    }

    public /* synthetic */ InterstitialAdRequest(String str, String str2, Bundle bundle, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, bundle);
    }

    public final String getAdId$mediationsdk_release() {
        return this.e;
    }

    public final String getAdm() {
        return this.b;
    }

    public final Bundle getExtraParams() {
        return this.c;
    }

    public final String getInstanceId() {
        return this.a;
    }

    public final Jd getProviderName$mediationsdk_release() {
        return this.d;
    }

    private InterstitialAdRequest(String str, String str2, Bundle bundle) {
        this.a = str;
        this.b = str2;
        this.c = bundle;
        this.d = new Dc(str);
        String strB = C3565da.b();
        Intrinsics.checkNotNullExpressionValue(strB, "generateMultipleUniqueInstanceId(...)");
        this.e = strB;
    }
}
