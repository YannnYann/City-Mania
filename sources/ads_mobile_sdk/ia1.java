package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import com.ironsource.C3522b4;
import com.vungle.ads.internal.protos.Sdk;

/* JADX INFO: loaded from: classes.dex */
public final class ia1 extends vz0 implements uw1 {
    private static final ia1 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 13;
    public static final int g = 4;
    public static final int h = 5;
    public static final int i = 6;
    public static final int j = 12;
    public static final int k = 15;
    public static final int l = 7;
    public static final int m = 8;
    public static final int n = 14;
    public static final int o = 9;
    public static final int p = 10;
    public static final int q = 11;
    private int bitField0_;
    private int bucketSize_;
    private int elementMaxLength_;
    private boolean excludeFalse_;
    private boolean excludeTrue_;
    private int maxLength_;
    private int maxSize_;
    private double multiplyingFactor_;
    private int round_;
    private int type_;
    private yh1.f<String> path_ = vz0.k();
    private String urlKey_ = "";
    private String arraySeparator_ = ",";
    private String keyValueSeparator_ = C3522b4.j.b;
    private String itemSeparator_ = C3522b4.j.c;
    private String captureGroup_ = "";

    static {
        ia1 ia1Var = new ia1();
        DEFAULT_INSTANCE = ia1Var;
        vz0.a((Class<ia1>) ia1.class, ia1Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i2 = ga1.a[dVar.ordinal()];
        if (i2 == 1) {
            return new ia1();
        }
        if (i2 == 2) {
            return new ha1();
        }
        if (i2 == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u000f\u0000\u0001\u0001\u000f\u000f\u0000\u0001\u0000\u0001Ț\u0002ለ\u0000\u0003ဌ\u0001\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဋ\u0005\u0007ဋ\b\bለ\t\tለ\u000b\nለ\f\u000bለ\r\fဋ\u0006\rဋ\u0002\u000eဋ\n\u000fက\u0007", new Object[]{"bitField0_", "path_", "urlKey_", "type_", "excludeTrue_", "excludeFalse_", "round_", "maxSize_", "arraySeparator_", "keyValueSeparator_", "itemSeparator_", "captureGroup_", "bucketSize_", "maxLength_", "elementMaxLength_", "multiplyingFactor_"});
        }
        if (i2 == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i2 != 5) {
            return null;
        }
        return vz0.b(ia1.class);
    }

    public final yh1.f G() {
        return this.path_;
    }

    public final String J() {
        return this.urlKey_;
    }

    public final lj3 I() {
        lj3 lj3Var;
        int i2 = this.type_;
        if (i2 == 0) {
            lj3Var = lj3.SIGNAL_TYPE_UNKNOWN;
        } else if (i2 == 1) {
            lj3Var = lj3.STRING;
        } else if (i2 != 2) {
            lj3Var = i2 != 3 ? null : lj3.NUMBER;
        } else {
            lj3Var = lj3.BOOLEAN;
        }
        return lj3Var == null ? lj3.UNRECOGNIZED : lj3Var;
    }

    public final boolean M() {
        return (this.bitField0_ & 4) != 0;
    }

    public final int D() {
        return this.maxLength_;
    }

    public final boolean A() {
        return this.excludeTrue_;
    }

    public final boolean z() {
        return this.excludeFalse_;
    }

    public final boolean P() {
        return (this.bitField0_ & 32) != 0;
    }

    public final int H() {
        return this.round_;
    }

    public final boolean K() {
        return (this.bitField0_ & 64) != 0;
    }

    public final int w() {
        return this.bucketSize_;
    }

    public final boolean O() {
        return (this.bitField0_ & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0;
    }

    public final double F() {
        return this.multiplyingFactor_;
    }

    public final boolean N() {
        return (this.bitField0_ & 256) != 0;
    }

    public final int E() {
        return this.maxSize_;
    }

    public final String v() {
        return this.arraySeparator_;
    }

    public final int y() {
        return this.elementMaxLength_;
    }

    public final String C() {
        return this.keyValueSeparator_;
    }

    public final String B() {
        return this.itemSeparator_;
    }

    public final boolean L() {
        return (this.bitField0_ & 8192) != 0;
    }

    public final String x() {
        return this.captureGroup_;
    }
}
