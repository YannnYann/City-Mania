package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class d11 extends vz0 implements uw1 {
    private static final d11 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 4;
    public static final int f = 3;
    private int status_;
    private String stacktrace_ = "";
    private String topException_ = "";
    private String conduitTraceKey_ = "";

    static {
        d11 d11Var = new d11();
        DEFAULT_INSTANCE = d11Var;
        vz0.a((Class<d11>) d11.class, d11Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = y01.a[dVar.ordinal()];
        if (i == 1) {
            return new d11();
        }
        if (i == 2) {
            return new c11();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\f\u0002Ȉ\u0003Ȉ\u0004Ȉ", new Object[]{"status_", "stacktrace_", "conduitTraceKey_", "topException_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(d11.class);
    }
}
