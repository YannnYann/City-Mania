package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class jg extends vz0 implements uw1 {
    private static final jg DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    private int bitField0_;
    private int frontCamera_ = 1000;
    private int rearCamera_ = 1000;
    private int frontFlash_ = 1000;
    private int rearFlash_ = 1000;

    static {
        jg jgVar = new jg();
        DEFAULT_INSTANCE = jgVar;
        vz0.a((Class<jg>) jg.class, jgVar);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = wf.a[dVar.ordinal()];
        if (i == 1) {
            return new jg();
        }
        if (i == 2) {
            return new ig();
        }
        if (i == 3) {
            qh qhVar = qh.a;
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003᠌\u0002\u0004᠌\u0003", new Object[]{"bitField0_", "frontCamera_", qhVar, "rearCamera_", qhVar, "frontFlash_", qhVar, "rearFlash_", qhVar});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(jg.class);
    }
}
