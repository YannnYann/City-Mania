package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class ba3 extends vz0 implements uw1 {
    private static final ba3 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    private int evictionReason_;
    private int scarRequestType_;
    private String requestId_ = "";
    private String requestAgent_ = "";

    static {
        ba3 ba3Var = new ba3();
        DEFAULT_INSTANCE = ba3Var;
        vz0.a((Class<ba3>) ba3.class, ba3Var);
    }

    public static z93 v() {
        return (z93) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = y93.a[dVar.ordinal()];
        if (i == 1) {
            return new ba3();
        }
        if (i == 2) {
            return new z93();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\f\u0002Ȉ\u0003\f\u0004Ȉ", new Object[]{"evictionReason_", "requestId_", "scarRequestType_", "requestAgent_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(ba3.class);
    }

    public final void b(String str) {
        this.requestAgent_ = str;
    }

    public final void c(String str) {
        this.requestId_ = str;
    }
}
