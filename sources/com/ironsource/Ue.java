package com.ironsource;

import android.content.Context;
import android.text.TextUtils;
import com.ironsource.Q7;
import com.ironsource.S3;
import com.ironsource.environment.StringUtils;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.unity3d.ads.core.domain.CommonGetHeaderBiddingToken;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class Ue {
    protected static final boolean A = false;
    protected static final String A0 = "parallelInit";
    protected static final String A1 = "adSourceName";
    protected static final int B = 60;
    protected static final String B0 = "waitUntilAllProvidersFinishInit";
    protected static final String B1 = "providerNetworkKey";
    protected static final int C = 10000;
    protected static final String C0 = "sharedManagersThread";
    protected static final String C1 = "spId";
    protected static final int D = 10000;
    protected static final String D0 = "parallelLoad";
    protected static final String D1 = "mpis";
    protected static final int E = -1;
    protected static final String E0 = "bidderExclusive";
    protected static final String E1 = "auction";
    protected static final int F = 5000;
    protected static final String F0 = "adapterTimeOutInSeconds";
    protected static final String F1 = "auctionData";
    protected static final int G = 3;
    protected static final String G0 = "atim";
    protected static final String G1 = "auctioneerURL";
    protected static final int H = 3;
    protected static final String H0 = "bannerInterval";
    protected static final String H1 = "extAuctioneerURL";
    protected static final int I = 3;
    protected static final String I0 = "isOneFlow";
    protected static final String I1 = "objectPerWaterfall";
    protected static final int J = 0;
    protected static final String J0 = "expiredDurationInMinutes";
    protected static final String J1 = "minTimeBeforeFirstAuction";
    protected static final int K = 2;
    protected static final String K0 = "server";
    protected static final String K1 = "timeToWaitBeforeAuction";
    protected static final int L = 15;
    protected static final String L0 = "publisher";
    protected static final String L1 = "timeToWaitBeforeLoad";
    protected static final long M = 10000;
    protected static final String M0 = "console";
    protected static final String M1 = "auctionRetryInterval";
    protected static final long N = 3000;
    protected static final String N0 = "sendUltraEvents";
    protected static final String N1 = "isLoadWhileShow";
    protected static final boolean O = false;
    protected static final String O0 = "sendEventsToggle";
    protected static final String O1 = "auctionTrials";
    protected static final boolean P = false;
    protected static final String P0 = "eventsCompression";
    protected static final String P1 = "auctionTimeout";
    protected static final int Q = 30000;
    protected static final String Q0 = "eventsCompressionLevel";
    protected static final String Q1 = "auctionSavedHistory";
    protected static final int R = -1;
    protected static final String R0 = "serverEventsURL";
    protected static final String R1 = "disableLoadWhileShowSupportFor";
    protected static final int S = 5000;
    protected static final String S0 = "serverEventsType";
    protected static final String S1 = "tokenPerAdapter";
    protected static final int T = 1;
    protected static final String T0 = "backupThreshold";
    protected static final String T1 = "enableAuctionFallback";
    protected static final boolean U = false;
    protected static final String U0 = "maxNumberOfEvents";
    protected static final String U1 = "timeToDeleteOldWaterfallAfterAuction";
    protected static final int V = 15000;
    protected static final String V0 = "maxEventsPerBatch";
    protected static final String V1 = "compressAuctionRequest";
    protected static final int W = 15000;
    protected static final String W0 = "optOut";
    protected static final String W1 = "compressAuctionResponse";
    protected static final String X = "providerOrder";
    protected static final String X0 = "optIn";
    protected static final String X1 = "encryptionVersion";
    protected static final String Y = "providerSettings";
    protected static final String Y0 = "triggerEvents";
    protected static final String Y1 = "shouldSendBannerBURLFromImpression";
    protected static final String Z = "configurations";
    protected static final String Z0 = "nonConnectivityEvents";
    protected static final String Z1 = "impressionTimeout";
    protected static final String a0 = "genericParams";
    protected static final String a1 = "shouldSendPublisherLogsOnUIThread";
    protected static final String a2 = "optInKeys";
    protected static final String b0 = "adUnits";
    protected static final String b1 = "pixel";
    protected static final String b2 = "tokenGenericParams";
    protected static final String c0 = "providerLoadName";
    protected static final String c1 = "pixelEventsUrl";
    protected static final String c2 = "compressToken";
    protected static final String d0 = "application";
    protected static final String d1 = "pixelEventsEnabled";
    protected static final String d2 = "compressExternalToken";
    protected static final String e0 = "rewardedVideo";
    protected static final String e1 = "placements";
    protected static final String e2 = "instanceType";
    protected static final String f0 = "interstitial";
    protected static final String f1 = "placementId";
    protected static final String f2 = "maxAdsPerSession";
    protected static final String g0 = "banner";
    protected static final String g1 = "placementName";
    protected static final String g2 = "reward";
    protected static final String h0 = "nativeAd";
    protected static final String h1 = "delivery";
    protected static final String h2 = "name";
    protected static final String i0 = "integration";
    protected static final String i1 = "isDefault";
    protected static final String i2 = "amount";
    protected static final String j0 = "loggers";
    protected static final String j1 = "capping";
    protected static final String j2 = "bannerRefreshRate";
    protected static final String k0 = "segment";
    protected static final String k1 = "pacing";
    protected static final String k2 = "protocolVersion";
    public static final String l = "appKey";
    protected static final String l0 = "events";
    protected static final String l1 = "enabled";
    protected static final String l2 = "adFormats";
    public static final String m = "userId";
    protected static final String m0 = "crashReporter";
    protected static final String m1 = "maxImpressions";
    protected static final String m2 = "adUnits";
    public static final String n = "response";
    protected static final String n0 = "token";
    protected static final String n1 = "numOfSeconds";
    protected static final String n2 = "rewarded";
    protected static final String o = "error";
    protected static final String o0 = "external";
    protected static final String o1 = "unit";
    public static final String o2 = "preload";
    protected static final int p = 3;
    protected static final String p0 = "mediationTypes";
    protected static final String p1 = "virtualItemName";
    protected static final boolean q = false;
    protected static final String q0 = "providerDefaultInstance";
    protected static final String q1 = "virtualItemCount";
    protected static final boolean r = true;
    protected static final String r0 = "testSuite";
    protected static final String r1 = "uuidEnabled";
    protected static final boolean s = true;
    protected static final String s0 = "controllerUrl";
    protected static final String s1 = "abt";
    protected static final int t = 2;
    protected static final String t0 = "AdQuality";
    protected static final String t1 = "delayLoadFailure";
    protected static final int u = 2;
    protected static final String u0 = "initMode";
    protected static final String u1 = "keysToInclude";
    protected static final int v = 1;
    protected static final String v0 = "adq_init_blob";
    protected static final String v1 = "reporterURL";
    protected static final int w = 1;
    protected static final String w0 = "testMode";
    protected static final String w1 = "reporterKeyword";
    protected static final boolean x = true;
    protected static final String x0 = "settings";
    protected static final String x1 = "includeANR";
    protected static final boolean y = false;
    protected static final String y0 = "collectBiddingDataTimeout";
    protected static final String y1 = "timeout";
    protected static final boolean z = false;
    protected static final String z0 = "providers";
    protected static final String z1 = "setIgnoreDebugger";
    private Ld a;
    private Nd b;
    private S3 c;
    private String d;
    private String e;
    private JSONObject f;
    private Context g;
    private a h;
    private Q7.a i;
    private boolean j;
    private R5 k;

    public enum a {
        NOT_SET("0"),
        CACHE("1"),
        SERVER(CommonGetHeaderBiddingToken.HB_TOKEN_VERSION);

        private final String a;

        a(String str) {
            this.a = str;
        }

        public String b() {
            return this.a;
        }
    }

    public Ue(Context context, String str, String str2, String str3) {
        this.h = a.NOT_SET;
        this.j = false;
        this.g = context;
        this.i = Pb.b0().y();
        try {
            if (TextUtils.isEmpty(str3)) {
                this.f = new JSONObject();
            } else {
                this.f = new JSONObject(str3);
            }
            this.j = o();
            t();
            r();
            s();
            this.d = TextUtils.isEmpty(str) ? "" : str;
            this.e = TextUtils.isEmpty(str2) ? "" : str2;
            b(this.f);
        } catch (JSONException e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            a();
        }
    }

    public static a a(Ue ue) {
        return ue != null ? ue.i() : a.NOT_SET;
    }

    private void b(JSONObject jSONObject) {
        this.k = new R5(jSONObject.optJSONObject(Be.d));
    }

    private JSONObject c(JSONObject jSONObject, String str) {
        if (jSONObject != null) {
            return jSONObject.optJSONObject(str);
        }
        return null;
    }

    private C3701l3 d(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        int iOptInt = jSONObject.optInt("placementId", -1);
        String strOptString = jSONObject.optString("placementName", "");
        boolean zOptBoolean = jSONObject.optBoolean(i1, false);
        C3747nd c3747ndA = a(jSONObject);
        if (iOptInt < 0 || TextUtils.isEmpty(strOptString)) {
            return null;
        }
        C3701l3 c3701l3 = new C3701l3(iOptInt, strOptString, zOptBoolean, c3747ndA);
        if (c3747ndA != null) {
            this.i.b(this.g, c3701l3, IronSource.a.BANNER);
        }
        return c3701l3;
    }

    private C3639hc f(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        int iOptInt = jSONObject.optInt("placementId", -1);
        String strOptString = jSONObject.optString("placementName", "");
        boolean zOptBoolean = jSONObject.optBoolean(i1, false);
        C3747nd c3747ndA = a(jSONObject);
        if (iOptInt < 0 || TextUtils.isEmpty(strOptString)) {
            return null;
        }
        C3639hc c3639hc = new C3639hc(iOptInt, strOptString, zOptBoolean, c3747ndA);
        if (c3747ndA != null) {
            this.i.b(this.g, c3639hc, IronSource.a.NATIVE_AD);
        }
        return c3639hc;
    }

    private String m() {
        return this.j ? "rewarded" : "rewardedVideo";
    }

    private boolean n() {
        JSONObject jSONObjectC;
        JSONArray jSONArrayOptJSONArray;
        JSONObject jSONObjectC2 = c(this.f, "providerOrder");
        JSONArray jSONArrayNames = jSONObjectC2.names();
        if (jSONArrayNames == null) {
            return true;
        }
        JSONObject jSONObjectC3 = c(c(this.f, "configurations"), b());
        for (int i = 0; i < jSONArrayNames.length(); i++) {
            String strOptString = jSONArrayNames.optString(i);
            JSONArray jSONArrayOptJSONArray2 = jSONObjectC2.optJSONArray(strOptString);
            if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() != 0 && (jSONObjectC = c(jSONObjectC3, strOptString)) != null && ((jSONArrayOptJSONArray = jSONObjectC.optJSONArray("placements")) == null || jSONArrayOptJSONArray.length() == 0)) {
                return false;
            }
        }
        return true;
    }

    private boolean o() {
        int iOptInt;
        try {
            iOptInt = this.f.optInt(k2, 0);
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            iOptInt = 0;
        }
        return iOptInt == 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void r() {
        /*
            Method dump skipped, instruction units count: 2091
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.Ue.r():void");
    }

    private void s() {
        try {
            JSONObject jSONObjectC = c(this.f, "providerOrder");
            JSONArray jSONArrayB = b(jSONObjectC, m());
            JSONArray jSONArrayB2 = b(jSONObjectC, "interstitial");
            JSONArray jSONArrayB3 = b(jSONObjectC, "banner");
            JSONArray jSONArrayB4 = b(jSONObjectC, "nativeAd");
            this.a = new Ld();
            if (jSONArrayB != null && c() != null && c().f() != null) {
                for (int i = 0; i < jSONArrayB.length(); i++) {
                    String strOptString = jSONArrayB.optString(i);
                    this.a.d(strOptString);
                    NetworkSettings networkSettingsB = Nd.c().b(strOptString);
                    if (networkSettingsB != null) {
                        networkSettingsB.setRewardedVideoPriority(i);
                    }
                }
            }
            if (jSONArrayB2 != null && c() != null && c().d() != null) {
                for (int i3 = 0; i3 < jSONArrayB2.length(); i3++) {
                    String strOptString2 = jSONArrayB2.optString(i3);
                    this.a.b(strOptString2);
                    NetworkSettings networkSettingsB2 = Nd.c().b(strOptString2);
                    if (networkSettingsB2 != null) {
                        networkSettingsB2.setInterstitialPriority(i3);
                    }
                }
            }
            if (jSONArrayB3 != null) {
                for (int i4 = 0; i4 < jSONArrayB3.length(); i4++) {
                    String strOptString3 = jSONArrayB3.optString(i4);
                    this.a.a(strOptString3);
                    NetworkSettings networkSettingsB3 = Nd.c().b(strOptString3);
                    if (networkSettingsB3 != null) {
                        networkSettingsB3.setBannerPriority(i4);
                    }
                }
            }
            if (jSONArrayB4 != null) {
                for (int i5 = 0; i5 < jSONArrayB4.length(); i5++) {
                    String strOptString4 = jSONArrayB4.optString(i5);
                    this.a.c(strOptString4);
                    NetworkSettings networkSettingsB4 = Nd.c().b(strOptString4);
                    if (networkSettingsB4 != null) {
                        networkSettingsB4.setNativeAdPriority(i5);
                    }
                }
            }
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private void t() {
        JSONObject jSONObject;
        Iterator<String> it;
        try {
            this.b = Nd.c();
            JSONObject jSONObjectC = c(this.f, "providerSettings");
            Iterator<String> itKeys = jSONObjectC.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                JSONObject jSONObjectOptJSONObject = jSONObjectC.optJSONObject(next);
                if (jSONObjectOptJSONObject != null) {
                    boolean zOptBoolean = jSONObjectOptJSONObject.optBoolean("mpis", false);
                    String strOptString = jSONObjectOptJSONObject.optString("spId", "0");
                    String strOptString2 = jSONObjectOptJSONObject.optString("adSourceName", null);
                    String strOptString3 = jSONObjectOptJSONObject.optString("providerNetworkKey", null);
                    String strOptString4 = jSONObjectOptJSONObject.optString("providerLoadName", next);
                    String strOptString5 = jSONObjectOptJSONObject.optString("providerDefaultInstance", strOptString4);
                    JSONObject jSONObjectC2 = c(jSONObjectOptJSONObject, b());
                    JSONObject jSONObjectC3 = c(jSONObjectOptJSONObject, "application");
                    JSONObject jSONObjectC4 = c(jSONObjectC2, m());
                    JSONObject jSONObjectC5 = c(jSONObjectC2, "interstitial");
                    JSONObject jSONObjectC6 = c(jSONObjectC2, "banner");
                    JSONObject jSONObjectC7 = c(jSONObjectC2, "nativeAd");
                    JSONObject jSONObjectB = IronSourceUtils.b(jSONObjectC4, jSONObjectC3);
                    JSONObject jSONObjectB2 = IronSourceUtils.b(jSONObjectC5, jSONObjectC3);
                    JSONObject jSONObjectB3 = IronSourceUtils.b(jSONObjectC6, jSONObjectC3);
                    JSONObject jSONObjectB4 = IronSourceUtils.b(jSONObjectC7, jSONObjectC3);
                    if (this.b.a(next)) {
                        Pb.k0().q().a(new C5(D5.S3, (JSONObject) null));
                        NetworkSettings networkSettingsB = this.b.b(next);
                        JSONObject rewardedVideoSettings = networkSettingsB.getRewardedVideoSettings();
                        JSONObject interstitialSettings = networkSettingsB.getInterstitialSettings();
                        JSONObject bannerSettings = networkSettingsB.getBannerSettings();
                        JSONObject nativeAdSettings = networkSettingsB.getNativeAdSettings();
                        networkSettingsB.setRewardedVideoSettings(IronSourceUtils.b(rewardedVideoSettings, jSONObjectB));
                        networkSettingsB.setInterstitialSettings(IronSourceUtils.b(interstitialSettings, jSONObjectB2));
                        networkSettingsB.setBannerSettings(IronSourceUtils.b(bannerSettings, jSONObjectB3));
                        networkSettingsB.setNativeAdSettings(IronSourceUtils.b(nativeAdSettings, jSONObjectB4));
                        networkSettingsB.setIsMultipleInstances(zOptBoolean);
                        networkSettingsB.setSubProviderId(strOptString);
                        networkSettingsB.setAdSourceNameForEvents(strOptString2);
                        networkSettingsB.setProviderNetworkKey(strOptString3);
                    } else {
                        if (b(strOptString4)) {
                            jSONObject = jSONObjectC;
                            NetworkSettings networkSettingsB2 = this.b.b("Mediation");
                            JSONObject rewardedVideoSettings2 = networkSettingsB2.getRewardedVideoSettings();
                            JSONObject interstitialSettings2 = networkSettingsB2.getInterstitialSettings();
                            JSONObject bannerSettings2 = networkSettingsB2.getBannerSettings();
                            JSONObject nativeAdSettings2 = networkSettingsB2.getNativeAdSettings();
                            it = itKeys;
                            NetworkSettings networkSettings = new NetworkSettings(next, strOptString4, strOptString5, strOptString3, jSONObjectC3, IronSourceUtils.b(new JSONObject(rewardedVideoSettings2.toString()), jSONObjectB), IronSourceUtils.b(new JSONObject(interstitialSettings2.toString()), jSONObjectB2), IronSourceUtils.b(new JSONObject(bannerSettings2.toString()), jSONObjectB3), IronSourceUtils.b(new JSONObject(nativeAdSettings2.toString()), jSONObjectB4));
                            networkSettings.setIsMultipleInstances(zOptBoolean);
                            networkSettings.setSubProviderId(strOptString);
                            networkSettings.setAdSourceNameForEvents(strOptString2);
                            this.b.a(networkSettings);
                        } else {
                            jSONObject = jSONObjectC;
                            it = itKeys;
                            NetworkSettings networkSettings2 = new NetworkSettings(next, strOptString4, strOptString5, strOptString3, jSONObjectC3, jSONObjectB, jSONObjectB2, jSONObjectB3, jSONObjectB4);
                            networkSettings2.setIsMultipleInstances(zOptBoolean);
                            networkSettings2.setSubProviderId(strOptString);
                            networkSettings2.setAdSourceNameForEvents(strOptString2);
                            this.b.a(networkSettings2);
                        }
                        jSONObjectC = jSONObject;
                        itKeys = it;
                    }
                }
            }
            this.b.b();
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    public String e() {
        JSONObject jSONObject = this.f;
        if (jSONObject == null || !jSONObject.has("error")) {
            return null;
        }
        return this.f.optString("error");
    }

    public C3600f9 g() {
        return new C3600f9(this.d, this.e);
    }

    public List<IronSource.a> h() {
        Ld ld;
        Ld ld2;
        Ld ld3;
        Ld ld4;
        if (this.f == null || this.c == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (this.c.f() != null && (ld4 = this.a) != null && !ld4.d().isEmpty()) {
            arrayList.add(IronSource.a.REWARDED_VIDEO);
        }
        if (this.c.d() != null && (ld3 = this.a) != null && !ld3.b().isEmpty()) {
            arrayList.add(IronSource.a.INTERSTITIAL);
        }
        if (this.c.c() != null && (ld2 = this.a) != null && !ld2.a().isEmpty()) {
            arrayList.add(IronSource.a.BANNER);
        }
        if (this.c.e() != null && (ld = this.a) != null && !ld.c().isEmpty()) {
            arrayList.add(IronSource.a.NATIVE_AD);
        }
        return arrayList;
    }

    public a i() {
        return this.h;
    }

    public JSONObject j() {
        return this.f;
    }

    public Ld k() {
        return this.a;
    }

    public Nd l() {
        return this.b;
    }

    public boolean p() {
        return !TextUtils.isEmpty(c().g().b());
    }

    public boolean q() {
        JSONObject jSONObject = this.f;
        return (jSONObject == null || jSONObject.has("error") || this.a == null || this.b == null || this.c == null || !n()) ? false : true;
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appKey", this.d);
            jSONObject.put("userId", this.e);
            jSONObject.put(n, this.f);
        } catch (JSONException e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
        return jSONObject.toString();
    }

    private String b() {
        return this.j ? "adFormats" : Y0.c;
    }

    private C3729md g(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        int iOptInt = jSONObject.optInt("placementId", -1);
        String strOptString = jSONObject.optString("placementName", "");
        boolean zOptBoolean = jSONObject.optBoolean(i1, false);
        String strOptString2 = jSONObject.optString("virtualItemName", "");
        int iOptInt2 = jSONObject.optInt("virtualItemCount", -1);
        C3747nd c3747ndA = a(jSONObject);
        if (iOptInt < 0 || TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString2) || iOptInt2 <= 0) {
            return null;
        }
        C3729md c3729md = new C3729md(iOptInt, strOptString, zOptBoolean, strOptString2, iOptInt2, c3747ndA);
        if (c3747ndA != null) {
            this.i.b(this.g, c3729md, IronSource.a.REWARDED_VIDEO);
        }
        return c3729md;
    }

    public S3 c() {
        return this.c;
    }

    private JSONArray b(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            return null;
        }
        if (!this.j) {
            return jSONObject.optJSONArray(str);
        }
        JSONObject jSONObjectC = c(jSONObject, str);
        String strA = a(str);
        if (jSONObjectC == null || strA == null) {
            return null;
        }
        return jSONObjectC.optJSONArray(strA);
    }

    private com.ironsource.mediationsdk.adquality.a c(JSONObject jSONObject) {
        com.ironsource.mediationsdk.adquality.a aVar = new com.ironsource.mediationsdk.adquality.a();
        JSONObject jSONObjectC = c(jSONObject, "AdQuality");
        if (jSONObjectC != null) {
            aVar.a(jSONObjectC.optInt("initMode", 0));
            aVar.b(jSONObjectC.optBoolean(w0, false));
            new C3528ba().b(jSONObjectC.optString("adq_init_blob"));
        }
        return aVar;
    }

    private P9 e(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        int iOptInt = jSONObject.optInt("placementId", -1);
        String strOptString = jSONObject.optString("placementName", "");
        boolean zOptBoolean = jSONObject.optBoolean(i1, false);
        C3747nd c3747ndA = a(jSONObject);
        if (iOptInt < 0 || TextUtils.isEmpty(strOptString)) {
            return null;
        }
        P9 p9 = new P9(iOptInt, strOptString, zOptBoolean, c3747ndA);
        if (c3747ndA != null) {
            this.i.b(this.g, p9, IronSource.a.INTERSTITIAL);
        }
        return p9;
    }

    public void a(a aVar) {
        this.h = aVar;
    }

    private void a() {
        this.f = new JSONObject();
        this.d = "";
        this.e = "";
        this.a = new Ld();
        this.b = Nd.c();
        this.c = new S3.a().a();
        this.i = Pb.b0().y();
        b(this.f);
    }

    private JSONObject d(JSONObject jSONObject, String str) {
        JSONObject jSONObjectC = c(jSONObject, str);
        return jSONObjectC != null ? jSONObjectC : new JSONObject();
    }

    private boolean b(String str) {
        return this.b.a("Mediation") && StringUtils.toLowerCase("IronSource").equals(StringUtils.toLowerCase(str));
    }

    public R5 f() {
        return this.k;
    }

    private Context d() {
        return this.g;
    }

    private String a(String str) {
        try {
            JSONObject jSONObjectC = c(c(c(c(this.f, "configurations"), "adFormats"), str), Y0.c);
            if (jSONObjectC == null) {
                return null;
            }
            Iterator<String> itKeys = jSONObjectC.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                JSONObject jSONObjectC2 = c(jSONObjectC, next);
                if (jSONObjectC2 != null && jSONObjectC2.optBoolean(i1)) {
                    return next;
                }
            }
            return null;
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return null;
        }
    }

    public static C3768og b(Ue ue) {
        if (ue != null && ue.q()) {
            return ue.c().b().k();
        }
        return C3768og.a();
    }

    private C3516ag h(JSONObject jSONObject) {
        C3516ag c3516ag = new C3516ag();
        JSONObject jSONObjectC = c(jSONObject, "testSuite");
        if (jSONObjectC != null) {
            c3516ag.b(jSONObjectC.optString("controllerUrl"));
        }
        return c3516ag;
    }

    public Ue(Ue ue) {
        this.h = a.NOT_SET;
        this.j = false;
        try {
            this.g = ue.d();
            this.f = new JSONObject(ue.f.toString());
            this.d = ue.d;
            this.e = ue.e;
            this.j = ue.j;
            this.a = ue.k();
            this.b = ue.l();
            this.c = ue.c();
            this.h = ue.i();
            this.i = Pb.b0().y();
            b(this.f);
        } catch (Exception e) {
            C3813r4.d().a(e);
            a();
        }
    }

    private R1 a(JSONObject jSONObject, Boolean bool) {
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        boolean zOptBoolean = jSONObject.optBoolean("sendEventsToggle", false);
        boolean zOptBoolean2 = jSONObject.optBoolean("eventsCompression", false);
        int iOptInt = jSONObject.optInt("eventsCompressionLevel", -1);
        String strOptString = jSONObject.optString("serverEventsURL", "");
        String strOptString2 = jSONObject.optString("serverEventsType", "");
        int iOptInt2 = jSONObject.optInt("backupThreshold", -1);
        int iOptInt3 = jSONObject.optInt("maxNumberOfEvents", -1);
        int iOptInt4 = jSONObject.optInt("maxEventsPerBatch", 5000);
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("optOut");
        int[] iArr4 = null;
        if (jSONArrayOptJSONArray != null) {
            int[] iArr5 = new int[jSONArrayOptJSONArray.length()];
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                iArr5[i] = jSONArrayOptJSONArray.optInt(i);
            }
            iArr = iArr5;
        } else {
            iArr = null;
        }
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("optIn");
        if (jSONArrayOptJSONArray2 != null) {
            int[] iArr6 = new int[jSONArrayOptJSONArray2.length()];
            for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                iArr6[i3] = jSONArrayOptJSONArray2.optInt(i3);
            }
            iArr2 = iArr6;
        } else {
            iArr2 = null;
        }
        JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("triggerEvents");
        if (jSONArrayOptJSONArray3 != null) {
            int[] iArr7 = new int[jSONArrayOptJSONArray3.length()];
            for (int i4 = 0; i4 < jSONArrayOptJSONArray3.length(); i4++) {
                iArr7[i4] = jSONArrayOptJSONArray3.optInt(i4);
            }
            iArr3 = iArr7;
        } else {
            iArr3 = null;
        }
        JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray("nonConnectivityEvents");
        if (jSONArrayOptJSONArray4 != null) {
            iArr4 = new int[jSONArrayOptJSONArray4.length()];
            for (int i5 = 0; i5 < jSONArrayOptJSONArray4.length(); i5++) {
                iArr4[i5] = jSONArrayOptJSONArray4.optInt(i5);
            }
        }
        return new R1(bool.booleanValue(), zOptBoolean, zOptBoolean2, iOptInt, strOptString, strOptString2, iOptInt2, iOptInt3, iOptInt4, iArr, iArr2, iArr3, iArr4);
    }

    private int[] a(JSONObject jSONObject, String str) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray == null) {
            return null;
        }
        int[] iArr = new int[jSONArrayOptJSONArray.length()];
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            iArr[i] = jSONArrayOptJSONArray.optInt(i);
        }
        return iArr;
    }

    private boolean a(JSONObject jSONObject, JSONObject jSONObject2, String str, boolean z2) {
        return jSONObject.has(str) ? jSONObject.optBoolean(str, z2) : jSONObject2.has(str) ? jSONObject2.optBoolean(str, z2) : z2;
    }

    private int a(JSONObject jSONObject, JSONObject jSONObject2, String str, int i) {
        int iOptInt = 0;
        if (jSONObject.has(str)) {
            iOptInt = jSONObject.optInt(str, 0);
        } else if (jSONObject2.has(str)) {
            iOptInt = jSONObject2.optInt(str, 0);
        }
        return iOptInt == 0 ? i : iOptInt;
    }

    private long a(JSONObject jSONObject, JSONObject jSONObject2, String str, long j) {
        long jOptLong;
        if (jSONObject.has(str)) {
            jOptLong = jSONObject.optLong(str, 0L);
        } else {
            jOptLong = jSONObject2.has(str) ? jSONObject2.optLong(str, 0L) : 0L;
        }
        return jOptLong == 0 ? j : jOptLong;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0036 A[PHI: r7
      0x0036: PHI (r7v3 com.ironsource.rd) = (r7v1 com.ironsource.rd), (r7v2 com.ironsource.rd) binds: [B:10:0x0034, B:13:0x0042] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.ironsource.C3747nd a(org.json.JSONObject r10) {
        /*
            r9 = this;
            r0 = 0
            if (r10 != 0) goto L4
            return r0
        L4:
            com.ironsource.nd$a r1 = new com.ironsource.nd$a
            r1.<init>()
            java.lang.String r2 = "delivery"
            r3 = 1
            boolean r2 = r10.optBoolean(r2, r3)
            r1.a(r2)
            java.lang.String r2 = "capping"
            org.json.JSONObject r2 = r10.optJSONObject(r2)
            java.lang.String r4 = "enabled"
            r5 = 0
            if (r2 == 0) goto L59
            java.lang.String r6 = "unit"
            java.lang.String r6 = r2.optString(r6)
            boolean r7 = android.text.TextUtils.isEmpty(r6)
            if (r7 != 0) goto L45
            com.ironsource.rd r7 = com.ironsource.EnumC3822rd.PER_DAY
            java.lang.String r8 = r7.toString()
            boolean r8 = r8.equals(r6)
            if (r8 == 0) goto L38
        L36:
            r0 = r7
            goto L45
        L38:
            com.ironsource.rd r7 = com.ironsource.EnumC3822rd.PER_HOUR
            java.lang.String r8 = r7.toString()
            boolean r6 = r8.equals(r6)
            if (r6 == 0) goto L45
            goto L36
        L45:
            java.lang.String r6 = "maxImpressions"
            int r6 = r2.optInt(r6, r5)
            boolean r2 = r2.optBoolean(r4, r5)
            if (r2 == 0) goto L55
            if (r6 <= 0) goto L55
            r2 = r3
            goto L56
        L55:
            r2 = r5
        L56:
            r1.a(r2, r0, r6)
        L59:
            java.lang.String r0 = "pacing"
            org.json.JSONObject r10 = r10.optJSONObject(r0)
            if (r10 == 0) goto L74
            java.lang.String r0 = "numOfSeconds"
            int r0 = r10.optInt(r0, r5)
            boolean r10 = r10.optBoolean(r4, r5)
            if (r10 == 0) goto L70
            if (r0 <= 0) goto L70
            goto L71
        L70:
            r3 = r5
        L71:
            r1.a(r3, r0)
        L74:
            com.ironsource.nd r10 = r1.a()
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.Ue.a(org.json.JSONObject):com.ironsource.nd");
    }
}
