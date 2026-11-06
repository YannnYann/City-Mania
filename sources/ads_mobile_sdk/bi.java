package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class bi extends vz0 implements uw1 {
    private static final bi DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    private int bitField0_;
    private yh1.f<du> encryptedBlobs_ = vz0.k();
    private du hash_ = du.b;
    private int protoName_ = 1;
    private int encryptionMethod_ = 1;

    static {
        bi biVar = new bi();
        DEFAULT_INSTANCE = biVar;
        vz0.a((Class<bi>) bi.class, biVar);
    }

    public static ai v() {
        return (ai) DEFAULT_INSTANCE.h();
    }

    public final void b(du duVar) {
        Objects.requireNonNull(duVar);
        this.bitField0_ |= 1;
        this.hash_ = duVar;
    }

    public final void a(du duVar) {
        Objects.requireNonNull(duVar);
        yh1.f<du> fVar = this.encryptedBlobs_;
        if (!fVar.b()) {
            this.encryptedBlobs_ = vz0.a(fVar);
        }
        this.encryptedBlobs_.add(duVar);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = wf.a[dVar.ordinal()];
        if (i == 1) {
            return new bi();
        }
        if (i == 2) {
            return new ai();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002ည\u0000\u0003᠌\u0001\u0004᠌\u0002", new Object[]{"bitField0_", "encryptedBlobs_", "hash_", "protoName_", uh.a, "encryptionMethod_", oh.a});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(bi.class);
    }
}
