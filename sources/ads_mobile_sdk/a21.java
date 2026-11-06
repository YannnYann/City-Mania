package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.protobuf.EventTypeExtended;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class a21 extends vz0 implements uw1 {
    public static final int A = 23;
    public static final int A0 = 63;
    public static final int B = 77;
    public static final int B0 = 65;
    public static final int C = 78;
    public static final int C0 = 69;
    public static final int D = 91;
    public static final int D0 = 71;
    private static final a21 DEFAULT_INSTANCE;
    public static final int E = 93;
    public static final int E0 = 79;
    public static final int F = 24;
    public static final int F0 = 80;
    public static final int G = 25;
    public static final int G0 = 73;
    public static final int H = 9;
    public static final int H0 = 74;
    public static final int I = 53;
    public static final int I0 = 81;
    public static final int J = 10;
    public static final int J0 = 82;
    public static final int K = 72;
    public static final int K0 = 83;
    public static final int L = 11;
    public static final int L0 = 84;
    public static final int M = 66;
    public static final int M0 = 85;
    public static final int N = 67;
    public static final int N0 = 86;
    public static final int O = 68;
    public static final int O0 = 88;
    public static final int P = 12;
    public static final int P0 = 89;
    public static final int Q = 13;
    public static final int Q0 = 90;
    public static final int R = 14;
    public static final int R0 = 92;
    public static final int S = 26;
    public static final int T = 27;
    public static final int U = 46;
    public static final int V = 45;
    public static final int W = 43;
    public static final int X = 87;
    public static final int Y = 94;
    public static final int Z = 48;
    public static final int a0 = 44;
    public static final int b0 = 49;
    public static final int c = 1;
    public static final int c0 = 50;
    public static final int d = 40;
    public static final int d0 = 28;
    public static final int e = 30;
    public static final int e0 = 60;
    public static final int f = 31;
    public static final int f0 = 15;
    public static final int g = 32;
    public static final int g0 = 16;
    public static final int h = 33;
    public static final int h0 = 17;
    public static final int i = 37;
    public static final int i0 = 18;
    public static final int j = 2;
    public static final int j0 = 19;
    public static final int k = 3;
    public static final int k0 = 20;
    public static final int l = 34;
    public static final int l0 = 29;
    public static final int m = 75;
    public static final int m0 = 55;
    public static final int n = 76;
    public static final int n0 = 56;
    public static final int o = 35;
    public static final int o0 = 38;
    public static final int p = 36;
    public static final int p0 = 39;
    public static final int q = 4;
    public static final int q0 = 57;
    public static final int r = 5;
    public static final int r0 = 47;
    public static final int s = 21;
    public static final int s0 = 41;
    public static final int t = 70;
    public static final int t0 = 42;
    private static final yh1.d.a<z11> tag_converter_ = new n11();
    public static final int u = 22;
    public static final int u0 = 52;
    public static final int v = 64;
    public static final int v0 = 54;
    public static final int w = 6;
    public static final int w0 = 58;
    public static final int x = 51;
    public static final int x0 = 59;
    public static final int y = 7;
    public static final int y0 = 61;
    public static final int z = 8;
    public static final int z0 = 62;
    private int adConfigurationIndex_;
    private ie adapterInitializationDetails_;
    private int bitField0_;
    private int cachedSignalState_;
    private hv centralizedManagerPreloadData_;
    private long childCpuTimeMillis_;
    private lv chromeVariations_;
    private int contentProviderType_;
    private long cpuTimeMillis_;
    private int customTabsNavigationEvent_;
    private int deviceAdvertisedMemTier_;
    private long deviceAdvertisedMemorySize_;
    private int deviceAvailableMemoryTier_;
    private int deviceAvailableProcessorTier_;
    private int format_;
    private long gmsCoreVersion_;
    private int gmsgName_;
    private k51 h5Data_;
    private boolean hadCachedFlags_;
    private u61 hsdpServiceData_;
    private kh1 installReferrerDetails_;
    private boolean isAsyncAdResponse_;
    private boolean isFirstSessionAfterInstall_;
    private boolean isHtmlResponse_;
    private cs1 jsEngineData_;
    private long latencyMillis_;
    private int liveWebviewCount_;
    private int mediationChainLength_;
    private qx1 mraidData_;
    private int name_;
    private int networkTypeCoarse_;
    private int networkType_;
    private vb2 offlineData_;
    private int orientation_;
    private int os_;
    private long parentTraceId_;
    private kk2 persistentCacheEventData_;
    private nm2 persistentCacheRequestData_;
    private ep2 postClickLifecycleMonitoringData_;
    private ar2 preloadData_;
    private wt2 preloadValidatorData_;
    private int previousAppExitReason_;
    private int previousAppExitSignal_;
    private int processState_;
    private long samplingDenominator_;
    private ea3 scarCacheEvictionData_;
    private int scarRequestType_;
    private int sequenceNumber_;
    private af3 signalCacheData_;
    private gf3 signalData_;
    private int signalId_;
    private boolean skipUninitializedAdapters_;
    private long startTimeMillis_;
    private boolean success_;
    private on3 swipeableInterstitialSettleData_;
    private int tagMemoizedSerializedSize;
    private int targetVersion_;
    private long timeSinceSdkInitCompleteMillis_;
    private long timeSinceSdkInitStartMillis_;
    private long traceDepth_;
    private long traceId_;
    private hz3 webviewData_;
    private boolean wereCachedFlagsReset_;
    private int experimentIdMemoizedSerializedSize = -1;
    private String rootTraceId_ = "";
    private yh1.c tag_ = vz0.i();
    private String sdkVersion_ = "";
    private String canonicalSdkVersion_ = "";
    private String webViewVersion_ = "";
    private String appName_ = "";
    private String appVersionName_ = "";
    private String appId_ = "";
    private String adUnitId_ = "";
    private String osVersion_ = "";
    private String deviceModel_ = "";
    private String country_ = "";
    private yh1.e experimentId_ = vz0.j();
    private String backendQueryId_ = "";
    private String gwsQueryId_ = "";
    private String sessionId_ = "";
    private String requestId_ = "";
    private String signalGenerationRequestId_ = "";
    private String internalRequestId_ = "";
    private String renderId_ = "";
    private String renderer_ = "";
    private String adId_ = "";
    private String preloadId_ = "";
    private String mediationAdapter_ = "";
    private String mediationAdapterVersion_ = "";
    private String plugin_ = "";
    private String topException_ = "";
    private String stackTraceHash_ = "";
    private String cause_ = "";
    private String cronetProvider_ = "";
    private String rawChromeVariations_ = "";
    private String requestAgent_ = "";
    private String unityEditorVersion_ = "";

    static {
        a21 a21Var = new a21();
        DEFAULT_INSTANCE = a21Var;
        vz0.a((Class<a21>) a21.class, a21Var);
    }

    public final void A(String str) {
        this.sessionId_ = str;
    }

    public final void B(String str) {
        Objects.requireNonNull(str);
        this.signalGenerationRequestId_ = str;
    }

    public final void C(String str) {
        this.stackTraceHash_ = str;
    }

    public final void D(String str) {
        Objects.requireNonNull(str);
        this.topException_ = str;
    }

    public final void E(String str) {
        this.unityEditorVersion_ = str;
    }

    public final void F(String str) {
        this.webViewVersion_ = str;
    }

    public final void a(ie ieVar) {
        this.adapterInitializationDetails_ = ieVar;
        this.bitField0_ |= 4096;
    }

    public final void b(String str) {
        Objects.requireNonNull(str);
        this.adId_ = str;
    }

    public final void c(String str) {
        Objects.requireNonNull(str);
        this.adUnitId_ = str;
    }

    public final void d(String str) {
        this.appId_ = str;
    }

    public final void e(String str) {
        Objects.requireNonNull(str);
        this.appName_ = str;
    }

    public final void f(String str) {
        this.appVersionName_ = str;
    }

    public final void g(String str) {
        Objects.requireNonNull(str);
        this.backendQueryId_ = str;
    }

    public final void h(String str) {
        Objects.requireNonNull(str);
        this.canonicalSdkVersion_ = str;
    }

    public final void i(String str) {
        Objects.requireNonNull(str);
        this.cause_ = str;
    }

    public final void j(String str) {
        Objects.requireNonNull(str);
        this.country_ = str;
    }

    public final void k(String str) {
        this.cronetProvider_ = str;
    }

    public final void l(String str) {
        Objects.requireNonNull(str);
        this.deviceModel_ = str;
    }

    public final void m(String str) {
        Objects.requireNonNull(str);
        this.gwsQueryId_ = str;
    }

    public final void n(String str) {
        Objects.requireNonNull(str);
        this.internalRequestId_ = str;
    }

    public final void o(String str) {
        Objects.requireNonNull(str);
        this.mediationAdapter_ = str;
    }

    public final void p(String str) {
        Objects.requireNonNull(str);
        this.mediationAdapterVersion_ = str;
    }

    public final void q(String str) {
        Objects.requireNonNull(str);
        this.osVersion_ = str;
    }

    public final void r(String str) {
        this.plugin_ = str;
    }

    public final void s(String str) {
        Objects.requireNonNull(str);
        this.preloadId_ = str;
    }

    public final void t(String str) {
        this.rawChromeVariations_ = str;
    }

    public final void u(String str) {
        Objects.requireNonNull(str);
        this.renderId_ = str;
    }

    public final void v(String str) {
        Objects.requireNonNull(str);
        this.renderer_ = str;
    }

    public final void w(String str) {
        Objects.requireNonNull(str);
        this.requestAgent_ = str;
    }

    public final void x(String str) {
        Objects.requireNonNull(str);
        this.requestId_ = str;
    }

    public final void y(String str) {
        Objects.requireNonNull(str);
        this.rootTraceId_ = str;
    }

    public final void z(String str) {
        Objects.requireNonNull(str);
        this.sdkVersion_ = str;
    }

    public static p11 v() {
        return (p11) DEFAULT_INSTANCE.h();
    }

    public final void a(hv hvVar) {
        this.centralizedManagerPreloadData_ = hvVar;
        this.bitField0_ |= 8192;
    }

    public final void a(lv lvVar) {
        this.chromeVariations_ = lvVar;
        this.bitField0_ |= 256;
    }

    public final void a(k51 k51Var) {
        this.h5Data_ = k51Var;
        this.bitField0_ |= 4;
    }

    public final void a(u61 u61Var) {
        this.hsdpServiceData_ = u61Var;
        this.bitField0_ |= 131072;
    }

    public final void a(kh1 kh1Var) {
        this.installReferrerDetails_ = kh1Var;
        this.bitField0_ |= com.ironsource.mediationsdk.metadata.a.o;
    }

    public final void a(cs1 cs1Var) {
        this.jsEngineData_ = cs1Var;
        this.bitField0_ |= 16;
    }

    public final void a(qx1 qx1Var) {
        this.mraidData_ = qx1Var;
        this.bitField0_ |= 8;
    }

    public final void a(vb2 vb2Var) {
        Objects.requireNonNull(vb2Var);
        this.offlineData_ = vb2Var;
        this.bitField0_ |= Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE;
    }

    public final void a(kk2 kk2Var) {
        this.persistentCacheEventData_ = kk2Var;
        this.bitField0_ |= 65536;
    }

    public final void a(nm2 nm2Var) {
        this.persistentCacheRequestData_ = nm2Var;
        this.bitField0_ |= 32768;
    }

    public final void a(ep2 ep2Var) {
        this.postClickLifecycleMonitoringData_ = ep2Var;
        this.bitField0_ |= 1024;
    }

    public final void a(ar2 ar2Var) {
        this.preloadData_ = ar2Var;
        this.bitField0_ |= 64;
    }

    public final void a(wt2 wt2Var) {
        this.preloadValidatorData_ = wt2Var;
        this.bitField0_ |= 262144;
    }

    public final void a(ea3 ea3Var) {
        this.scarCacheEvictionData_ = ea3Var;
        this.bitField0_ |= 2;
    }

    public final void a(gf3 gf3Var) {
        this.signalData_ = gf3Var;
        this.bitField0_ |= 1;
    }

    public final void a(on3 on3Var) {
        this.swipeableInterstitialSettleData_ = on3Var;
        this.bitField0_ |= 16384;
    }

    public final void a(hz3 hz3Var) {
        this.webviewData_ = hz3Var;
        this.bitField0_ |= EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i2 = o11.a[dVar.ordinal()];
        if (i2 == 1) {
            return new a21();
        }
        if (i2 == 2) {
            return new p11();
        }
        if (i2 == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004^\u0000\u0001\u0001^^\u0000\u0002\u0000\u0001\f\u0002\u0007\u0003\u0002\u0004\f\u0005Ȉ\u0006Ȉ\u0007Ȉ\b\u0004\t\f\n\u0004\u000b\u0002\f\f\rȈ\u000eȈ\u000fȈ\u0010Ȉ\u0011Ȉ\u0012Ȉ\u0013Ȉ\u0014Ȉ\u0015Ȉ\u0016Ȉ\u0017Ȉ\u0018Ȉ\u0019%\u001aȈ\u001bȈ\u001cȈ\u001d\u0002\u001eȈ\u001f\u0002 \u0002!\u0002\"\u0002#\u0002$\u0002%,&\f'\f(\f)ဉ\u0001*ဉ\u0002+\u0004,Ȉ-Ȉ.Ȉ/\f0\u00041\u00042Ȉ3Ȉ4ဉ\u00035\f6ဉ\u00047Ȉ8\u00049ဉ\u0000:ဉ\u0005;ဉ\u0006<Ȉ=ဉ\u0007>ဉ\b?Ȉ@ȈAဉ\tB\u0007C\u0007D\u0007Eဉ\nFȈGဉ\u000bH\u0004I\u0004J\u0004K\u0002L\u0002M\fN\fOဉ\fPဉ\rQ\u0007RȈSȈTဉ\u000eUဉ\u000fVဉ\u0010W\u0007Xဉ\u0011Y\fZ\u0004[\f\\ဉ\u0012]\u0002^\u0007", new Object[]{"bitField0_", "name_", "success_", "latencyMillis_", "os_", "sdkVersion_", "appId_", "osVersion_", "targetVersion_", "orientation_", "networkType_", "gmsCoreVersion_", "format_", "backendQueryId_", "gwsQueryId_", "mediationAdapter_", "mediationAdapterVersion_", "plugin_", "topException_", "stackTraceHash_", "cause_", "canonicalSdkVersion_", "appName_", "deviceModel_", "country_", "experimentId_", "sessionId_", "requestId_", "adId_", "samplingDenominator_", "rootTraceId_", "traceId_", "parentTraceId_", "traceDepth_", "startTimeMillis_", "cpuTimeMillis_", "childCpuTimeMillis_", "tag_", "signalId_", "cachedSignalState_", "gmsgName_", "scarCacheEvictionData_", "h5Data_", "sequenceNumber_", "renderId_", "internalRequestId_", "signalGenerationRequestId_", "scarRequestType_", "mediationChainLength_", "adConfigurationIndex_", "renderer_", "adUnitId_", "mraidData_", "processState_", "jsEngineData_", "cronetProvider_", "customTabsNavigationEvent_", "signalData_", "signalCacheData_", "preloadData_", "preloadId_", "offlineData_", "chromeVariations_", "rawChromeVariations_", "appVersionName_", "webviewData_", "isFirstSessionAfterInstall_", "hadCachedFlags_", "wereCachedFlagsReset_", "postClickLifecycleMonitoringData_", "webViewVersion_", "installReferrerDetails_", "networkTypeCoarse_", "previousAppExitReason_", "previousAppExitSignal_", "timeSinceSdkInitStartMillis_", "timeSinceSdkInitCompleteMillis_", "deviceAdvertisedMemTier_", "deviceAvailableProcessorTier_", "adapterInitializationDetails_", "centralizedManagerPreloadData_", "skipUninitializedAdapters_", "requestAgent_", "unityEditorVersion_", "swipeableInterstitialSettleData_", "persistentCacheRequestData_", "persistentCacheEventData_", "isHtmlResponse_", "hsdpServiceData_", "contentProviderType_", "liveWebviewCount_", "deviceAvailableMemoryTier_", "preloadValidatorData_", "deviceAdvertisedMemorySize_", "isAsyncAdResponse_"});
        }
        if (i2 == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i2 != 5) {
            return null;
        }
        return vz0.b(a21.class);
    }
}
