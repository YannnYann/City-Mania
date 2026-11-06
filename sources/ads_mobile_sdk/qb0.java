package ads_mobile_sdk;

import ads_mobile_sdk.u24;
import ads_mobile_sdk.vz0;
import java.io.InputStream;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class qb0 extends vz0 implements uw1 {
    private static final qb0 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    private int bitField0_;
    private ju1<String, String> concatenatedSignalsMap_ = ju1.b();
    private hj2 patternMatchingFlag_;
    private yp2 preProcessingFlag_;

    static {
        qb0 qb0Var = new qb0();
        DEFAULT_INSTANCE = qb0Var;
        vz0.a((Class<qb0>) qb0.class, qb0Var);
    }

    public static qb0 w() {
        return DEFAULT_INSTANCE;
    }

    public static pb0 z() {
        return (pb0) DEFAULT_INSTANCE.h();
    }

    public final void a(hj2 hj2Var) {
        Objects.requireNonNull(hj2Var);
        this.patternMatchingFlag_ = hj2Var;
        this.bitField0_ |= 1;
    }

    public final Map v() {
        return Collections.unmodifiableMap(this.concatenatedSignalsMap_);
    }

    public final void a(yp2 yp2Var) {
        Objects.requireNonNull(yp2Var);
        this.preProcessingFlag_ = yp2Var;
        this.bitField0_ |= 2;
    }

    public static qb0 a(InputStream inputStream) {
        return (qb0) vz0.a(DEFAULT_INSTANCE, inputStream);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = ob0.a[dVar.ordinal()];
        if (i == 1) {
            return new qb0();
        }
        if (i == 2) {
            return new pb0();
        }
        if (i == 3) {
            u24.a aVar = u24.a.k;
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0001\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u00032", new Object[]{"bitField0_", "patternMatchingFlag_", "preProcessingFlag_", "concatenatedSignalsMap_", gu1.a(aVar, "", aVar, "")});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(qb0.class);
    }

    public final hj2 x() {
        hj2 hj2Var = this.patternMatchingFlag_;
        return hj2Var == null ? hj2.v() : hj2Var;
    }

    public final yp2 y() {
        yp2 yp2Var = this.preProcessingFlag_;
        return yp2Var == null ? yp2.v() : yp2Var;
    }
}
