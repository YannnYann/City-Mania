package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class sg implements yh1.b {
    public static final sg a = new sg();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        tg tgVar;
        switch (i) {
            case 0:
                tgVar = tg.NETWORK_INTERFACE_UNSPECIFIED;
                break;
            case 1:
                tgVar = tg.NETWORK_INTERFACE_NOT_SET;
                break;
            case 2:
                tgVar = tg.NETWORK_INTERFACE_ERROR;
                break;
            case 3:
                tgVar = tg.NETWORK_INTERFACE_WIFI;
                break;
            case 4:
                tgVar = tg.NETWORK_INTERFACE_CELLULAR;
                break;
            case 5:
                tgVar = tg.NETWORK_INTERFACE_ETHERNET;
                break;
            case 6:
                tgVar = tg.NETWORK_INTERFACE_LOOPBACK;
                break;
            case 7:
                tgVar = tg.NETWORK_INTERFACE_OTHER;
                break;
            case 8:
                tgVar = tg.NETWORK_INTERFACE_NO_CONNECTION;
                break;
            default:
                tgVar = null;
                break;
        }
        return tgVar != null;
    }
}
