package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class l11 extends vz0 implements uw1 {
    private static final l11 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    private int bitField0_;
    private nx clientPingMetadata_;
    private yh1.f<k11> payloads_ = vz0.k();

    static {
        l11 l11Var = new l11();
        DEFAULT_INSTANCE = l11Var;
        vz0.a((Class<l11>) l11.class, l11Var);
    }

    public static i11 v() {
        return (i11) DEFAULT_INSTANCE.h();
    }

    public final void a(k11 k11Var) {
        Objects.requireNonNull(k11Var);
        yh1.f<k11> fVar = this.payloads_;
        if (!fVar.b()) {
            this.payloads_ = vz0.a(fVar);
        }
        this.payloads_.add(k11Var);
    }

    public final void a(nx nxVar) {
        Objects.requireNonNull(nxVar);
        this.clientPingMetadata_ = nxVar;
        this.bitField0_ |= 1;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = h11.a[dVar.ordinal()];
        if (i == 1) {
            return new l11();
        }
        if (i == 2) {
            return new i11();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002ဉ\u0000", new Object[]{"bitField0_", "payloads_", k11.class, "clientPingMetadata_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(l11.class);
    }
}
