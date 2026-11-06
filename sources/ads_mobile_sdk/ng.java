package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class ng extends vz0 implements uw1 {
    private static final ng DEFAULT_INSTANCE;
    public static final int c = 1;
    private int bitField0_;
    private long keypressDurationNs_ = -1;

    static {
        ng ngVar = new ng();
        DEFAULT_INSTANCE = ngVar;
        vz0.a((Class<ng>) ng.class, ngVar);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = wf.a[dVar.ordinal()];
        if (i == 1) {
            return new ng();
        }
        if (i == 2) {
            return new mg();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဂ\u0000", new Object[]{"bitField0_", "keypressDurationNs_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(ng.class);
    }
}
