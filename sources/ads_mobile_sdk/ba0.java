package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class ba0 implements yh1.b {
    public static final ba0 a = new ba0();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        ca0 ca0Var;
        switch (i) {
            case 0:
                ca0Var = ca0.SAFE_BROWSING_URL_API_TYPE_UNSPECIFIED;
                break;
            case 1:
                ca0Var = ca0.PVER3_NATIVE;
                break;
            case 2:
                ca0Var = ca0.PVER4_NATIVE;
                break;
            case 3:
                ca0Var = ca0.ANDROID_SAFETYNET;
                break;
            case 4:
                ca0Var = ca0.FLYWHEEL;
                break;
            case 5:
                ca0Var = ca0.REAL_TIME;
                break;
            case 6:
                ca0Var = ca0.PVER5_NATIVE_REAL_TIME;
                break;
            case 7:
                ca0Var = ca0.ANDROID_SAFEBROWSING_REAL_TIME;
                break;
            case 8:
                ca0Var = ca0.ANDROID_SAFEBROWSING;
                break;
            case 9:
                ca0Var = ca0.CLIENT_SIDE_DETECTION;
                break;
            case 10:
                ca0Var = ca0.GLIC;
                break;
            case 11:
                ca0Var = ca0.PVER5_NATIVE_LOCAL_BLOCKLIST;
                break;
            default:
                ca0Var = null;
                break;
        }
        return ca0Var != null;
    }
}
