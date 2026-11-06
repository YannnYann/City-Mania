package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class f21 extends vz0 implements uw1 {
    private static final f21 DEFAULT_INSTANCE;
    public static final int c = 6;
    private int bitField0_;
    private a21 gmaSdkMonitoringMessage_;

    static {
        f21 f21Var = new f21();
        DEFAULT_INSTANCE = f21Var;
        vz0.a((Class<f21>) f21.class, f21Var);
    }

    public static e21 v() {
        return (e21) DEFAULT_INSTANCE.h();
    }

    public final void a(a21 a21Var) {
        Objects.requireNonNull(a21Var);
        this.gmaSdkMonitoringMessage_ = a21Var;
        this.bitField0_ |= 1;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = c21.a[dVar.ordinal()];
        if (i == 1) {
            return new f21();
        }
        if (i == 2) {
            return new e21();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0001\u0000\u0001\u0006\u0006\u0001\u0000\u0000\u0000\u0006ဉ\u0000", new Object[]{"bitField0_", "gmaSdkMonitoringMessage_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(f21.class);
    }
}
