package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class cg implements yh1.b {
    public static final cg a = new cg();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        dg dgVar;
        switch (i) {
            case 0:
                dgVar = dg.DEVICE_IDENTIFIER_NO_ID;
                break;
            case 1:
                dgVar = dg.DEVICE_IDENTIFIER_APP_SPECIFIC_ID;
                break;
            case 2:
                dgVar = dg.DEVICE_IDENTIFIER_GLOBAL_ID;
                break;
            case 3:
                dgVar = dg.DEVICE_IDENTIFIER_ADVERTISER_ID;
                break;
            case 4:
                dgVar = dg.DEVICE_IDENTIFIER_ADVERTISER_ID_UNHASHED;
                break;
            case 5:
                dgVar = dg.DEVICE_IDENTIFIER_ANDROID_AD_ID;
                break;
            case 6:
                dgVar = dg.DEVICE_IDENTIFIER_GFIBER_ADVERTISING_ID;
                break;
            case 7:
                dgVar = dg.DEVICE_IDENTIFIER_PER_APP_ID;
                break;
            case 8:
                dgVar = dg.DEVICE_IDENTIFIER_PER_APP_ID_V2;
                break;
            case 9:
                dgVar = dg.DEVICE_IDENTIFIER_CONNECTED_TV_IFA;
                break;
            default:
                dgVar = null;
                break;
        }
        return dgVar != null;
    }
}
