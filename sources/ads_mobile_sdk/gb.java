package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class gb extends vz0 implements uw1 {
    private static final gb DEFAULT_INSTANCE;
    public static final int c = 18;
    private xa adshieldMonitoringMessage_;
    private int bitField0_;

    static {
        gb gbVar = new gb();
        DEFAULT_INSTANCE = gbVar;
        vz0.a((Class<gb>) gb.class, gbVar);
    }

    public static fb v() {
        return (fb) DEFAULT_INSTANCE.h();
    }

    public final void a(xa xaVar) {
        Objects.requireNonNull(xaVar);
        this.adshieldMonitoringMessage_ = xaVar;
        this.bitField0_ |= 1;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = eb.a[dVar.ordinal()];
        if (i == 1) {
            return new gb();
        }
        if (i == 2) {
            return new fb();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0001\u0000\u0001\u0012\u0012\u0001\u0000\u0000\u0000\u0012ဉ\u0000", new Object[]{"bitField0_", "adshieldMonitoringMessage_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(gb.class);
    }
}
