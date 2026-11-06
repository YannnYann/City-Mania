package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class lv extends vz0 implements uw1 {
    private static final lv DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 3;
    private yh1.c variationId_ = vz0.i();
    private yh1.c triggerVariationId_ = vz0.i();

    static {
        lv lvVar = new lv();
        DEFAULT_INSTANCE = lvVar;
        vz0.a((Class<lv>) lv.class, lvVar);
    }

    public static lv a(byte[] bArr) {
        return (lv) vz0.a(DEFAULT_INSTANCE, bArr);
    }

    public static kv v() {
        return (kv) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = jv.a[dVar.ordinal()];
        if (i == 1) {
            return new lv();
        }
        if (i == 2) {
            return new kv();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0002\u0000\u0001\u0016\u0003\u0016", new Object[]{"variationId_", "triggerVariationId_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(lv.class);
    }
}
