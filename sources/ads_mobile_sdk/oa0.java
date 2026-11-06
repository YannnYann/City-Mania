package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class oa0 implements yh1.b {
    public static final oa0 a = new oa0();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        pa0 pa0Var;
        switch (i) {
            case 0:
                pa0Var = pa0.UNKNOWN;
                break;
            case 1:
                pa0Var = pa0.PHISHING_INTERSTITIAL;
                break;
            case 2:
                pa0Var = pa0.CLIENT_SIDE_PHISHING_INTERSTITIAL;
                break;
            case 3:
                pa0Var = pa0.MALWARE_INTERSTITIAL;
                break;
            case 4:
                pa0Var = pa0.UWS_INTERSTITIAL;
                break;
            case 5:
                pa0Var = pa0.BILLING_INTERSTITIAL;
                break;
            case 6:
                pa0Var = pa0.BINARY_MALWARE_DOWNLOAD_WARNING;
                break;
            default:
                pa0Var = null;
                break;
        }
        return pa0Var != null;
    }
}
