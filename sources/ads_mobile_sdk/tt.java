package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class tt extends vz0 implements uw1 {
    private static final tt DEFAULT_INSTANCE;
    public static final int c = 4;
    public static final int d = 5;
    private int bitField0_;
    private String errorDescription_ = "";
    private int errorType_;

    static {
        tt ttVar = new tt();
        DEFAULT_INSTANCE = ttVar;
        vz0.a((Class<tt>) tt.class, ttVar);
    }

    public static st v() {
        return (st) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = ft.a[dVar.ordinal()];
        if (i == 1) {
            return new tt();
        }
        if (i == 2) {
            return new st();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0004\u0005\u0002\u0000\u0000\u0000\u0004᠌\u0000\u0005ဈ\u0001", new Object[]{"bitField0_", "errorType_", ht.a, "errorDescription_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(tt.class);
    }

    public final void b(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 2;
        this.errorDescription_ = str;
    }
}
