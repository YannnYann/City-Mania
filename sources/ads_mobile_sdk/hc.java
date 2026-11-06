package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class hc extends vz0 implements uw1 {
    private static final hc DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    private int bitField0_;
    private yh1.f<String> includingRegexes_ = vz0.k();
    private yh1.f<String> excludingRegexes_ = vz0.k();
    private String effectiveAdUnitId_ = "";

    static {
        hc hcVar = new hc();
        DEFAULT_INSTANCE = hcVar;
        vz0.a((Class<hc>) hc.class, hcVar);
    }

    public static gc y() {
        return (gc) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = fc.a[dVar.ordinal()];
        if (i == 1) {
            return new hc();
        }
        if (i == 2) {
            return new gc();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0002\u0000\u0001Ț\u0002Ț\u0003ለ\u0000", new Object[]{"bitField0_", "includingRegexes_", "excludingRegexes_", "effectiveAdUnitId_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(hc.class);
    }

    public final void b(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 1;
        this.effectiveAdUnitId_ = str;
    }

    public final List x() {
        return this.includingRegexes_;
    }

    public final List w() {
        return this.excludingRegexes_;
    }

    public final String v() {
        return this.effectiveAdUnitId_;
    }
}
