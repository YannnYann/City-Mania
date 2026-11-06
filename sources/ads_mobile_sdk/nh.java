package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class nh extends vz0 implements uw1 {
    private static final nh DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    private int bitField0_;
    private long lifecycle_;
    private long outcome_;
    private long signal_;

    static {
        nh nhVar = new nh();
        DEFAULT_INSTANCE = nhVar;
        vz0.a((Class<nh>) nh.class, nhVar);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = wf.a[dVar.ordinal()];
        if (i == 1) {
            return new nh();
        }
        if (i == 2) {
            return new mh();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002", new Object[]{"bitField0_", "signal_", "outcome_", "lifecycle_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(nh.class);
    }
}
