package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class yf implements yh1.b {
    public static final yf a = new yf();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        zf zfVar;
        switch (i) {
            case 0:
                zfVar = zf.DEBUGGER_STATE_UNSPECIFIED;
                break;
            case 1:
                zfVar = zf.DEBUGGER_STATE_NOT_INSTALLED;
                break;
            case 2:
                zfVar = zf.DEBUGGER_STATE_INSTALLED;
                break;
            case 3:
                zfVar = zf.DEBUGGER_STATE_ACTIVE;
                break;
            case 4:
                zfVar = zf.DEBUGGER_STATE_ENVVAR;
                break;
            case 5:
                zfVar = zf.DEBUGGER_STATE_MACHPORT;
                break;
            case 6:
                zfVar = zf.DEBUGGER_STATE_ENVVAR_MACHPORT;
                break;
            default:
                zfVar = null;
                break;
        }
        return zfVar != null;
    }
}
