package ads_mobile_sdk;

import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class rv1 {
    public static jf a(rv1 rv1Var, String adapterClassName, boolean z, boolean z2, j53 requestType, int i) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        if ((i & 8) != 0) {
            requestType = j53.d;
        }
        rv1Var.getClass();
        Intrinsics.checkNotNullParameter(adapterClassName, "adapterClassName");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        try {
            Object objNewInstance = Class.forName(adapterClassName).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (z) {
                if (objNewInstance instanceof RtbAdapter) {
                    return new u83((RtbAdapter) objNewInstance);
                }
                return null;
            }
            if (objNewInstance instanceof MediationAdapter) {
                MediationAdapter mediationAdapter = (MediationAdapter) objNewInstance;
                if (((requestType == j53.f && (mediationAdapter instanceof MediationBannerAdapter)) || ((requestType == j53.h && (mediationAdapter instanceof MediationInterstitialAdapter)) || (requestType == j53.i && (mediationAdapter instanceof MediationNativeAdapter)))) && !z2) {
                    return new rc2((MediationAdapter) objNewInstance);
                }
            }
            if (objNewInstance instanceof Adapter) {
                return new qv1((Adapter) objNewInstance);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }
}
