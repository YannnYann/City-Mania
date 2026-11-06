package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class bx extends vz0 implements uw1 {
    private static final bx DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    private int bitField0_;
    private int densityDpi_;
    private int heightPixels_;
    private yh1.f<String> supportedAbi_ = vz0.k();
    private int widthPixels_;

    static {
        bx bxVar = new bx();
        DEFAULT_INSTANCE = bxVar;
        vz0.a((Class<bx>) bx.class, bxVar);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = fw.a[dVar.ordinal()];
        if (i == 1) {
            return new bx();
        }
        if (i == 2) {
            return new ax();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002\u0004\u001a", new Object[]{"bitField0_", "densityDpi_", "widthPixels_", "heightPixels_", "supportedAbi_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(bx.class);
    }
}
