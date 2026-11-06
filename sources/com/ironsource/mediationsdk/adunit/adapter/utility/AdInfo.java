package com.ironsource.mediationsdk.adunit.adapter.utility;

import com.ironsource.C3545c9;
import com.ironsource.C3813r4;
import com.ironsource.Db;
import com.ironsource.mediationsdk.logger.IronLog;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class AdInfo {
    private final C3545c9 impressionData;
    private final Db loadArmData;

    public AdInfo(C3545c9 c3545c9, Db db) {
        this.impressionData = c3545c9;
        this.loadArmData = db;
    }

    public final String getAb() {
        C3545c9 c3545c9 = this.impressionData;
        return (c3545c9 == null || c3545c9.a() == null) ? "" : this.impressionData.a();
    }

    public final String getAdNetwork() {
        C3545c9 c3545c9 = this.impressionData;
        return (c3545c9 == null || c3545c9.c() == null) ? "" : this.impressionData.c();
    }

    public final String getAuctionId() {
        C3545c9 c3545c9 = this.impressionData;
        return (c3545c9 == null || c3545c9.e() == null) ? "" : this.impressionData.e();
    }

    public final String getCountry() {
        C3545c9 c3545c9 = this.impressionData;
        return (c3545c9 == null || c3545c9.f() == null) ? "" : this.impressionData.f();
    }

    public final String getEncryptedCPM() {
        C3545c9 c3545c9 = this.impressionData;
        return (c3545c9 == null || c3545c9.h() == null) ? "" : this.impressionData.h();
    }

    public final String getInstanceId() {
        C3545c9 c3545c9 = this.impressionData;
        return (c3545c9 == null || c3545c9.i() == null) ? "" : this.impressionData.i();
    }

    public final String getInstanceName() {
        C3545c9 c3545c9 = this.impressionData;
        return (c3545c9 == null || c3545c9.j() == null) ? "" : this.impressionData.j();
    }

    public final String getPrecision() {
        Db db = this.loadArmData;
        if (db != null) {
            return db.c();
        }
        C3545c9 c3545c9 = this.impressionData;
        return (c3545c9 == null || c3545c9.n() == null) ? "" : this.impressionData.n();
    }

    public final double getRevenue() {
        Db db = this.loadArmData;
        if (db != null) {
            return db.d();
        }
        C3545c9 c3545c9 = this.impressionData;
        if (c3545c9 == null) {
            return 0.0d;
        }
        c3545c9.o();
        return this.impressionData.o();
    }

    public final String getSegmentName() {
        C3545c9 c3545c9 = this.impressionData;
        return (c3545c9 == null || c3545c9.p() == null) ? "" : this.impressionData.p();
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("auctionId", getAuctionId());
            jSONObject.put("country", getCountry());
            jSONObject.put("ab", getAb());
            jSONObject.put("segmentName", getSegmentName());
            jSONObject.put("adNetwork", getAdNetwork());
            jSONObject.put("instanceName", getInstanceName());
            jSONObject.put("instanceId", getInstanceId());
            jSONObject.put("revenue", getRevenue());
            jSONObject.put("precision", getPrecision());
            jSONObject.put("encryptedCPM", getEncryptedCPM());
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error("error while parsing ad info " + e.getMessage());
        }
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }
}
