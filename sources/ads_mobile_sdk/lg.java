package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class lg extends vz0 implements uw1 {
    private static final lg DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    private int bitField0_;
    private long source_ = -1;
    private int isPhysicalInput_ = 1000;
    private int verified_ = 1000;

    static {
        lg lgVar = new lg();
        DEFAULT_INSTANCE = lgVar;
        vz0.a((Class<lg>) lg.class, lgVar);
    }

    public static kg v() {
        return (kg) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = wf.a[dVar.ordinal()];
        if (i == 1) {
            return new lg();
        }
        if (i == 2) {
            return new kg();
        }
        if (i == 3) {
            qh qhVar = qh.a;
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဂ\u0000\u0002᠌\u0001\u0003᠌\u0002", new Object[]{"bitField0_", "source_", "isPhysicalInput_", qhVar, "verified_", qhVar});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(lg.class);
    }
}
