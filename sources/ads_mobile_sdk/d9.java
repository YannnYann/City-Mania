package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class d9 extends vz0 implements uw1 {
    private static final d9 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    private int bitField0_;
    private long createTimeMs_;
    private int status_;
    private String filename_ = "";
    private String checksum_ = "";

    static {
        d9 d9Var = new d9();
        DEFAULT_INSTANCE = d9Var;
        vz0.a((Class<d9>) d9.class, d9Var);
    }

    public static c9 z() {
        return (c9) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = a9.a[dVar.ordinal()];
        if (i == 1) {
            return new d9();
        }
        if (i == 2) {
            return new c9();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ለ\u0000\u0002ဂ\u0001\u0003ለ\u0002\u0004ဌ\u0003", new Object[]{"bitField0_", "filename_", "createTimeMs_", "checksum_", "status_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(d9.class);
    }

    public final void b(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 4;
        this.checksum_ = str;
    }

    public final void c(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 1;
        this.filename_ = str;
    }

    public final String x() {
        return this.filename_;
    }

    public final long w() {
        return this.createTimeMs_;
    }

    public final String v() {
        return this.checksum_;
    }

    public final b9 y() {
        b9 b9Var;
        int i = this.status_;
        if (i == 0) {
            b9Var = b9.UNSPECIFIED;
        } else if (i != 1) {
            b9Var = i != 2 ? null : b9.READ;
        } else {
            b9Var = b9.AVAILABLE;
        }
        return b9Var == null ? b9.UNRECOGNIZED : b9Var;
    }
}
