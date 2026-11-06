package ads_mobile_sdk;

import ads_mobile_sdk.u24;
import ads_mobile_sdk.vz0;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class ts extends vz0 implements uw1 {
    private static final ts DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    public static final int g = 5;
    private int bitField0_;
    private boolean shouldCollectSignalsOnFullApp_;
    private boolean shouldGatherSignals_;
    private ju1<String, String> serverParameters_ = ju1.b();
    private String adapterClassName_ = "";
    private String platform_ = "";

    static {
        ts tsVar = new ts();
        DEFAULT_INSTANCE = tsVar;
        vz0.a((Class<ts>) ts.class, tsVar);
    }

    public static ts v() {
        return DEFAULT_INSTANCE;
    }

    public static ss y() {
        return (ss) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = rs.a[dVar.ordinal()];
        if (i == 1) {
            return new ts();
        }
        if (i == 2) {
            return new ss();
        }
        if (i == 3) {
            u24.a aVar = u24.a.k;
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0001\u0000\u0000\u0001ለ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004ለ\u0003\u00052", new Object[]{"bitField0_", "adapterClassName_", "shouldGatherSignals_", "shouldCollectSignalsOnFullApp_", "platform_", "serverParameters_", gu1.a(aVar, "", aVar, "")});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(ts.class);
    }

    public final void b(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 1;
        this.adapterClassName_ = str;
    }

    public final void c(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 8;
        this.platform_ = str;
    }

    public final Map w() {
        return Collections.unmodifiableMap(this.serverParameters_);
    }

    public final boolean x() {
        return this.shouldCollectSignalsOnFullApp_;
    }
}
