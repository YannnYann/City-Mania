package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class fx extends vz0 implements uw1 {
    private static final fx DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    private int bitField0_;
    private int pluginIndex_;
    private String pluginName_ = "";
    private int pluginState_;

    static {
        fx fxVar = new fx();
        DEFAULT_INSTANCE = fxVar;
        vz0.a((Class<fx>) fx.class, fxVar);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = fw.a[dVar.ordinal()];
        if (i == 1) {
            return new fx();
        }
        if (i == 2) {
            return new ex();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002᠌\u0001\u0003င\u0002", new Object[]{"bitField0_", "pluginName_", "pluginState_", ix.a, "pluginIndex_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(fx.class);
    }
}
