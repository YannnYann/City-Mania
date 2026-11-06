package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class va0 extends vz0 implements uw1 {
    private static final va0 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 5;
    public static final int g = 6;
    public static final int h = 7;
    private int bitField0_;
    private int id_;
    private int resourceId_;
    private String tag_ = "";
    private yh1.c childIds_ = vz0.i();
    private yh1.f<ta0> attribute_ = vz0.k();
    private du innerHtml_ = du.b;

    static {
        va0 va0Var = new va0();
        DEFAULT_INSTANCE = va0Var;
        vz0.a((Class<va0>) va0.class, va0Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = r70.a[dVar.ordinal()];
        if (i == 1) {
            return new va0();
        }
        if (i == 2) {
            return new ua0();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0006\u0000\u0001\u0001\u0007\u0006\u0000\u0002\u0000\u0001င\u0000\u0002ဈ\u0001\u0003\u0016\u0005င\u0002\u0006\u001b\u0007ည\u0003", new Object[]{"bitField0_", "id_", "tag_", "childIds_", "resourceId_", "attribute_", ta0.class, "innerHtml_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(va0.class);
    }
}
