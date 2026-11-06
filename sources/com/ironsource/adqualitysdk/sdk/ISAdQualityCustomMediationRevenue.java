package com.ironsource.adqualitysdk.sdk;

import com.ironsource.adqualitysdk.sdk.i.AbstractC0962;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public class ISAdQualityCustomMediationRevenue {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final JSONObject f26;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final String f27;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final double f28;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final ISAdQualityAdType f29;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final ISAdQualityMediationNetwork f30;

    @Deprecated
    public static class Builder {

        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public JSONObject f31;

        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        public String f32;

        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        public double f33;

        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public ISAdQualityMediationNetwork f35 = ISAdQualityMediationNetwork.UNKNOWN;

        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public ISAdQualityAdType f34 = ISAdQualityAdType.UNKNOWN;

        @Deprecated
        public Builder() {
        }

        @Deprecated
        public ISAdQualityCustomMediationRevenue build() {
            return new ISAdQualityCustomMediationRevenue(this.f35, this.f34, this.f33, this.f32, this.f31);
        }

        @Deprecated
        public Builder setAdType(ISAdQualityAdType iSAdQualityAdType) {
            this.f34 = iSAdQualityAdType;
            return this;
        }

        @Deprecated
        public Builder setCustomData(JSONObject jSONObject) {
            if (jSONObject != null) {
                this.f31 = AbstractC0962.m1573(jSONObject, false);
            }
            return this;
        }

        @Deprecated
        public Builder setMediationNetwork(ISAdQualityMediationNetwork iSAdQualityMediationNetwork) {
            this.f35 = iSAdQualityMediationNetwork;
            return this;
        }

        @Deprecated
        public Builder setPlacement(String str) {
            this.f32 = str;
            return this;
        }

        @Deprecated
        public Builder setRevenue(double d) {
            this.f33 = d;
            return this;
        }
    }

    public ISAdQualityCustomMediationRevenue(ISAdQualityMediationNetwork iSAdQualityMediationNetwork, ISAdQualityAdType iSAdQualityAdType, double d, String str, JSONObject jSONObject) {
        this.f30 = iSAdQualityMediationNetwork;
        this.f29 = iSAdQualityAdType;
        this.f28 = d;
        this.f27 = str;
        this.f26 = jSONObject;
    }

    @Deprecated
    public ISAdQualityAdType getAdType() {
        return this.f29;
    }

    @Deprecated
    public JSONObject getCustomData() {
        return this.f26;
    }

    @Deprecated
    public ISAdQualityMediationNetwork getMediationNetwork() {
        return this.f30;
    }

    @Deprecated
    public String getPlacement() {
        return this.f27;
    }

    @Deprecated
    public double getRevenue() {
        return this.f28;
    }
}
