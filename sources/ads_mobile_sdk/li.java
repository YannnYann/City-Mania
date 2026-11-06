package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class li extends vz0 implements uw1 {
    private static final li DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    private int eventType_;
    private long timestampMs_;

    static {
        li liVar = new li();
        DEFAULT_INSTANCE = liVar;
        vz0.a((Class<li>) li.class, liVar);
    }

    public static ji v() {
        return (ji) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = ii.a[dVar.ordinal()];
        if (i == 1) {
            return new li();
        }
        if (i == 2) {
            return new ji();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002\u0002", new Object[]{"eventType_", "timestampMs_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(li.class);
    }
}
