package com.unity3d.mediation;

import com.google.android.gms.ads.RequestConfiguration;
import com.ironsource.C3813r4;
import com.ironsource.C3939y2;
import com.ironsource.Db;
import com.ironsource.mediationsdk.d;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.Iterator;
import java.util.Map;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class LevelPlayAdInfo {
    private final String a;
    private final String b;
    private final String c;
    private final C3939y2 d;
    private final LevelPlayAdSize e;
    private final String f;
    private final Map<String, Object> g;

    public LevelPlayAdInfo(String adId, String adUnitId, String adFormat, C3939y2 c3939y2, LevelPlayAdSize levelPlayAdSize, String str, Map<String, ? extends Object> adapterData) {
        Intrinsics.checkNotNullParameter(adId, "adId");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Intrinsics.checkNotNullParameter(adapterData, "adapterData");
        this.a = adId;
        this.b = adUnitId;
        this.c = adFormat;
        this.d = c3939y2;
        this.e = levelPlayAdSize;
        this.f = str;
        this.g = adapterData;
    }

    private final String a() {
        return this.a;
    }

    private final String b() {
        return this.b;
    }

    private final String c() {
        return this.c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LevelPlayAdInfo copy$default(LevelPlayAdInfo levelPlayAdInfo, String str, String str2, String str3, C3939y2 c3939y2, LevelPlayAdSize levelPlayAdSize, String str4, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            str = levelPlayAdInfo.a;
        }
        if ((i & 2) != 0) {
            str2 = levelPlayAdInfo.b;
        }
        if ((i & 4) != 0) {
            str3 = levelPlayAdInfo.c;
        }
        if ((i & 8) != 0) {
            c3939y2 = levelPlayAdInfo.d;
        }
        if ((i & 16) != 0) {
            levelPlayAdSize = levelPlayAdInfo.e;
        }
        if ((i & 32) != 0) {
            str4 = levelPlayAdInfo.f;
        }
        if ((i & 64) != 0) {
            map = levelPlayAdInfo.g;
        }
        String str5 = str4;
        Map map2 = map;
        LevelPlayAdSize levelPlayAdSize2 = levelPlayAdSize;
        String str6 = str3;
        return levelPlayAdInfo.copy(str, str2, str6, c3939y2, levelPlayAdSize2, str5, map2);
    }

    private final C3939y2 d() {
        return this.d;
    }

    private final LevelPlayAdSize e() {
        return this.e;
    }

    private final String f() {
        return this.f;
    }

    private final Map<String, Object> g() {
        return this.g;
    }

    public final LevelPlayAdInfo copy(String adId, String adUnitId, String adFormat, C3939y2 c3939y2, LevelPlayAdSize levelPlayAdSize, String str, Map<String, ? extends Object> adapterData) {
        Intrinsics.checkNotNullParameter(adId, "adId");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Intrinsics.checkNotNullParameter(adapterData, "adapterData");
        return new LevelPlayAdInfo(adId, adUnitId, adFormat, c3939y2, levelPlayAdSize, str, adapterData);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LevelPlayAdInfo)) {
            return false;
        }
        LevelPlayAdInfo levelPlayAdInfo = (LevelPlayAdInfo) obj;
        return Intrinsics.areEqual(this.a, levelPlayAdInfo.a) && Intrinsics.areEqual(this.b, levelPlayAdInfo.b) && Intrinsics.areEqual(this.c, levelPlayAdInfo.c) && Intrinsics.areEqual(this.d, levelPlayAdInfo.d) && Intrinsics.areEqual(this.e, levelPlayAdInfo.e) && Intrinsics.areEqual(this.f, levelPlayAdInfo.f) && Intrinsics.areEqual(this.g, levelPlayAdInfo.g);
    }

    public final String getAdId() {
        return this.a;
    }

    public final LevelPlayAdSize getAdSize() {
        return this.e;
    }

    public final double getImpressionRevenue$mediationsdk_release() {
        JSONObject jSONObjectM;
        C3939y2 c3939y2 = this.d;
        Double dValueOf = (c3939y2 == null || (jSONObjectM = c3939y2.m()) == null) ? null : Double.valueOf(jSONObjectM.optDouble("revenue"));
        if (Intrinsics.areEqual(dValueOf, Double.NaN) || dValueOf == null) {
            return 0.0d;
        }
        return dValueOf.doubleValue();
    }

    public final String getPlacementName() {
        String str = this.f;
        return str == null ? "" : str;
    }

    public final String getPrecision() {
        Db dbD;
        String strC;
        C3939y2 c3939y2 = this.d;
        return (c3939y2 == null || (dbD = c3939y2.d()) == null || (strC = dbD.c()) == null) ? getImpressionPrecision$mediationsdk_release() : strC;
    }

    public final double getRevenue() {
        Db dbD;
        C3939y2 c3939y2 = this.d;
        return (c3939y2 == null || (dbD = c3939y2.d()) == null) ? getImpressionRevenue$mediationsdk_release() : dbD.d();
    }

    public int hashCode() {
        int iHashCode = ((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31;
        C3939y2 c3939y2 = this.d;
        int iHashCode2 = (iHashCode + (c3939y2 == null ? 0 : c3939y2.hashCode())) * 31;
        LevelPlayAdSize levelPlayAdSize = this.e;
        int iHashCode3 = (iHashCode2 + (levelPlayAdSize == null ? 0 : levelPlayAdSize.hashCode())) * 31;
        String str = this.f;
        return ((iHashCode3 + (str != null ? str.hashCode() : 0)) * 31) + this.g.hashCode();
    }

    public final JSONObject impressionData$mediationsdk_release() {
        JSONObject jSONObject;
        String str;
        JSONObject jSONObjectM;
        try {
            C3939y2 c3939y2 = this.d;
            if (c3939y2 == null || (jSONObjectM = c3939y2.m()) == null) {
                jSONObject = new JSONObject();
            } else {
                Iterator<String> itKeys = jSONObjectM.keys();
                Intrinsics.checkNotNullExpressionValue(itKeys, "keys(...)");
                jSONObject = new JSONObject(jSONObjectM, (String[]) SequencesKt___SequencesKt.toList(SequencesKt__SequencesKt.asSequence(itKeys)).toArray(new String[0]));
            }
        } catch (Exception e) {
            IronLog.INTERNAL.error("failed to copy impression JSON", e);
            C3813r4.d().a(e);
            jSONObject = new JSONObject();
        }
        try {
            String strOptString = jSONObject.optString("placement");
            Intrinsics.checkNotNull(strOptString);
            if (strOptString.length() > 0 && (str = this.f) != null) {
                jSONObject.put("placement", StringsKt__StringsJVMKt.replace$default(strOptString, d.r, str, false, 4, (Object) null));
            }
            if (getCreativeId().length() > 0) {
                jSONObject.put("creativeId", getCreativeId());
            }
        } catch (Exception e2) {
            IronLog.INTERNAL.error("failed to put impression values", e2);
            C3813r4.d().a(e2);
        }
        return jSONObject;
    }

    public String toString() {
        return "adId: " + getAdId() + ", adUnitId: " + getAdUnitId() + ", adUnitName: " + getAdUnitName() + ", adSize: " + this.e + ", adFormat: " + getAdFormat() + ", placementName: " + getPlacementName() + ", auctionId: " + getAuctionId() + ", country: " + getCountry() + ", ab: " + getAb() + ", segmentName: " + getSegmentName() + ", adNetwork: " + getAdNetwork() + ", instanceName: " + getInstanceName() + ", instanceId: " + getInstanceId() + ", revenue: " + getRevenue() + ", precision: " + getPrecision() + ", encryptedCPM: " + getEncryptedCPM() + ", creativeId: " + getCreativeId();
    }

    private final /* synthetic */ <T> T a(String str) {
        JSONObject jSONObjectM;
        C3939y2 c3939y2 = this.d;
        T t = (c3939y2 == null || (jSONObjectM = c3939y2.m()) == null) ? null : (T) jSONObjectM.opt(str);
        Intrinsics.reifiedOperationMarker(2, RequestConfiguration.MAX_AD_CONTENT_RATING_T);
        return t;
    }

    public /* synthetic */ LevelPlayAdInfo(String str, String str2, String str3, C3939y2 c3939y2, LevelPlayAdSize levelPlayAdSize, String str4, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i & 8) != 0 ? null : c3939y2, (i & 16) != 0 ? null : levelPlayAdSize, (i & 32) != 0 ? null : str4, (i & 64) != 0 ? MapsKt__MapsKt.emptyMap() : map);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LevelPlayAdInfo(LevelPlayAdInfo adInfo, String str) {
        this(adInfo.a, adInfo.b, adInfo.c, adInfo.d, adInfo.e, str, adInfo.g);
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
    }

    public final String getImpressionPrecision$mediationsdk_release() {
        JSONObject jSONObjectM;
        C3939y2 c3939y2 = this.d;
        Object objOpt = (c3939y2 == null || (jSONObjectM = c3939y2.m()) == null) ? null : jSONObjectM.opt("precision");
        String str = (String) (objOpt instanceof String ? objOpt : null);
        return str == null ? "" : str;
    }

    public final String getCreativeId() {
        JSONObject jSONObjectM;
        C3939y2 c3939y2 = this.d;
        Object objOpt = (c3939y2 == null || (jSONObjectM = c3939y2.m()) == null) ? null : jSONObjectM.opt("creativeId");
        if (!(objOpt instanceof String)) {
            objOpt = null;
        }
        String str = (String) objOpt;
        if (str != null) {
            return str;
        }
        Object obj = this.g.get("creativeId");
        String str2 = obj instanceof String ? (String) obj : null;
        return str2 == null ? "" : str2;
    }

    public final String getEncryptedCPM() {
        JSONObject jSONObjectM;
        C3939y2 c3939y2 = this.d;
        Object objOpt = (c3939y2 == null || (jSONObjectM = c3939y2.m()) == null) ? null : jSONObjectM.opt("encryptedCPM");
        String str = (String) (objOpt instanceof String ? objOpt : null);
        return str == null ? "" : str;
    }

    public final String getInstanceId() {
        JSONObject jSONObjectM;
        C3939y2 c3939y2 = this.d;
        Object objOpt = (c3939y2 == null || (jSONObjectM = c3939y2.m()) == null) ? null : jSONObjectM.opt("instanceId");
        String str = (String) (objOpt instanceof String ? objOpt : null);
        return str == null ? "" : str;
    }

    public final String getInstanceName() {
        JSONObject jSONObjectM;
        C3939y2 c3939y2 = this.d;
        Object objOpt = (c3939y2 == null || (jSONObjectM = c3939y2.m()) == null) ? null : jSONObjectM.opt("instanceName");
        String str = (String) (objOpt instanceof String ? objOpt : null);
        return str == null ? "" : str;
    }

    public final String getAdNetwork() {
        JSONObject jSONObjectM;
        C3939y2 c3939y2 = this.d;
        Object objOpt = (c3939y2 == null || (jSONObjectM = c3939y2.m()) == null) ? null : jSONObjectM.opt("adNetwork");
        String str = (String) (objOpt instanceof String ? objOpt : null);
        return str == null ? "" : str;
    }

    public final String getSegmentName() {
        JSONObject jSONObjectM;
        C3939y2 c3939y2 = this.d;
        Object objOpt = (c3939y2 == null || (jSONObjectM = c3939y2.m()) == null) ? null : jSONObjectM.opt("segmentName");
        String str = (String) (objOpt instanceof String ? objOpt : null);
        return str == null ? "" : str;
    }

    public final String getAb() {
        JSONObject jSONObjectM;
        C3939y2 c3939y2 = this.d;
        Object objOpt = (c3939y2 == null || (jSONObjectM = c3939y2.m()) == null) ? null : jSONObjectM.opt("ab");
        String str = (String) (objOpt instanceof String ? objOpt : null);
        return str == null ? "" : str;
    }

    public final String getCountry() {
        JSONObject jSONObjectM;
        C3939y2 c3939y2 = this.d;
        Object objOpt = (c3939y2 == null || (jSONObjectM = c3939y2.m()) == null) ? null : jSONObjectM.opt("country");
        String str = (String) (objOpt instanceof String ? objOpt : null);
        return str == null ? "" : str;
    }

    public final String getAuctionId() {
        JSONObject jSONObjectM;
        C3939y2 c3939y2 = this.d;
        Object objOpt = (c3939y2 == null || (jSONObjectM = c3939y2.m()) == null) ? null : jSONObjectM.opt("auctionId");
        String str = (String) (objOpt instanceof String ? objOpt : null);
        return str == null ? "" : str;
    }

    public final String getAdFormat() {
        JSONObject jSONObjectM;
        C3939y2 c3939y2 = this.d;
        Object objOpt = (c3939y2 == null || (jSONObjectM = c3939y2.m()) == null) ? null : jSONObjectM.opt("adFormat");
        String str = (String) (objOpt instanceof String ? objOpt : null);
        return str == null ? this.c : str;
    }

    public final String getAdUnitName() {
        JSONObject jSONObjectM;
        C3939y2 c3939y2 = this.d;
        Object objOpt = (c3939y2 == null || (jSONObjectM = c3939y2.m()) == null) ? null : jSONObjectM.opt("mediationAdUnitName");
        String str = (String) (objOpt instanceof String ? objOpt : null);
        return str == null ? "" : str;
    }

    public final String getAdUnitId() {
        JSONObject jSONObjectM;
        C3939y2 c3939y2 = this.d;
        Object objOpt = (c3939y2 == null || (jSONObjectM = c3939y2.m()) == null) ? null : jSONObjectM.opt("mediationAdUnitId");
        String str = (String) (objOpt instanceof String ? objOpt : null);
        return str == null ? this.b : str;
    }
}
