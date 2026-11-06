package com.unity3d.ironsourceads;

import android.content.Context;
import com.ironsource.V9;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.p;
import java.util.List;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;

/* JADX INFO: loaded from: classes4.dex */
public final class IronSourceAds {
    public static final IronSourceAds INSTANCE = new IronSourceAds();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class AdFormat {
        public static final AdFormat BANNER = new AdFormat("BANNER", 0, "Banner");
        public static final AdFormat INTERSTITIAL = new AdFormat("INTERSTITIAL", 1, "Interstitial");
        public static final AdFormat REWARDED = new AdFormat("REWARDED", 2, "RewardedVideo");
        private static final /* synthetic */ AdFormat[] b;
        private static final /* synthetic */ EnumEntries c;
        private final String a;

        static {
            AdFormat[] adFormatArrA = a();
            b = adFormatArrA;
            c = EnumEntriesKt.enumEntries(adFormatArrA);
        }

        private AdFormat(String str, int i, String str2) {
            this.a = str2;
        }

        private static final /* synthetic */ AdFormat[] a() {
            return new AdFormat[]{BANNER, INTERSTITIAL, REWARDED};
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

    private IronSourceAds() {
    }

    public static final void enableDebugMode(boolean z) {
        IronLog.API.info("enabled: " + z);
        p.g().a(z);
    }

    public static final String getSdkVersion() {
        IronLog.API.info("");
        return "9.6.1";
    }

    public static final void init(Context context, InitRequest initRequest, InitListener initializationListener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initRequest, "initRequest");
        Intrinsics.checkNotNullParameter(initializationListener, "initializationListener");
        V9.a.a(context, initRequest, initializationListener);
    }

    public static final void setConsent(boolean z) throws JSONException {
        IronLog.API.info("consent: " + z);
        V9.a.b(z);
    }

    public static final void setMetaData(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        IronLog.API.info("key = " + key + ", value = " + value);
        V9.a.a(key, value);
    }

    public static final void setMetaData(String key, List<String> values) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(values, "values");
        IronLog.API.info("key = " + key + ", values = " + values);
        p.g().a(key, values);
    }
}
