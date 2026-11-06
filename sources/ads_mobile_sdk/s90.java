package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class s90 extends vz0 implements uw1 {
    private static final s90 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    private int bitField0_;
    private du imageDigest_;
    private du image_;
    private String mimeType_ = "";
    private int type_;

    static {
        s90 s90Var = new s90();
        DEFAULT_INSTANCE = s90Var;
        vz0.a((Class<s90>) s90.class, s90Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = r70.a[dVar.ordinal()];
        if (i == 1) {
            return new s90();
        }
        if (i == 2) {
            return new p90();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001᠌\u0000\u0002ဈ\u0001\u0003ည\u0002\u0004ည\u0003", new Object[]{"bitField0_", "type_", q90.a, "mimeType_", "image_", "imageDigest_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(s90.class);
    }

    public s90() {
        du duVar = du.b;
        this.image_ = duVar;
        this.imageDigest_ = duVar;
    }
}
