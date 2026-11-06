package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import com.unity3d.ads.core.domain.WebViewScreenCapture;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class na extends vz0 implements uw1 {
    public static final int A = 26;
    public static final int B = 27;
    public static final int C = 28;
    public static final int D = 29;
    private static final na DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 22;
    public static final int e = 9;
    public static final int f = 23;
    public static final int g = 24;
    public static final int h = 3;
    public static final int i = 25;
    public static final int j = 4;
    public static final int k = 5;
    public static final int l = 6;
    public static final int m = 18;
    public static final int n = 7;
    public static final int o = 8;
    public static final int p = 10;
    public static final int q = 11;
    public static final int r = 12;
    public static final int s = 13;
    public static final int t = 14;
    public static final int u = 15;
    public static final int v = 16;
    public static final int w = 17;
    public static final int x = 19;
    public static final int y = 20;
    public static final int z = 21;
    private boolean allowFallbackToStaticProgram_;
    private int bitField0_;
    private boolean cancelQueuedSignalTaskOnTimeout_;
    private boolean enableAsyncInputEventProcessing_;
    private boolean enableLazyScheduler_;
    private boolean enableViewstringBinding_;
    private boolean forceInitializeWithStaticProgram_;
    private int hostType_;
    private wt1 loggingOptions_;
    private uv2 programUpdateOptions_;
    private int requestedAdshieldVersion_;
    private int fallbackAdshieldVersion_ = 1;
    private boolean allowFallback_ = true;
    private String hostVersion_ = "unknown_host";
    private boolean enableGassClient_ = true;
    private long appStartQuerySignalsTimeoutMs_ = 100;
    private long signalsTimeoutMs_ = WebViewScreenCapture.CACHE_TTL_MS;
    private long gassSignalTimeoutMs_ = 10;
    private long localIntSignalTimeoutMs_ = 100;
    private long httpRequestTimeoutMs_ = 20000;
    private String prodInstallerCert_ = "";
    private String debugInstallerCert_ = "";
    private long methodTimeoutMs_ = 500;
    private long appStartWindowMs_ = 3000;
    private boolean enableMinimalAppStartQuerySignals_ = true;
    private boolean clearDgArgsAfterUse_ = true;
    private boolean enableDgProgramCache_ = true;
    private boolean enableMinimalCerSignal_ = true;
    private boolean skipProgramUpdateWithStaticProgram_ = true;

    static {
        na naVar = new na();
        DEFAULT_INSTANCE = naVar;
        vz0.a((Class<na>) na.class, naVar);
    }

    public static la W() {
        return (la) DEFAULT_INSTANCE.h();
    }

    public final void a(wt1 wt1Var) {
        Objects.requireNonNull(wt1Var);
        this.loggingOptions_ = wt1Var;
        this.bitField0_ |= 256;
    }

    public final void b(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 131072;
        this.debugInstallerCert_ = str;
    }

    public final void c(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 32;
        this.hostVersion_ = str;
    }

    public final void d(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 65536;
        this.prodInstallerCert_ = str;
    }

    public final void a(uv2 uv2Var) {
        Objects.requireNonNull(uv2Var);
        this.programUpdateOptions_ = uv2Var;
        this.bitField0_ |= 4096;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i2 = ka.a[dVar.ordinal()];
        if (i2 == 1) {
            return new na();
        }
        if (i2 == 2) {
            return new la();
        }
        if (i2 == 3) {
            jb jbVar = jb.a;
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u001c\u0000\u0001\u0001\u001d\u001c\u0000\u0000\u0000\u0001᠌\u0000\u0003ဈ\u0005\u0004ဇ\u0007\u0005ဉ\b\u0006ဇ\t\u0007ဂ\u000b\bဉ\f\tဇ\u0002\nဂ\r\u000bဂ\u000e\fဂ\u000f\rဈ\u0010\u000eဈ\u0011\u000fဂ\u0012\u0010ဂ\u0013\u0011ဇ\u0014\u0012ဂ\n\u0013ဇ\u0015\u0014ဇ\u0016\u0015ဇ\u0017\u0016᠌\u0001\u0017ဇ\u0003\u0018ဇ\u0004\u0019ဌ\u0006\u001aဇ\u0018\u001bဇ\u0019\u001cဇ\u001a\u001dဇ\u001b", new Object[]{"bitField0_", "requestedAdshieldVersion_", jbVar, "hostVersion_", "enableGassClient_", "loggingOptions_", "enableViewstringBinding_", "signalsTimeoutMs_", "programUpdateOptions_", "allowFallback_", "gassSignalTimeoutMs_", "localIntSignalTimeoutMs_", "httpRequestTimeoutMs_", "prodInstallerCert_", "debugInstallerCert_", "methodTimeoutMs_", "appStartWindowMs_", "enableMinimalAppStartQuerySignals_", "appStartQuerySignalsTimeoutMs_", "clearDgArgsAfterUse_", "enableDgProgramCache_", "enableLazyScheduler_", "fallbackAdshieldVersion_", jbVar, "allowFallbackToStaticProgram_", "forceInitializeWithStaticProgram_", "hostType_", "enableMinimalCerSignal_", "skipProgramUpdateWithStaticProgram_", "enableAsyncInputEventProcessing_", "cancelQueuedSignalTaskOnTimeout_"});
        }
        if (i2 == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i2 != 5) {
            return null;
        }
        return vz0.b(na.class);
    }

    public final kb T() {
        kb kbVarA = kb.a(this.requestedAdshieldVersion_);
        return kbVarA == null ? kb.ADSHIELD_VERSION_UNSPECIFIED : kbVarA;
    }

    public final kb I() {
        kb kbVarA = kb.a(this.fallbackAdshieldVersion_);
        return kbVarA == null ? kb.ADSHIELD_VERSION_1 : kbVarA;
    }

    public final boolean v() {
        return this.allowFallback_;
    }

    public final boolean w() {
        return this.allowFallbackToStaticProgram_;
    }

    public final boolean J() {
        return this.forceInitializeWithStaticProgram_;
    }

    public final String M() {
        return this.hostVersion_;
    }

    public final ma L() {
        ma maVar;
        switch (this.hostType_) {
            case 0:
                maVar = ma.UNKNOWN_HOST_TYPE;
                break;
            case 1:
                maVar = ma.GMA;
                break;
            case 2:
                maVar = ma.YOUTUBE;
                break;
            case 3:
                maVar = ma.GPAY;
                break;
            case 4:
                maVar = ma.IMA;
                break;
            case 5:
                maVar = ma.PAL;
                break;
            case 6:
                maVar = ma.MAPS;
                break;
            default:
                maVar = null;
                break;
        }
        return maVar == null ? ma.UNRECOGNIZED : maVar;
    }

    public final boolean D() {
        return this.enableGassClient_;
    }

    public final wt1 P() {
        wt1 wt1Var = this.loggingOptions_;
        return wt1Var == null ? wt1.v() : wt1Var;
    }

    public final boolean H() {
        return this.enableViewstringBinding_;
    }

    public final long x() {
        return this.appStartQuerySignalsTimeoutMs_;
    }

    public final long U() {
        return this.signalsTimeoutMs_;
    }

    public final uv2 S() {
        uv2 uv2Var = this.programUpdateOptions_;
        return uv2Var == null ? uv2.w() : uv2Var;
    }

    public final long K() {
        return this.gassSignalTimeoutMs_;
    }

    public final long O() {
        return this.localIntSignalTimeoutMs_;
    }

    public final long N() {
        return this.httpRequestTimeoutMs_;
    }

    public final String R() {
        return this.prodInstallerCert_;
    }

    public final String B() {
        return this.debugInstallerCert_;
    }

    public final long Q() {
        return this.methodTimeoutMs_;
    }

    public final long y() {
        return this.appStartWindowMs_;
    }

    public final boolean F() {
        return this.enableMinimalAppStartQuerySignals_;
    }

    public final boolean A() {
        return this.clearDgArgsAfterUse_;
    }

    public final boolean E() {
        return this.enableLazyScheduler_;
    }

    public final boolean G() {
        return this.enableMinimalCerSignal_;
    }

    public final boolean V() {
        return this.skipProgramUpdateWithStaticProgram_;
    }

    public final boolean C() {
        return this.enableAsyncInputEventProcessing_;
    }

    public final boolean z() {
        return this.cancelQueuedSignalTaskOnTimeout_;
    }
}
