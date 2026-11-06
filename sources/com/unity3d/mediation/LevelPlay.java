package com.unity3d.mediation;

import android.content.Context;
import com.ironsource.C3912wb;
import com.ironsource.C3946y9;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.p;
import com.unity3d.mediation.impression.LevelPlayImpressionDataListener;
import com.unity3d.mediation.segment.LevelPlaySegment;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class LevelPlay {
    public static final LevelPlay INSTANCE = new LevelPlay();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class AdFormat {
        private static final /* synthetic */ AdFormat[] b;
        private static final /* synthetic */ EnumEntries c;
        private final String a;
        public static final AdFormat BANNER = new AdFormat("BANNER", 0, "banner");
        public static final AdFormat INTERSTITIAL = new AdFormat("INTERSTITIAL", 1, "interstitial");
        public static final AdFormat REWARDED = new AdFormat("REWARDED", 2, "rewarded");
        public static final AdFormat NATIVE_AD = new AdFormat("NATIVE_AD", 3, "nativeAd");

        static {
            AdFormat[] adFormatArrA = a();
            b = adFormatArrA;
            c = EnumEntriesKt.enumEntries(adFormatArrA);
        }

        private AdFormat(String str, int i, String str2) {
            this.a = str2;
        }

        private static final /* synthetic */ AdFormat[] a() {
            return new AdFormat[]{BANNER, INTERSTITIAL, REWARDED, NATIVE_AD};
        }

        public static EnumEntries<AdFormat> getEntries() {
            return c;
        }

        public static AdFormat valueOf(String str) {
            return (AdFormat) Enum.valueOf(AdFormat.class, str);
        }

        public static AdFormat[] values() {
            return (AdFormat[]) b.clone();
        }

        public final String getValue() {
            return this.a;
        }
    }

    private LevelPlay() {
    }

    private final void a(String str) {
        if (StringsKt__StringsJVMKt.equals(str, com.ironsource.mediationsdk.metadata.a.a, true)) {
            a(str, "LevelPlayPrivacySettings.setCCPA()");
            return;
        }
        List<String> META_DATA_COPPA_FLAGS = com.ironsource.mediationsdk.metadata.a.g;
        Intrinsics.checkNotNullExpressionValue(META_DATA_COPPA_FLAGS, "META_DATA_COPPA_FLAGS");
        if ((META_DATA_COPPA_FLAGS instanceof Collection) && META_DATA_COPPA_FLAGS.isEmpty()) {
            return;
        }
        Iterator<T> it = META_DATA_COPPA_FLAGS.iterator();
        while (it.hasNext()) {
            if (StringsKt__StringsJVMKt.equals((String) it.next(), str, true)) {
                a(str, "LevelPlayPrivacySettings.setCOPPA()");
                return;
            }
        }
    }

    public static final void addImpressionDataListener(LevelPlayImpressionDataListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog.API.info("adding listener: " + listener.getClass().getSimpleName());
        C3912wb.a.a(listener);
    }

    public static final void addImpressionLevelRevenueListener(LevelPlayImpressionDataListener listener, String subscriberId) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(subscriberId, "subscriberId");
        IronLog.API.info("adding listener: " + listener.getClass().getSimpleName());
        C3912wb.a.a(listener, subscriberId);
    }

    public static final String getSdkVersion() {
        IronLog.API.info("");
        return "9.6.1";
    }

    public static final void init(Context context, LevelPlayInitRequest initRequest, LevelPlayInitListener listener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initRequest, "initRequest");
        Intrinsics.checkNotNullParameter(listener, "listener");
        C3912wb.a.a(context, initRequest, listener);
    }

    public static final void launchTestSuite(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        IronLog.API.info("");
        p.g().c(context);
    }

    public static final void removeImpressionDataListener(LevelPlayImpressionDataListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog.API.info("removing listener: " + listener.getClass().getSimpleName());
        C3912wb.a.b(listener);
    }

    public static final void removeImpressionLevelRevenueListener(LevelPlayImpressionDataListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog.API.info("removing subscriber listener: " + listener.getClass().getSimpleName());
        C3912wb.a.c(listener);
    }

    public static final void setAdaptersDebug(boolean z) {
        IronLog.API.info("enabled: " + z);
        p.g().a(z);
    }

    public static final void setConsent(boolean z) {
        IronLog.API.info("consent: " + z);
        p.g().b(z);
    }

    public static final boolean setDynamicUserId(String dynamicUserId) {
        Intrinsics.checkNotNullParameter(dynamicUserId, "dynamicUserId");
        IronLog.API.info("dynamicUserId: " + dynamicUserId);
        return p.g().b(dynamicUserId);
    }

    public static final void setMetaData(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        IronLog.API.info("key = " + key + ", value = " + value);
        INSTANCE.a(key);
        C3912wb.a.a(key, value);
    }

    public static final void setNetworkData(String networkKey, JSONObject networkData) {
        Intrinsics.checkNotNullParameter(networkKey, "networkKey");
        Intrinsics.checkNotNullParameter(networkData, "networkData");
        IronLog.API.info("networkKey = " + networkKey + ", networkData = " + networkData);
        p.g().b(networkKey, networkData);
    }

    public static final void setSegment(LevelPlaySegment segment) {
        Intrinsics.checkNotNullParameter(segment, "segment");
        IronLog.API.info("");
        C3912wb.a.b(segment);
    }

    public static final void validateIntegration(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        IronLog.API.info("");
        C3946y9.a.a(context);
    }

    public static final void setMetaData(String key, List<String> values) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(values, "values");
        IronLog.API.info("key = " + key + ", values = " + values);
        INSTANCE.a(key);
        C3912wb.a.a(key, values);
    }

    private final void a(String str, String str2) {
        IronLog.API.warning("Setting '" + str + "' via setMetaData is deprecated. Use " + str2 + " instead.");
    }
}
