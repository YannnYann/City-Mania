package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class db0 extends vz0 implements uw1 {
    private static final db0 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 9;
    public static final int e = 2;
    public static final int f = 3;
    public static final int g = 4;
    public static final int h = 5;
    public static final int i = 6;
    public static final int j = 7;
    public static final int k = 8;
    public static final int l = 10;
    public static final int m = 11;
    public static final int n = 12;
    public static final int o = 13;
    public static final int p = 14;
    private int bitField0_;
    private boolean isRetargeting_;
    private boolean isSubframeReferrerUrlRemoved_;
    private boolean isSubframeUrlRemoved_;
    private boolean isUrlRemovedByPolicy_;
    private boolean maybeLaunchedByExternalApplication_;
    private int navigationInitiation_;
    private double navigationTimeMsec_;
    private String url_ = "";
    private String mainFrameUrl_ = "";
    private int type_ = 4;
    private yh1.f<String> ipAddresses_ = vz0.k();
    private String referrerUrl_ = "";
    private String referrerMainFrameUrl_ = "";
    private yh1.f<ab0> serverRedirectChain_ = vz0.k();

    static {
        db0 db0Var = new db0();
        DEFAULT_INSTANCE = db0Var;
        vz0.a((Class<db0>) db0.class, db0Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i2 = r70.a[dVar.ordinal()];
        if (i2 == 1) {
            return new db0();
        }
        if (i2 == 2) {
            return new wa0();
        }
        if (i2 == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u000e\u0000\u0001\u0001\u000e\u000e\u0000\u0002\u0000\u0001ဈ\u0000\u0002᠌\u0002\u0003\u001a\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဇ\u0005\u0007က\u0006\b\u001b\tဈ\u0001\n᠌\u0007\u000bဇ\b\fဇ\t\rဇ\n\u000eဇ\u000b", new Object[]{"bitField0_", "url_", "type_", bb0.a, "ipAddresses_", "referrerUrl_", "referrerMainFrameUrl_", "isRetargeting_", "navigationTimeMsec_", "serverRedirectChain_", ab0.class, "mainFrameUrl_", "navigationInitiation_", xa0.a, "maybeLaunchedByExternalApplication_", "isSubframeUrlRemoved_", "isSubframeReferrerUrlRemoved_", "isUrlRemovedByPolicy_"});
        }
        if (i2 == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i2 != 5) {
            return null;
        }
        return vz0.b(db0.class);
    }
}
