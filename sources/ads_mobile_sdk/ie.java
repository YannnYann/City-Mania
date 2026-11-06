package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class ie extends vz0 implements uw1 {
    private static final ie DEFAULT_INSTANCE;
    private static final yh1.d.a<t11> allowedFormats_converter_ = new fe();
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    public static final int g = 5;
    public static final int h = 6;
    private long adapterInitializationTimeoutMs_;
    private int allowedFormatsMemoizedSerializedSize;
    private yh1.c allowedFormats_ = vz0.i();
    private yh1.f<String> allowedAdUnits_ = vz0.k();
    private yh1.f<String> allowedAdapterClasses_ = vz0.k();
    private yh1.f<String> excludedAdapterClasses_ = vz0.k();
    private yh1.f<String> initializedAdapterClasses_ = vz0.k();

    static {
        ie ieVar = new ie();
        DEFAULT_INSTANCE = ieVar;
        vz0.a((Class<ie>) ie.class, ieVar);
    }

    public static he v() {
        return (he) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = ge.a[dVar.ordinal()];
        if (i == 1) {
            return new ie();
        }
        if (i == 2) {
            return new he();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0005\u0000\u0001\u0002\u0002,\u0003Ț\u0004Ț\u0005Ț\u0006Ț", new Object[]{"adapterInitializationTimeoutMs_", "allowedFormats_", "allowedAdUnits_", "allowedAdapterClasses_", "excludedAdapterClasses_", "initializedAdapterClasses_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(ie.class);
    }
}
