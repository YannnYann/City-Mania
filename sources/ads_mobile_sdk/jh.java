package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class jh extends vz0 implements uw1 {
    private static final jh DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    private int labelsMemoizedSerializedSize = -1;
    private int reasonsMemoizedSerializedSize = -1;
    private yh1.e labels_ = vz0.j();
    private yh1.e reasons_ = vz0.j();

    static {
        jh jhVar = new jh();
        DEFAULT_INSTANCE = jhVar;
        vz0.a((Class<jh>) jh.class, jhVar);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = wf.a[dVar.ordinal()];
        if (i == 1) {
            return new jh();
        }
        if (i == 2) {
            return new ih();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0002\u0000\u0001%\u0002%", new Object[]{"labels_", "reasons_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(jh.class);
    }
}
