package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class k80 extends vz0 implements uw1 {
    private static final k80 DEFAULT_INSTANCE;
    public static final int c = 1;
    private int bitField0_;
    private String clickString_ = "";

    static {
        k80 k80Var = new k80();
        DEFAULT_INSTANCE = k80Var;
        vz0.a((Class<k80>) k80.class, k80Var);
    }

    public static j80 v() {
        return (j80) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = r70.a[dVar.ordinal()];
        if (i == 1) {
            return new k80();
        }
        if (i == 2) {
            return new j80();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"bitField0_", "clickString_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(k80.class);
    }

    public final void b(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 1;
        this.clickString_ = str;
    }
}
