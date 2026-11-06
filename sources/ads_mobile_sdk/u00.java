package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class u00 extends vz0 implements uw1 {
    private static final u00 DEFAULT_INSTANCE;
    private static final yh1.d.a<s00> allowedApis_converter_ = new q00();
    public static final int c = 1;
    private int allowedApisMemoizedSerializedSize;
    private yh1.c allowedApis_ = vz0.i();

    static {
        u00 u00Var = new u00();
        DEFAULT_INSTANCE = u00Var;
        vz0.a((Class<u00>) u00.class, u00Var);
    }

    public static u00 y() {
        return DEFAULT_INSTANCE;
    }

    public static t00 z() {
        return (t00) DEFAULT_INSTANCE.h();
    }

    public final yh1.d w() {
        return new yh1.d(this.allowedApis_, allowedApis_converter_);
    }

    public final void a(s00 s00Var) {
        yh1.c cVar = this.allowedApis_;
        if (!cVar.b()) {
            this.allowedApis_ = vz0.a(cVar);
        }
        this.allowedApis_.b(s00Var.getNumber());
    }

    public final yh1.c x() {
        return this.allowedApis_;
    }

    public static u00 a(byte[] bArr) {
        return (u00) vz0.a(DEFAULT_INSTANCE, bArr);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = r00.a[dVar.ordinal()];
        if (i == 1) {
            return new u00();
        }
        if (i == 2) {
            return new t00();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001,", new Object[]{"allowedApis_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(u00.class);
    }

    public final int v() {
        return this.allowedApis_.size();
    }
}
