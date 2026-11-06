package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class nt extends vz0 implements uw1 {
    private static final nt DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 7;
    public static final int g = 8;
    public static final int h = 4;
    public static final int i = 5;
    public static final int j = 6;
    public static final int k = 9;
    public static final int l = 11;
    public static final int m = 10;
    private int backoffStep_;
    private int bitField0_;
    private long cacheTimestamp_;
    private mt error_;
    private float executionCredit_;
    private int failedExecutions_;
    private boolean isFromPrebid_;
    private boolean isPublisherCreated_;
    private long lastExecutionTimestamp_;
    private int skippedExecutions_;
    private String javascriptLibraryName_ = "";
    private String buyerGeneratedRequestData_ = "";

    static {
        nt ntVar = new nt();
        DEFAULT_INSTANCE = ntVar;
        vz0.a((Class<nt>) nt.class, ntVar);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i2 = ft.a[dVar.ordinal()];
        if (i2 == 1) {
            return new nt();
        }
        if (i2 == 2) {
            return new kt();
        }
        if (i2 == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004င\u0005\u0005င\u0006\u0006င\u0007\u0007ဂ\u0003\bခ\u0004\tဇ\b\nဉ\n\u000bဇ\t", new Object[]{"bitField0_", "javascriptLibraryName_", "buyerGeneratedRequestData_", "cacheTimestamp_", "failedExecutions_", "skippedExecutions_", "backoffStep_", "lastExecutionTimestamp_", "executionCredit_", "isPublisherCreated_", "error_", "isFromPrebid_"});
        }
        if (i2 == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i2 != 5) {
            return null;
        }
        return vz0.b(nt.class);
    }
}
