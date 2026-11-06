package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class k11 extends vz0 implements uw1 {
    private static final k11 DEFAULT_INSTANCE;
    public static final int c = 14;
    private int bitField0_;
    private e11 gmaSdkExceptionMessage_;

    static {
        k11 k11Var = new k11();
        DEFAULT_INSTANCE = k11Var;
        vz0.a((Class<k11>) k11.class, k11Var);
    }

    public static j11 v() {
        return (j11) DEFAULT_INSTANCE.h();
    }

    public final void a(e11 e11Var) {
        Objects.requireNonNull(e11Var);
        this.gmaSdkExceptionMessage_ = e11Var;
        this.bitField0_ |= 1;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = h11.a[dVar.ordinal()];
        if (i == 1) {
            return new k11();
        }
        if (i == 2) {
            return new j11();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0001\u0000\u0001\u000e\u000e\u0001\u0000\u0000\u0000\u000eဉ\u0000", new Object[]{"bitField0_", "gmaSdkExceptionMessage_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(k11.class);
    }
}
