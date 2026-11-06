package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class xw extends vz0 implements uw1 {
    private static final xw DEFAULT_INSTANCE;
    public static final int c = 13;
    public static final int d = 1;
    public static final int e = 2;
    public static final int f = 3;
    public static final int g = 10;
    public static final int h = 7;
    public static final int i = 4;
    public static final int j = 5;
    public static final int k = 9;
    public static final int l = 15;
    private int bitField0_;
    private long configTimeUsec_;
    private bx deviceProperties_;
    private xq0 externalClientExperimentIds_;
    private zw versionInfo_;
    private int experimentIdMemoizedSerializedSize = -1;
    private int triggerExperimentIdMemoizedSerializedSize = -1;
    private du gzipCompressed_ = du.b;
    private yh1.c experimentId_ = vz0.i();
    private yh1.c triggerExperimentId_ = vz0.i();
    private yh1.f<String> serverToken_ = vz0.k();
    private String overrideZwiebackNid_ = "";
    private yh1.f<jw> downloadedBlob_ = vz0.k();

    static {
        xw xwVar = new xw();
        DEFAULT_INSTANCE = xwVar;
        vz0.a((Class<xw>) xw.class, xwVar);
    }

    public static xw a(byte[] bArr, er0 er0Var) {
        return (xw) vz0.a(DEFAULT_INSTANCE, bArr, er0Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i2 = fw.a[dVar.ordinal()];
        if (i2 == 1) {
            return new xw();
        }
        if (i2 == 2) {
            return new ww();
        }
        if (i2 == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\n\u0000\u0001\u0001\u000f\n\u0000\u0004\u0000\u0001'\u0002ဂ\u0001\u0003'\u0004\u001b\u0005ဉ\u0003\u0007ဈ\u0002\tဉ\u0004\n\u001a\rည\u0000\u000fဉ\u0005", new Object[]{"bitField0_", "experimentId_", "configTimeUsec_", "triggerExperimentId_", "downloadedBlob_", jw.class, "versionInfo_", "overrideZwiebackNid_", "deviceProperties_", "serverToken_", "gzipCompressed_", "externalClientExperimentIds_"});
        }
        if (i2 == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i2 != 5) {
            return null;
        }
        return vz0.b(xw.class);
    }
}
