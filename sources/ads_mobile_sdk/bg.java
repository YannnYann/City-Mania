package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class bg extends vz0 implements uw1 {
    private static final bg DEFAULT_INSTANCE;
    public static final int c = 1;
    private int bitField0_;
    private int function_;

    static {
        bg bgVar = new bg();
        DEFAULT_INSTANCE = bgVar;
        vz0.a((Class<bg>) bg.class, bgVar);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = wf.a[dVar.ordinal()];
        if (i == 1) {
            return new bg();
        }
        if (i == 2) {
            return new ag();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"bitField0_", "function_", gg.a});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(bg.class);
    }
}
