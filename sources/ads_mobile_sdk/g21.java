package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class g21 extends vz0 implements uw1 {
    private static final g21 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    private int bitField0_;
    private nx clientPingMetadata_;
    private yh1.f<f21> payloads_ = vz0.k();

    static {
        g21 g21Var = new g21();
        DEFAULT_INSTANCE = g21Var;
        vz0.a((Class<g21>) g21.class, g21Var);
    }

    public static d21 v() {
        return (d21) DEFAULT_INSTANCE.h();
    }

    public final void a(f21 f21Var) {
        Objects.requireNonNull(f21Var);
        yh1.f<f21> fVar = this.payloads_;
        if (!fVar.b()) {
            this.payloads_ = vz0.a(fVar);
        }
        this.payloads_.add(f21Var);
    }

    public final void a(nx nxVar) {
        Objects.requireNonNull(nxVar);
        this.clientPingMetadata_ = nxVar;
        this.bitField0_ |= 1;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = c21.a[dVar.ordinal()];
        if (i == 1) {
            return new g21();
        }
        if (i == 2) {
            return new d21();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002ဉ\u0000", new Object[]{"bitField0_", "payloads_", f21.class, "clientPingMetadata_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(g21.class);
    }
}
