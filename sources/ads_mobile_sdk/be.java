package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class be extends vz0 implements uw1 {
    private static final be DEFAULT_INSTANCE;
    public static final int c = 1;
    private yh1.f<ee> initializationData_ = vz0.k();

    static {
        be beVar = new be();
        DEFAULT_INSTANCE = beVar;
        vz0.a((Class<be>) be.class, beVar);
    }

    public static be v() {
        return DEFAULT_INSTANCE;
    }

    public static ae x() {
        return (ae) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = zd.a[dVar.ordinal()];
        if (i == 1) {
            return new be();
        }
        if (i == 2) {
            return new ae();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"initializationData_", ee.class});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(be.class);
    }

    public final List w() {
        return this.initializationData_;
    }
}
