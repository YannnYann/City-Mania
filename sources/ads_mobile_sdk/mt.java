package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class mt extends vz0 implements uw1 {
    private static final mt DEFAULT_INSTANCE;
    public static final int c = 1;
    private int bitField0_;
    private int errorType_;

    static {
        mt mtVar = new mt();
        DEFAULT_INSTANCE = mtVar;
        vz0.a((Class<mt>) mt.class, mtVar);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = ft.a[dVar.ordinal()];
        if (i == 1) {
            return new mt();
        }
        if (i == 2) {
            return new lt();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"bitField0_", "errorType_", ht.a});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(mt.class);
    }
}
