package com.google.android.gms.ads.mediation.admob;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class AdMobAdapter implements MediationExtrasReceiver {
    public static final String AD_JSON_PARAMETER = "adJson";
    public static final String AD_PARAMETER = "_ad";
    public static final Companion Companion = new Companion(0);
    public static final String EXTRA_PARAMETER_DISABLE_REFRESH = "_noRefresh";
    public static final String GWHIRL_REQUEST_PARAMETER = "gw";
    public static final int GWHIRL_REQUEST_PARAMETER_VALUE = 1;
    public static final String HOUSE_ADS_PARAMETER = "mad_hac";
    public static final String NEW_BUNDLE = "_newBundle";

    public static final class Companion {
        public /* synthetic */ Companion(int i) {
            this();
        }

        private Companion() {
        }
    }

    public final Bundle buildExtrasBundle(Bundle bundle, Bundle serverParameters) {
        Bundle bundle2;
        Intrinsics.checkNotNullParameter(serverParameters, "serverParameters");
        if (Build.VERSION.SDK_INT >= 26) {
            bundle2 = bundle != null ? bundle.deepCopy() : null;
            if (bundle2 == null) {
                bundle2 = new Bundle();
            }
        } else {
            bundle2 = new Bundle(bundle);
        }
        if (bundle2.getBoolean(NEW_BUNDLE)) {
            bundle2 = new Bundle(bundle2);
        }
        bundle2.putInt(GWHIRL_REQUEST_PARAMETER, 1);
        bundle2.putString(HOUSE_ADS_PARAMETER, serverParameters.getString(HOUSE_ADS_PARAMETER));
        if (!TextUtils.isEmpty(serverParameters.getString(AD_JSON_PARAMETER))) {
            bundle2.putString(AD_PARAMETER, serverParameters.getString(AD_JSON_PARAMETER));
        }
        bundle2.putBoolean(EXTRA_PARAMETER_DISABLE_REFRESH, true);
        return bundle2;
    }
}
