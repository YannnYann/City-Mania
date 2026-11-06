package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class p80 implements yh1.b {
    public static final p80 a = new p80();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        q80 q80Var;
        switch (i) {
            case 0:
                q80Var = q80.ACTION_UNSPECIFIED;
                break;
            case 1:
                q80Var = q80.PROCEED;
                break;
            case 2:
                q80Var = q80.DISCARD;
                break;
            case 3:
                q80Var = q80.KEEP;
                break;
            case 4:
                q80Var = q80.CLOSE;
                break;
            case 5:
                q80Var = q80.CANCEL;
                break;
            case 6:
                q80Var = q80.DISMISS;
                break;
            case 7:
                q80Var = q80.BACK;
                break;
            case 8:
                q80Var = q80.OPEN_SUBPAGE;
                break;
            case 9:
                q80Var = q80.PROCEED_DEEP_SCAN;
                break;
            case 10:
                q80Var = q80.OPEN_LEARN_MORE_LINK;
                break;
            default:
                q80Var = null;
                break;
        }
        return q80Var != null;
    }
}
