package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class ea0 extends vz0 implements uw1 {
    private static final ea0 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    private int bitField0_;
    private String scopeUrl_ = "";
    private yh1.f<String> requestedUrls_ = vz0.k();
    private yh1.f<String> importScriptUrls_ = vz0.k();
    private String scriptUrl_ = "";

    static {
        ea0 ea0Var = new ea0();
        DEFAULT_INSTANCE = ea0Var;
        vz0.a((Class<ea0>) ea0.class, ea0Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = r70.a[dVar.ordinal()];
        if (i == 1) {
            return new ea0();
        }
        if (i == 2) {
            return new da0();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001ဈ\u0000\u0002\u001a\u0003\u001a\u0004ဈ\u0001", new Object[]{"bitField0_", "scopeUrl_", "requestedUrls_", "importScriptUrls_", "scriptUrl_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(ea0.class);
    }
}
