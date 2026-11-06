package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class w80 extends vz0 implements uw1 {
    private static final w80 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    private int bitField0_;
    private byte memoizedIsInitialized = 2;
    private du name_;
    private du value_;

    static {
        w80 w80Var = new w80();
        DEFAULT_INSTANCE = w80Var;
        vz0.a((Class<w80>) w80.class, w80Var);
    }

    public static v80 v() {
        return (v80) DEFAULT_INSTANCE.h();
    }

    public final void a(du duVar) {
        Objects.requireNonNull(duVar);
        this.bitField0_ |= 1;
        this.name_ = duVar;
    }

    public final void b(du duVar) {
        Objects.requireNonNull(duVar);
        this.bitField0_ |= 2;
        this.value_ = duVar;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        switch (r70.a[dVar.ordinal()]) {
            case 3:
                break;
            case 7:
                this.memoizedIsInitialized = (byte) (obj == null ? 0 : 1);
                break;
        }
        return null;
    }

    public w80() {
        du duVar = du.b;
        this.name_ = duVar;
        this.value_ = duVar;
    }
}
