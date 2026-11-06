package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class jw extends vz0 implements uw1 {
    private static final jw DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    public static final int g = 5;
    public static final int h = 6;
    public static final int i = 7;
    public static final int j = 8;
    public static final int k = 9;
    public static final int l = 10;
    public static final int m = 11;
    public static final int n = 12;
    private int bitField0_;
    private int compression_;
    private int downloadPriority_;
    private iw fallbackInstruction_;
    private boolean meteredAllowed_;
    private pw postProcess_;
    private boolean roamingAllowed_;
    private int type_;
    private String name_ = "";
    private String id_ = "";
    private int state_ = 1;
    private String downloadPath_ = "";
    private String fallbackDownloadPath_ = "";

    static {
        jw jwVar = new jw();
        DEFAULT_INSTANCE = jwVar;
        vz0.a((Class<jw>) jw.class, jwVar);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i2 = fw.a[dVar.ordinal()];
        if (i2 == 1) {
            return new jw();
        }
        if (i2 == 2) {
            return new gw();
        }
        if (i2 == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\f\u0000\u0001\u0001\f\f\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003᠌\u0002\u0004᠌\u0003\u0005ဇ\u0004\u0006ဈ\u0005\u0007ဇ\u0006\bင\u0007\t᠌\b\nဉ\t\u000bဈ\n\fဉ\u000b", new Object[]{"bitField0_", "name_", "id_", "type_", uw.a, "state_", sw.a, "meteredAllowed_", "downloadPath_", "roamingAllowed_", "downloadPriority_", "compression_", kw.a, "postProcess_", "fallbackDownloadPath_", "fallbackInstruction_"});
        }
        if (i2 == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i2 != 5) {
            return null;
        }
        return vz0.b(jw.class);
    }
}
