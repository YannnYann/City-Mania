package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class rw extends vz0 implements uw1 {
    private static final rw DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    private int bitField0_;
    private String encodingVersion_ = "";
    private yh1.c activeBlobIndex_ = vz0.i();

    static {
        rw rwVar = new rw();
        DEFAULT_INSTANCE = rwVar;
        vz0.a((Class<rw>) rw.class, rwVar);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = fw.a[dVar.ordinal()];
        if (i == 1) {
            return new rw();
        }
        if (i == 2) {
            return new qw();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u0016", new Object[]{"bitField0_", "encodingVersion_", "activeBlobIndex_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(rw.class);
    }
}
