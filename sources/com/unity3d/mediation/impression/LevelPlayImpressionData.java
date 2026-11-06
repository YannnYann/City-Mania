package com.unity3d.mediation.impression;

import java.text.DecimalFormat;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class LevelPlayImpressionData {
    public static final a Companion = new a(null);
    public static final String IMPRESSION_DATA_KEY_ABTEST = "ab";
    public static final String IMPRESSION_DATA_KEY_AD_FORMAT = "adFormat";
    public static final String IMPRESSION_DATA_KEY_AD_NETWORK = "adNetwork";
    public static final String IMPRESSION_DATA_KEY_AUCTION_ID = "auctionId";
    public static final String IMPRESSION_DATA_KEY_COUNTRY = "country";
    public static final String IMPRESSION_DATA_KEY_CREATIVE_ID = "creativeId";
    public static final String IMPRESSION_DATA_KEY_ENCRYPTED_CPM = "encryptedCPM";
    public static final String IMPRESSION_DATA_KEY_INSTANCE_ID = "instanceId";
    public static final String IMPRESSION_DATA_KEY_INSTANCE_NAME = "instanceName";
    public static final String IMPRESSION_DATA_KEY_MEDIATION_AD_UNIT_ID = "mediationAdUnitId";
    public static final String IMPRESSION_DATA_KEY_MEDIATION_AD_UNIT_NAME = "mediationAdUnitName";
    public static final String IMPRESSION_DATA_KEY_PLACEMENT = "placement";
    public static final String IMPRESSION_DATA_KEY_PRECISION = "precision";
    public static final String IMPRESSION_DATA_KEY_REVENUE = "revenue";
    public static final String IMPRESSION_DATA_KEY_SEGMENT_NAME = "segmentName";
    private final JSONObject a;
    private final DecimalFormat b;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public LevelPlayImpressionData(JSONObject allData) {
        Intrinsics.checkNotNullParameter(allData, "allData");
        this.a = allData;
        this.b = new DecimalFormat("#.#####");
    }

    public final String getAb() {
        String strOptString = this.a.optString("ab", "");
        Intrinsics.checkNotNull(strOptString);
        if (strOptString.length() > 0) {
            return strOptString;
        }
        return null;
    }

    public final String getAdFormat() {
        String strOptString = this.a.optString("adFormat", "");
        Intrinsics.checkNotNull(strOptString);
        if (strOptString.length() > 0) {
            return strOptString;
        }
        return null;
    }

    public final String getAdNetwork() {
        String strOptString = this.a.optString("adNetwork", "");
        Intrinsics.checkNotNull(strOptString);
        if (strOptString.length() > 0) {
            return strOptString;
        }
        return null;
    }

    public final JSONObject getAllData() {
        return this.a;
    }

    public final String getAuctionId() {
        String strOptString = this.a.optString("auctionId", "");
        Intrinsics.checkNotNull(strOptString);
        if (strOptString.length() > 0) {
            return strOptString;
        }
        return null;
    }

    public final String getCountry() {
        String strOptString = this.a.optString("country", "");
        Intrinsics.checkNotNull(strOptString);
        if (strOptString.length() > 0) {
            return strOptString;
        }
        return null;
    }

    public final String getCreativeId() {
        String strOptString = this.a.optString("creativeId", "");
        Intrinsics.checkNotNull(strOptString);
        if (strOptString.length() > 0) {
            return strOptString;
        }
        return null;
    }

    public final String getEncryptedCPM() {
        String strOptString = this.a.optString("encryptedCPM", "");
        Intrinsics.checkNotNull(strOptString);
        if (strOptString.length() > 0) {
            return strOptString;
        }
        return null;
    }

    public final String getInstanceId() {
        String strOptString = this.a.optString("instanceId", "");
        Intrinsics.checkNotNull(strOptString);
        if (strOptString.length() > 0) {
            return strOptString;
        }
        return null;
    }

    public final String getInstanceName() {
        String strOptString = this.a.optString("instanceName", "");
        Intrinsics.checkNotNull(strOptString);
        if (strOptString.length() > 0) {
            return strOptString;
        }
        return null;
    }

    public final String getMediationAdUnitId() {
        String strOptString = this.a.optString("mediationAdUnitId", "");
        Intrinsics.checkNotNull(strOptString);
        if (strOptString.length() > 0) {
            return strOptString;
        }
        return null;
    }

    public final String getMediationAdUnitName() {
        String strOptString = this.a.optString("mediationAdUnitName", "");
        Intrinsics.checkNotNull(strOptString);
        if (strOptString.length() > 0) {
            return strOptString;
        }
        return null;
    }

    public final String getPlacement() {
        String strOptString = this.a.optString("placement", "");
        Intrinsics.checkNotNull(strOptString);
        if (strOptString.length() > 0) {
            return strOptString;
        }
        return null;
    }

    public final String getPrecision() {
        String strOptString = this.a.optString("precision", "");
        Intrinsics.checkNotNull(strOptString);
        if (strOptString.length() > 0) {
            return strOptString;
        }
        return null;
    }

    public final Double getRevenue() {
        double dOptDouble = this.a.optDouble("revenue");
        Double dValueOf = Double.valueOf(dOptDouble);
        if (Double.isNaN(dOptDouble)) {
            return null;
        }
        return dValueOf;
    }

    public final String getSegmentName() {
        String strOptString = this.a.optString("segmentName", "");
        Intrinsics.checkNotNull(strOptString);
        if (strOptString.length() > 0) {
            return strOptString;
        }
        return null;
    }

    public String toString() {
        LevelPlayImpressionData levelPlayImpressionData;
        String str;
        String auctionId = getAuctionId();
        String mediationAdUnitName = getMediationAdUnitName();
        String mediationAdUnitId = getMediationAdUnitId();
        String adFormat = getAdFormat();
        String country = getCountry();
        String ab = getAb();
        String segmentName = getSegmentName();
        String placement = getPlacement();
        String adNetwork = getAdNetwork();
        String instanceName = getInstanceName();
        String instanceId = getInstanceId();
        if (getRevenue() == null) {
            str = null;
            levelPlayImpressionData = this;
        } else {
            levelPlayImpressionData = this;
            str = levelPlayImpressionData.b.format(levelPlayImpressionData.getRevenue());
        }
        return "auctionId: '" + auctionId + "', mediationAdUnitName: '" + mediationAdUnitName + "', mediationAdUnitId: '" + mediationAdUnitId + "', adFormat: '" + adFormat + "', country: '" + country + "', ab: '" + ab + "', segmentName: '" + segmentName + "', placement: '" + placement + "', adNetwork: '" + adNetwork + "', instanceName: '" + instanceName + "', instanceId: '" + instanceId + "', revenue: " + str + ", precision: '" + levelPlayImpressionData.getPrecision() + "', encryptedCPM: '" + levelPlayImpressionData.getEncryptedCPM() + "', creativeId: '" + levelPlayImpressionData.getCreativeId() + "'";
    }
}
