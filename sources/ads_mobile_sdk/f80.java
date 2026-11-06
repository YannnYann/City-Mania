package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class f80 extends vz0 implements uw1 {
    private static final f80 DEFAULT_INSTANCE;
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
    public static final int o = 13;
    public static final int p = 14;
    public static final int q = 15;
    public static final int r = 16;
    public static final int s = 17;
    public static final int t = 18;
    public static final int u = 19;
    private long aesbLastUpdateTimeWindowsEpochMicros_;
    private int bitField0_;
    private boolean isAesbEnabled_;
    private boolean isHighRiskUser_;
    private boolean isHistorySyncEnabled_;
    private boolean isIncognito_;
    private boolean isMbbEnabled_;
    private boolean isSignedIn_;
    private boolean isUnderAdvancedProtection_;
    private int numberOfLoadedProfiles_;
    private int numberOfOpenProfiles_;
    private int numberOfProfiles_;
    private int polarbearPopulationMemoizedSerializedSize;
    private int profileManagementStatus_;
    private int serverExperimentGroupsMemoizedSerializedSize;
    private int userPopulation_;
    private static final yh1.d.a<wo2> polarbearPopulation_converter_ = new s70();
    private static final yh1.d.a<c80> serverExperimentGroups_converter_ = new t70();
    private String finchActiveGroup_ = "";
    private yh1.f<String> finchActiveGroups_ = vz0.k();
    private String userAgent_ = "";
    private yh1.f<y70> pageLoadTokens_ = vz0.k();
    private yh1.c polarbearPopulation_ = vz0.i();
    private yh1.c serverExperimentGroups_ = vz0.i();

    static {
        f80 f80Var = new f80();
        DEFAULT_INSTANCE = f80Var;
        vz0.a((Class<f80>) f80.class, f80Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i2 = r70.a[dVar.ordinal()];
        if (i2 == 1) {
            return new f80();
        }
        if (i2 == 2) {
            return new u70();
        }
        if (i2 == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0013\u0000\u0001\u0001\u0013\u0013\u0000\u0004\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004\u001a\u0005᠌\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006\tဈ\u0007\nင\b\u000bင\t\fင\n\rဇ\u000b\u000e\u001b\u000fဇ\f\u0010ဂ\r\u0011ࠬ\u0012ဇ\u000e\u0013ࠬ", new Object[]{"bitField0_", "userPopulation_", d80.a, "isHistorySyncEnabled_", "finchActiveGroup_", "finchActiveGroups_", "profileManagementStatus_", z70.a, "isUnderAdvancedProtection_", "isIncognito_", "isMbbEnabled_", "userAgent_", "numberOfProfiles_", "numberOfLoadedProfiles_", "numberOfOpenProfiles_", "isHighRiskUser_", "pageLoadTokens_", y70.class, "isAesbEnabled_", "aesbLastUpdateTimeWindowsEpochMicros_", "polarbearPopulation_", vo2.a, "isSignedIn_", "serverExperimentGroups_", b80.a});
        }
        if (i2 == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i2 != 5) {
            return null;
        }
        return vz0.b(f80.class);
    }
}
