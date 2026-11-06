package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class hn0 implements yh1.b {
    public static final hn0 a = new hn0();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        in0 in0Var;
        switch (i) {
            case 0:
                in0Var = in0.DEVICE_TYPE_UNKNOWN;
                break;
            case 1:
                in0Var = in0.DEVICE_TYPE_PHONE;
                break;
            case 2:
                in0Var = in0.DEVICE_TYPE_TABLET;
                break;
            case 3:
                in0Var = in0.DEVICE_TYPE_WATCH;
                break;
            case 4:
                in0Var = in0.DEVICE_TYPE_AUTO;
                break;
            case 5:
                in0Var = in0.DEVICE_TYPE_TV;
                break;
            case 6:
                in0Var = in0.DEVICE_TYPE_PC;
                break;
            default:
                in0Var = null;
                break;
        }
        return in0Var != null;
    }
}
