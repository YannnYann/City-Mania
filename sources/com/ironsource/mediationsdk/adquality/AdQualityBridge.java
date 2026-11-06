package com.ironsource.mediationsdk.adquality;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import com.ironsource.C3545c9;
import com.ironsource.C3627h0;
import com.ironsource.C3655ia;
import com.ironsource.C3662j0;
import com.ironsource.C3813r4;
import com.ironsource.C3857ta;
import com.ironsource.C3948yb;
import com.ironsource.C5;
import com.ironsource.D5;
import com.ironsource.O6;
import com.ironsource.P6;
import com.ironsource.Pb;
import com.ironsource.adqualitysdk.sdk.ISAdQualityConfig;
import com.ironsource.adqualitysdk.sdk.ISAdQualityCustomMediationRevenue;
import com.ironsource.adqualitysdk.sdk.ISAdQualityDeviceIdType;
import com.ironsource.adqualitysdk.sdk.ISAdQualityInitError;
import com.ironsource.adqualitysdk.sdk.ISAdQualityInitListener;
import com.ironsource.adqualitysdk.sdk.ISAdQualityLogLevel;
import com.ironsource.adqualitysdk.sdk.ISAdQualityMediationNetwork;
import com.ironsource.adqualitysdk.sdk.ISAdQualitySegment;
import com.ironsource.adqualitysdk.sdk.IronSourceAdQuality;
import com.ironsource.mediationsdk.adquality.AdQualityBridge;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class AdQualityBridge {
    public static final Companion Companion = new Companion(null);
    private static Boolean isGetVersionMethodExist;
    private final C3948yb tools;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isGetVersionMethodExist() throws JSONException {
            try {
                if (AdQualityBridge.isGetVersionMethodExist != null) {
                    return Intrinsics.areEqual(AdQualityBridge.isGetVersionMethodExist, Boolean.TRUE);
                }
                boolean z = IronSourceAdQuality.class.getDeclaredMethods().length >= 10;
                AdQualityBridge.isGetVersionMethodExist = Boolean.valueOf(z);
                return z;
            } catch (Throwable th) {
                C3813r4.d().a(th);
                logEvent$default(this, D5.E, null, null, 6, null);
                return false;
            }
        }

        private static /* synthetic */ void isGetVersionMethodExist$annotations() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void logEvent(D5 d5, Integer num, String str) throws JSONException {
            JSONObject jSONObjectB = IronSourceUtils.b(false);
            if (num != null) {
                jSONObjectB.put("errorCode", num.intValue());
            }
            if (str != null) {
                jSONObjectB.put("reason", str);
            }
            jSONObjectB.put(IronSourceConstants.EVENTS_EXT1, a.a.a().c());
            Pb.w.d().q().a(new C5(d5, jSONObjectB));
        }

        public static /* synthetic */ void logEvent$default(Companion companion, D5 d5, Integer num, String str, int i, Object obj) throws JSONException {
            if ((i & 2) != 0) {
                num = null;
            }
            if ((i & 4) != 0) {
                str = null;
            }
            companion.logEvent(d5, num, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int versionCompare(String str, String str2) {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                return -1;
            }
            int i = 0;
            String[] strArr = (String[]) StringsKt__StringsKt.split$default((CharSequence) new Regex("[^0-9.]").replace(str, ""), new String[]{"."}, false, 0, 6, (Object) null).toArray(new String[0]);
            String[] strArr2 = (String[]) StringsKt__StringsKt.split$default((CharSequence) new Regex("[^0-9.]").replace(str2, ""), new String[]{"."}, false, 0, 6, (Object) null).toArray(new String[0]);
            while (i < strArr.length && i < strArr2.length && Intrinsics.areEqual(strArr[i], strArr2[i])) {
                i++;
            }
            if (i >= strArr.length || i >= strArr2.length) {
                return Integer.signum(strArr.length - strArr2.length);
            }
            int iIntValue = Integer.valueOf(strArr[i]).intValue();
            Integer numValueOf = Integer.valueOf(strArr2[i]);
            Intrinsics.checkNotNullExpressionValue(numValueOf, "valueOf(...)");
            return Integer.signum(Intrinsics.compare(iIntValue, numValueOf.intValue()));
        }

        public final boolean adQualityAvailable() {
            return versionCompare(getAdQualitySdkVersion(), "7.9.0") >= 0;
        }

        public final String getAdQualitySdkVersion() {
            if (!isGetVersionMethodExist()) {
                return new String();
            }
            String sDKVersion = IronSourceAdQuality.getSDKVersion();
            Intrinsics.checkNotNullExpressionValue(sDKVersion, "getSDKVersion(...)");
            return sDKVersion;
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AdQualityBridge(Context context, String appKey, String str, C3662j0 adQualityDataProvider, int i) {
        this(context, appKey, str, adQualityDataProvider, i, null, 32, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        Intrinsics.checkNotNullParameter(adQualityDataProvider, "adQualityDataProvider");
    }

    public static final boolean adQualityAvailable() {
        return Companion.adQualityAvailable();
    }

    private final ISAdQualityLogLevel convertToAdQualityLogLevel(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? ISAdQualityLogLevel.INFO : ISAdQualityLogLevel.ERROR : ISAdQualityLogLevel.WARNING : ISAdQualityLogLevel.INFO : ISAdQualityLogLevel.VERBOSE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void enableRevenueDataReporting() {
        if (revenueDataReportingAvailable()) {
            this.tools.a(new Runnable() { // from class: com.ironsource.mediationsdk.adquality.AdQualityBridge$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() throws JSONException {
                    AdQualityBridge.enableRevenueDataReporting$lambda$1(this.f$0);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void enableRevenueDataReporting$lambda$1(AdQualityBridge adQualityBridge) throws JSONException {
        C3857ta.b().a(new C3627h0(adQualityBridge, adQualityBridge.tools));
        Companion.logEvent$default(Companion, D5.F, null, null, 6, null);
    }

    public static final String getAdQualitySdkVersion() {
        return Companion.getAdQualitySdkVersion();
    }

    private final boolean getCoppaValue() {
        String str;
        List<String> list = C3857ta.b().c().get(com.ironsource.mediationsdk.metadata.a.b);
        if (list == null || (str = (String) CollectionsKt___CollectionsKt.firstOrNull((List) list)) == null) {
            return false;
        }
        return Boolean.parseBoolean(str);
    }

    private final ISAdQualityDeviceIdType getDeviceIdType() {
        return !TextUtils.isEmpty(O6.a().a(P6.N)) ? ISAdQualityDeviceIdType.NONE : ISAdQualityDeviceIdType.GAID;
    }

    private static final boolean isGetVersionMethodExist() {
        return Companion.isGetVersionMethodExist();
    }

    private static final void logEvent(D5 d5, Integer num, String str) throws JSONException {
        Companion.logEvent(d5, num, str);
    }

    private final boolean revenueDataReportingAvailable() {
        Companion companion = Companion;
        return companion.versionCompare(companion.getAdQualitySdkVersion(), "9.8.0") >= 0;
    }

    private static final int versionCompare(String str, String str2) {
        return Companion.versionCompare(str, str2);
    }

    public final void changeUserId(String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        IronSourceAdQuality.getInstance().changeUserId(userId);
    }

    public final void sendCustomMediationRevenue$mediationsdk_release(C3545c9 impressionData) {
        Intrinsics.checkNotNullParameter(impressionData, "impressionData");
        IronSourceAdQuality.getInstance().sendCustomMediationRevenue(new ISAdQualityCustomMediationRevenue.Builder().setMediationNetwork(ISAdQualityMediationNetwork.LEVEL_PLAY).setCustomData(impressionData.d()).build());
    }

    public final void setSegment(C3655ia segment) {
        Intrinsics.checkNotNullParameter(segment, "segment");
        ISAdQualitySegment.Builder builder = new ISAdQualitySegment.Builder();
        if (segment.g() != null) {
            builder.setSegmentName(segment.g());
        }
        if (segment.a() > -1) {
            builder.setAge(segment.a());
        }
        if (segment.b() != null) {
            builder.setGender(segment.b());
        }
        if (segment.e() > -1) {
            builder.setLevel(segment.e());
        }
        if (segment.d() != null) {
            builder.setIsPaying(segment.d().get());
        }
        if (segment.c() > -1.0d) {
            builder.setInAppPurchasesTotal(segment.c());
        }
        if (segment.h() > 0) {
            builder.setUserCreationDate(segment.h());
        }
        Iterator<Pair<String, String>> it = segment.f().iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            Pair<String, String> next = it.next();
            String str = (String) next.first;
            String str2 = (String) next.second;
            Intrinsics.checkNotNull(str);
            if (StringsKt__StringsJVMKt.startsWith$default(str, "custom_", false, 2, null)) {
                builder.setCustomData(StringsKt__StringsKt.removePrefix(str, "custom_"), str2);
            }
        }
        IronSourceAdQuality.getInstance().setSegment(builder.build());
    }

    public AdQualityBridge(Context context, String appKey, String str, C3662j0 adQualityDataProvider, int i, C3948yb tools) throws JSONException {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        Intrinsics.checkNotNullParameter(adQualityDataProvider, "adQualityDataProvider");
        Intrinsics.checkNotNullParameter(tools, "tools");
        this.tools = tools;
        ISAdQualityConfig.Builder deviceIdType = new ISAdQualityConfig.Builder().setInitializationSource("LevelPlay").setLogLevel(convertToAdQualityLogLevel(i)).setAdQualityInitListener(new ISAdQualityInitListener() { // from class: com.ironsource.mediationsdk.adquality.AdQualityBridge$configBuilder$1
            @Override // com.ironsource.adqualitysdk.sdk.ISAdQualityInitListener
            public void adQualitySdkInitFailed(ISAdQualityInitError isAdQualityInitError, String message) throws JSONException {
                Intrinsics.checkNotNullParameter(isAdQualityInitError, "isAdQualityInitError");
                Intrinsics.checkNotNullParameter(message, "message");
                D5 d5 = D5.D;
                if (isAdQualityInitError == ISAdQualityInitError.AD_QUALITY_ALREADY_INITIALIZED) {
                    d5 = D5.C;
                    this.this$0.enableRevenueDataReporting();
                }
                AdQualityBridge.Companion.logEvent(d5, Integer.valueOf(isAdQualityInitError.getValue()), message);
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "Ad Quality failed to initialize: " + message, 3);
            }

            @Override // com.ironsource.adqualitysdk.sdk.ISAdQualityInitListener
            public void adQualitySdkInitSuccess() throws JSONException {
                AdQualityBridge.Companion.logEvent$default(AdQualityBridge.Companion, D5.B, null, null, 6, null);
                this.this$0.enableRevenueDataReporting();
            }
        }).setCoppa(getCoppaValue()).setDeviceIdType(getDeviceIdType());
        if (a.a.b()) {
            deviceIdType.setTestMode(true);
        }
        if (!TextUtils.isEmpty(str)) {
            deviceIdType.setUserId(str);
        }
        Companion companion = Companion;
        if (companion.versionCompare(companion.getAdQualitySdkVersion(), "7.14.1") >= 0) {
            JSONObject jSONObjectA = adQualityDataProvider.a();
            if (jSONObjectA.length() > 0) {
                deviceIdType.setMetaData(jSONObjectA);
            }
        }
        Companion.logEvent$default(companion, D5.A, null, null, 6, null);
        IronSourceAdQuality.getInstance().initialize(context, appKey, deviceIdType.build());
    }

    public /* synthetic */ AdQualityBridge(Context context, String str, String str2, C3662j0 c3662j0, int i, C3948yb c3948yb, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, str2, c3662j0, i, (i2 & 32) != 0 ? new C3948yb() : c3948yb);
    }
}
