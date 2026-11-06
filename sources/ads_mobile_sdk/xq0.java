package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class xq0 extends vz0 implements uw1 {
    private static final xq0 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 4;
    public static final int e = 2;
    public static final int f = 3;
    private int bitField0_;
    private boolean usersMatch_;
    private du clearBlob_ = du.b;
    private String clearBlobJs_ = "";
    private yh1.f<du> encryptedBlob_ = vz0.k();

    static {
        xq0 xq0Var = new xq0();
        DEFAULT_INSTANCE = xq0Var;
        vz0.a((Class<xq0>) xq0.class, xq0Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = vq0.a[dVar.ordinal()];
        if (i == 1) {
            return new xq0();
        }
        if (i == 2) {
            return new wq0();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ည\u0000\u0002\u001c\u0003ဇ\u0002\u0004ဈ\u0001", new Object[]{"bitField0_", "clearBlob_", "encryptedBlob_", "usersMatch_", "clearBlobJs_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(xq0.class);
    }
}
