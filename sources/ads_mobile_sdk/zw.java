package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class zw extends vz0 implements uw1 {
    private static final zw DEFAULT_INSTANCE;
    public static final int c = 5;
    public static final int d = 1;
    public static final int e = 2;
    public static final int f = 3;
    public static final int g = 8;
    public static final int h = 4;
    public static final int i = 10;
    public static final int j = 9;
    private int bitField0_;
    private px3 compatInfo_;
    private String appName_ = "";
    private String version_ = "";
    private yh1.f<jw> blob_ = vz0.k();
    private yh1.f<rw> blobSet_ = vz0.k();
    private yh1.f<hx> pluginSets_ = vz0.k();
    private int velourSdkInt_ = -1;
    private String debugOnlyVersion_ = "";

    static {
        zw zwVar = new zw();
        DEFAULT_INSTANCE = zwVar;
        vz0.a((Class<zw>) zw.class, zwVar);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i2 = fw.a[dVar.ordinal()];
        if (i2 == 1) {
            return new zw();
        }
        if (i2 == 2) {
            return new yw();
        }
        if (i2 == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\b\u0000\u0001\u0001\n\b\u0000\u0003\u0000\u0001ဈ\u0001\u0002\u001b\u0003\u001b\u0004င\u0002\u0005ဈ\u0000\b\u001b\tဈ\u0004\nဉ\u0003", new Object[]{"bitField0_", "version_", "blob_", jw.class, "blobSet_", rw.class, "velourSdkInt_", "appName_", "pluginSets_", hx.class, "debugOnlyVersion_", "compatInfo_"});
        }
        if (i2 == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i2 != 5) {
            return null;
        }
        return vz0.b(zw.class);
    }
}
