package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class iw extends vz0 implements uw1 {
    private static final iw DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    private int bitField0_;
    private String downloadPath_ = "";
    private boolean meteredAllowed_;
    private boolean roamingAllowed_;

    static {
        iw iwVar = new iw();
        DEFAULT_INSTANCE = iwVar;
        vz0.a((Class<iw>) iw.class, iwVar);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = fw.a[dVar.ordinal()];
        if (i == 1) {
            return new iw();
        }
        if (i == 2) {
            return new hw();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0003ဇ\u0002", new Object[]{"bitField0_", "downloadPath_", "meteredAllowed_", "roamingAllowed_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(iw.class);
    }
}
