package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class hz3 extends vz0 implements uw1 {
    private static final hz3 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    public static final int g = 5;
    private long maxTimePerTaskInUiThreadMs_;
    private long totalTimeInUiThreadMs_;
    private yh1.f<String> blockedStartupLocations_ = vz0.k();
    private yh1.f<String> nonUiThreadBlockingStartupLocations_ = vz0.k();
    private yh1.f<String> uiThreadBlockingStartupLocations_ = vz0.k();

    static {
        hz3 hz3Var = new hz3();
        DEFAULT_INSTANCE = hz3Var;
        vz0.a((Class<hz3>) hz3.class, hz3Var);
    }

    public static gz3 v() {
        return (gz3) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = fz3.a[dVar.ordinal()];
        if (i == 1) {
            return new hz3();
        }
        if (i == 2) {
            return new gz3();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0003\u0000\u0001\u0002\u0002\u0002\u0003Ț\u0004Ț\u0005Ț", new Object[]{"totalTimeInUiThreadMs_", "maxTimePerTaskInUiThreadMs_", "blockedStartupLocations_", "nonUiThreadBlockingStartupLocations_", "uiThreadBlockingStartupLocations_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(hz3.class);
    }
}
