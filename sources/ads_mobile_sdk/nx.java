package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class nx extends vz0 implements uw1 {
    private static final nx DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    private int binaryName_;
    private int selectedExperimentIdsMemoizedSerializedSize = -1;
    private String versionNumber_ = "";
    private yh1.c selectedExperimentIds_ = vz0.i();

    static {
        nx nxVar = new nx();
        DEFAULT_INSTANCE = nxVar;
        vz0.a((Class<nx>) nx.class, nxVar);
    }

    public static mx v() {
        return (mx) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = kx.a[dVar.ordinal()];
        if (i == 1) {
            return new nx();
        }
        if (i == 2) {
            return new mx();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001\f\u0002Ȉ\u0003'", new Object[]{"binaryName_", "versionNumber_", "selectedExperimentIds_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(nx.class);
    }
}
