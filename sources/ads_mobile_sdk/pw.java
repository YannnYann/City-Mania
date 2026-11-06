package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class pw extends vz0 implements uw1 {
    private static final pw DEFAULT_INSTANCE;
    public static final int c = 1;
    private int bitField0_;
    private nw increment_;

    static {
        pw pwVar = new pw();
        DEFAULT_INSTANCE = pwVar;
        vz0.a((Class<pw>) pw.class, pwVar);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = fw.a[dVar.ordinal()];
        if (i == 1) {
            return new pw();
        }
        if (i == 2) {
            return new ow();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဉ\u0000", new Object[]{"bitField0_", "increment_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(pw.class);
    }
}
