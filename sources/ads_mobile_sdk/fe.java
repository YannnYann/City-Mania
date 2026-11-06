package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class fe implements yh1.d.a {
    @Override // ads_mobile_sdk.yh1.d.a
    public final Object a(int i) {
        t11 t11Var;
        switch (i) {
            case 0:
                t11Var = t11.FORMAT_UNKNOWN;
                break;
            case 1:
                t11Var = t11.FORMAT_BANNER;
                break;
            case 2:
                t11Var = t11.FORMAT_INTERSTITIAL;
                break;
            case 3:
                t11Var = t11.FORMAT_REWARDED;
                break;
            case 4:
                t11Var = t11.FORMAT_REWARDED_INTERSTITIAL;
                break;
            case 5:
                t11Var = t11.FORMAT_APP_OPEN;
                break;
            case 6:
                t11Var = t11.FORMAT_NATIVE;
                break;
            case 7:
                t11Var = t11.FORMAT_ICON;
                break;
            case 8:
                t11Var = t11.FORMAT_SWIPEABLE_INTERSTITIAL;
                break;
            default:
                t11Var = null;
                break;
        }
        return t11Var == null ? t11.UNRECOGNIZED : t11Var;
    }
}
