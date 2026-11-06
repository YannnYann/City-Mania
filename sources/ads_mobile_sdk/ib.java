package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class ib extends vz0 implements uw1 {
    private static final ib DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    private int bitField0_;
    private ra clientPingMetadata_;
    private yh1.f<gb> payloads_ = vz0.k();

    static {
        ib ibVar = new ib();
        DEFAULT_INSTANCE = ibVar;
        vz0.a((Class<ib>) ib.class, ibVar);
    }

    public static hb v() {
        return (hb) DEFAULT_INSTANCE.h();
    }

    public final void a(gb gbVar) {
        Objects.requireNonNull(gbVar);
        yh1.f<gb> fVar = this.payloads_;
        if (!fVar.b()) {
            this.payloads_ = vz0.a(fVar);
        }
        this.payloads_.add(gbVar);
    }

    public final void a(ra raVar) {
        Objects.requireNonNull(raVar);
        this.clientPingMetadata_ = raVar;
        this.bitField0_ |= 1;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = eb.a[dVar.ordinal()];
        if (i == 1) {
            return new ib();
        }
        if (i == 2) {
            return new hb();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002ဉ\u0000", new Object[]{"bitField0_", "payloads_", gb.class, "clientPingMetadata_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(ib.class);
    }
}
