package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class xt extends vz0 implements uw1 {
    private static final xt DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    private yh1.f<wt> thirdPartySdk_ = vz0.k();
    private yh1.f<nt> thirdPartyJavascript_ = vz0.k();

    static {
        xt xtVar = new xt();
        DEFAULT_INSTANCE = xtVar;
        vz0.a((Class<xt>) xt.class, xtVar);
    }

    public static gt w() {
        return (gt) DEFAULT_INSTANCE.h();
    }

    public final void a(wt wtVar) {
        Objects.requireNonNull(wtVar);
        yh1.f<wt> fVar = this.thirdPartySdk_;
        if (!fVar.b()) {
            this.thirdPartySdk_ = vz0.a(fVar);
        }
        this.thirdPartySdk_.add(wtVar);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = ft.a[dVar.ordinal()];
        if (i == 1) {
            return new xt();
        }
        if (i == 2) {
            return new gt();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0002\u0000\u0001\u001b\u0002\u001b", new Object[]{"thirdPartySdk_", wt.class, "thirdPartyJavascript_", nt.class});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(xt.class);
    }

    public final List v() {
        return this.thirdPartySdk_;
    }
}
