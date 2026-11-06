package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class nw extends vz0 implements uw1 {
    private static final nw DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    private String baseId_ = "";
    private int bitField0_;
    private int type_;

    static {
        nw nwVar = new nw();
        DEFAULT_INSTANCE = nwVar;
        vz0.a((Class<nw>) nw.class, nwVar);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = fw.a[dVar.ordinal()];
        if (i == 1) {
            return new nw();
        }
        if (i == 2) {
            return new mw();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002᠌\u0001", new Object[]{"bitField0_", "baseId_", "type_", cx.a});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(nw.class);
    }
}
