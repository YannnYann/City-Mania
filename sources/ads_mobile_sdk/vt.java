package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class vt extends vz0 implements uw1 {
    private static final vt DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    private int bitField0_;
    private long major_;
    private long micro_;
    private long minor_;

    static {
        vt vtVar = new vt();
        DEFAULT_INSTANCE = vtVar;
        vz0.a((Class<vt>) vt.class, vtVar);
    }

    public static ut v() {
        return (ut) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = ft.a[dVar.ordinal()];
        if (i == 1) {
            return new vt();
        }
        if (i == 2) {
            return new ut();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဃ\u0000\u0002ဃ\u0001\u0003ဃ\u0002", new Object[]{"bitField0_", "major_", "minor_", "micro_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(vt.class);
    }
}
