package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class wt extends vz0 implements uw1 {
    private static final wt DEFAULT_INSTANCE;
    public static final int c = 5;
    public static final int d = 4;
    private static final yh1.d.a<qt> dEPRECATEDAdapterBehavior_converter_ = new ot();
    public static final int e = 2;
    public static final int f = 3;
    public static final int g = 6;
    public static final int h = 7;
    public static final int i = 8;
    public static final int j = 9;
    public static final int k = 10;
    private int adapterBehaviorBitmap_;
    private vt adapterVersion_;
    private int bitField0_;
    private int dEPRECATEDAdapterBehaviorMemoizedSerializedSize;
    private tt error_;
    private boolean isPublisherCreated_;
    private long latencyMs_;
    private vt sdkVersion_;
    private String adapterClassName_ = "";
    private String buyerGeneratedRequestData_ = "";
    private yh1.c dEPRECATEDAdapterBehavior_ = vz0.i();

    static {
        wt wtVar = new wt();
        DEFAULT_INSTANCE = wtVar;
        vz0.a((Class<wt>) wt.class, wtVar);
    }

    public static rt v() {
        return (rt) DEFAULT_INSTANCE.h();
    }

    public final void a(vt vtVar) {
        Objects.requireNonNull(vtVar);
        this.adapterVersion_ = vtVar;
        this.bitField0_ |= 8;
    }

    public final void b(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 1;
        this.adapterClassName_ = str;
    }

    public final void c(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 2;
        this.buyerGeneratedRequestData_ = str;
    }

    public final void a(tt ttVar) {
        Objects.requireNonNull(ttVar);
        this.error_ = ttVar;
        this.bitField0_ |= 32;
    }

    public final void b(vt vtVar) {
        Objects.requireNonNull(vtVar);
        this.sdkVersion_ = vtVar;
        this.bitField0_ |= 4;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i2 = ft.a[dVar.ordinal()];
        if (i2 == 1) {
            return new wt();
        }
        if (i2 == 2) {
            return new rt();
        }
        if (i2 == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\t\u0000\u0001\u0002\n\t\u0000\u0001\u0000\u0002ဉ\u0002\u0003ဉ\u0003\u0004ဈ\u0001\u0005ဈ\u0000\u0006ဇ\u0004\u0007ဉ\u0005\bဂ\u0006\tࠬ\nဋ\u0007", new Object[]{"bitField0_", "sdkVersion_", "adapterVersion_", "buyerGeneratedRequestData_", "adapterClassName_", "isPublisherCreated_", "error_", "latencyMs_", "dEPRECATEDAdapterBehavior_", pt.a, "adapterBehaviorBitmap_"});
        }
        if (i2 == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i2 != 5) {
            return null;
        }
        return vz0.b(wt.class);
    }
}
