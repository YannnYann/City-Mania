package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class bb0 implements yh1.b {
    public static final bb0 a = new bb0();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        cb0 cb0Var;
        switch (i) {
            case 1:
                cb0Var = cb0.EVENT_URL;
                break;
            case 2:
                cb0Var = cb0.LANDING_PAGE;
                break;
            case 3:
                cb0Var = cb0.LANDING_REFERRER;
                break;
            case 4:
                cb0Var = cb0.CLIENT_REDIRECT;
                break;
            case 5:
                cb0Var = cb0.SERVER_REDIRECT;
                break;
            case 6:
                cb0Var = cb0.RECENT_NAVIGATION;
                break;
            case 7:
                cb0Var = cb0.REFERRER;
                break;
            default:
                cb0Var = null;
                break;
        }
        return cb0Var != null;
    }
}
