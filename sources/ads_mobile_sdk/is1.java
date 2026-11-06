package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class is1 extends vz0 implements uw1 {
    private static final is1 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    private int bitField0_;
    private du hmacKey_;
    private int hmacSignatureLength_;
    private byte memoizedIsInitialized = 2;
    private du symmetricKey_;
    private int type_;

    static {
        is1 is1Var = new is1();
        DEFAULT_INSTANCE = is1Var;
        vz0.a((Class<is1>) is1.class, is1Var);
    }

    public static hs1 v() {
        return (hs1) DEFAULT_INSTANCE.h();
    }

    public is1() {
        du duVar = du.b;
        this.symmetricKey_ = duVar;
        this.hmacKey_ = duVar;
    }

    public final void b(du duVar) {
        Objects.requireNonNull(duVar);
        this.bitField0_ |= 2;
        this.symmetricKey_ = duVar;
    }

    public final void a(du duVar) {
        Objects.requireNonNull(duVar);
        this.bitField0_ |= 4;
        this.hmacKey_ = duVar;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        switch (es1.a[dVar.ordinal()]) {
            case 3:
                break;
            case 7:
                this.memoizedIsInitialized = (byte) (obj == null ? 0 : 1);
                break;
        }
        return null;
    }
}
