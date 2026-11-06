package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class oh implements yh1.b {
    public static final oh a = new oh();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        ph phVar;
        switch (i) {
            case 0:
                phVar = ph.UNKNOWN_ENCRYPTION_METHOD;
                break;
            case 1:
                phVar = ph.BITSLICER;
                break;
            case 2:
                phVar = ph.TINK_HYBRID;
                break;
            case 3:
                phVar = ph.UNENCRYPTED;
                break;
            case 4:
                phVar = ph.DG;
                break;
            case 5:
                phVar = ph.DG_XTEA;
                break;
            case 6:
                phVar = ph.ADSHIELD_3;
                break;
            default:
                phVar = null;
                break;
        }
        return phVar != null;
    }
}
