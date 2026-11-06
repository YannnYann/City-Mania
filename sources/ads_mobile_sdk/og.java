package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class og implements yh1.b {
    public static final og a = new og();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        pg pgVar;
        switch (i) {
            case 0:
                pgVar = pg.MARKETPLACE_UNSPECIFIED;
                break;
            case 1:
                pgVar = pg.MARKETPLACE_NOT_SET;
                break;
            case 2:
                pgVar = pg.MARKETPLACE_UNKNOWN;
                break;
            case 3:
                pgVar = pg.MARKETPLACE_ERROR;
                break;
            case 4:
                pgVar = pg.MARKETPLACE_API_NOT_AVAILABLE;
                break;
            case 5:
                pgVar = pg.MARKETPLACE_APPSTORE;
                break;
            case 6:
                pgVar = pg.MARKETPLACE_TESTFLIGHT;
                break;
            case 7:
                pgVar = pg.MARKETPLACE_ALTERNATE;
                break;
            case 8:
                pgVar = pg.MARKETPLACE_WEB;
                break;
            case 9:
                pgVar = pg.MARKETPLACE_OTHER;
                break;
            default:
                pgVar = null;
                break;
        }
        return pgVar != null;
    }
}
