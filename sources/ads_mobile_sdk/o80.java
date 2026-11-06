package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class o80 extends vz0 implements uw1 {
    private static final o80 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    private int bitField0_;
    private n80 digests_;
    private long length_;
    private String url_ = "";
    private String fileBasename_ = "";

    static {
        o80 o80Var = new o80();
        DEFAULT_INSTANCE = o80Var;
        vz0.a((Class<o80>) o80.class, o80Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = r70.a[dVar.ordinal()];
        if (i == 1) {
            return new o80();
        }
        if (i == 2) {
            return new l80();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဉ\u0001\u0003ဂ\u0002\u0004ဈ\u0003", new Object[]{"bitField0_", "url_", "digests_", "length_", "fileBasename_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(o80.class);
    }
}
