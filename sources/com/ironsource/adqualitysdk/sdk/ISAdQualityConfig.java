package com.ironsource.adqualitysdk.sdk;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.i.AbstractC0182;
import com.ironsource.adqualitysdk.sdk.i.AbstractC0206;
import com.ironsource.adqualitysdk.sdk.i.AbstractC0611;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public class ISAdQualityConfig {

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public final HashMap f4;

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public final ISAdQualityDeviceIdType f5;

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final boolean f6;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final boolean f7;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final String f8;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final ISAdQualityLogLevel f9;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final HashSet f10;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final boolean f11;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final boolean f12;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final boolean f13;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String f14;

    public ISAdQualityConfig(String str, boolean z, boolean z2, boolean z3, ISAdQualityLogLevel iSAdQualityLogLevel, HashSet hashSet, String str2, boolean z4, boolean z5, ISAdQualityDeviceIdType iSAdQualityDeviceIdType, HashMap map) {
        this.f14 = str;
        this.f13 = z;
        this.f12 = z2;
        this.f11 = z3;
        this.f9 = iSAdQualityLogLevel;
        this.f10 = hashSet;
        this.f8 = str2;
        this.f7 = z4;
        this.f6 = z5;
        this.f5 = iSAdQualityDeviceIdType;
        this.f4 = map;
    }

    @Deprecated
    public static ISAdQualityConfig merge(ISAdQualityConfig iSAdQualityConfig, ISAdQualityConfig iSAdQualityConfig2) {
        Builder builder = new Builder();
        if (iSAdQualityConfig.f13) {
            builder.setUserId(iSAdQualityConfig.f14);
        } else if (iSAdQualityConfig2.f13) {
            builder.setUserId(iSAdQualityConfig2.f14);
        }
        if (iSAdQualityConfig.f11) {
            builder.setTestMode(iSAdQualityConfig.f12);
        } else if (iSAdQualityConfig2.f11) {
            builder.setTestMode(iSAdQualityConfig2.f12);
        }
        if (iSAdQualityConfig.f6) {
            builder.setCoppa(iSAdQualityConfig.f7);
        } else if (iSAdQualityConfig2.f6) {
            builder.setCoppa(iSAdQualityConfig2.f7);
        }
        ISAdQualityLogLevel iSAdQualityLogLevel = iSAdQualityConfig.f9;
        if (iSAdQualityLogLevel == null) {
            iSAdQualityLogLevel = iSAdQualityConfig2.f9;
        }
        builder.setLogLevel(iSAdQualityLogLevel);
        Iterator it = iSAdQualityConfig.f10.iterator();
        while (it.hasNext()) {
            builder.addAdQualityInitListener((ISAdQualityInitListener) it.next());
        }
        Iterator it2 = iSAdQualityConfig2.f10.iterator();
        while (it2.hasNext()) {
            builder.addAdQualityInitListener((ISAdQualityInitListener) it2.next());
        }
        String str = iSAdQualityConfig.f8;
        if (str != null) {
            builder.setInitializationSource(str);
        } else {
            String str2 = iSAdQualityConfig2.f8;
            if (str2 != null) {
                builder.setInitializationSource(str2);
            }
        }
        ISAdQualityDeviceIdType iSAdQualityDeviceIdType = iSAdQualityConfig.f5;
        if (iSAdQualityDeviceIdType == null) {
            iSAdQualityDeviceIdType = iSAdQualityConfig2.f5;
        }
        builder.setDeviceIdType(iSAdQualityDeviceIdType);
        HashMap map = new HashMap(iSAdQualityConfig2.f4);
        map.putAll(iSAdQualityConfig.f4);
        for (Map.Entry entry : map.entrySet()) {
            builder.setMetaData((String) entry.getKey(), (String) entry.getValue());
        }
        return builder.build();
    }

    @Deprecated
    public Set<ISAdQualityInitListener> getAdQualityInitListeners() {
        return this.f10;
    }

    @Deprecated
    public boolean getCoppa() {
        return this.f7;
    }

    @Deprecated
    public ISAdQualityDeviceIdType getDeviceIdType() {
        return this.f5;
    }

    @Deprecated
    public String getInitializationSource() {
        return this.f8;
    }

    @Deprecated
    public ISAdQualityLogLevel getLogLevel() {
        return this.f9;
    }

    @Deprecated
    public Map<String, String> getMetaData() {
        return this.f4;
    }

    @Deprecated
    public String getUserId() {
        return this.f14;
    }

    @Deprecated
    public boolean isTestMode() {
        return this.f12;
    }

    @Deprecated
    public boolean isUserIdSet() {
        return this.f13;
    }

    @Deprecated
    public static class Builder {

        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public String f25 = null;

        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public boolean f24 = false;

        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        public boolean f23 = false;

        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        public boolean f22 = false;

        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public ISAdQualityLogLevel f21 = ISAdQualityLogLevel.INFO;

        /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
        public final HashSet f20 = new HashSet();

        /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
        public String f19 = null;

        /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
        public boolean f18 = false;

        /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
        public boolean f17 = false;

        /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
        public ISAdQualityDeviceIdType f16 = ISAdQualityDeviceIdType.NONE;

        /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
        public final HashMap f15 = new HashMap();

        @Deprecated
        public Builder() {
        }

        @Deprecated
        public Builder addAdQualityInitListener(ISAdQualityInitListener iSAdQualityInitListener) {
            this.f20.add(iSAdQualityInitListener);
            return this;
        }

        @Deprecated
        public ISAdQualityConfig build() {
            return new ISAdQualityConfig(this.f25, this.f24, this.f23, this.f22, this.f21, this.f20, this.f19, this.f18, this.f17, this.f16, this.f15);
        }

        @Deprecated
        public Builder removeAdQualityInitListener(ISAdQualityInitListener iSAdQualityInitListener) {
            this.f20.remove(iSAdQualityInitListener);
            return this;
        }

        @Deprecated
        public Builder setAdQualityInitListener(ISAdQualityInitListener iSAdQualityInitListener) {
            return addAdQualityInitListener(iSAdQualityInitListener);
        }

        @Deprecated
        public Builder setCoppa(boolean z) {
            this.f18 = z;
            this.f17 = true;
            return this;
        }

        @Deprecated
        public Builder setDeviceIdType(ISAdQualityDeviceIdType iSAdQualityDeviceIdType) {
            this.f16 = iSAdQualityDeviceIdType;
            return this;
        }

        @Deprecated
        public Builder setInitializationSource(String str) {
            if (AbstractC0611.m1377(str, 20)) {
                this.f19 = str;
                return this;
            }
            AbstractC0182.m1149("ISAdQualityConfig", "setInitializationSource( " + str + " ) init source must have length of 1-20");
            return this;
        }

        @Deprecated
        public Builder setLogLevel(ISAdQualityLogLevel iSAdQualityLogLevel) {
            this.f21 = iSAdQualityLogLevel;
            return this;
        }

        @Deprecated
        public Builder setMetaData(JSONObject jSONObject) {
            if (jSONObject != null) {
                for (int i = 0; i < jSONObject.names().length(); i++) {
                    try {
                        String string = jSONObject.names().getString(i);
                        Object objOpt = jSONObject.opt(string);
                        if (objOpt instanceof String) {
                            setMetaData(string, (String) objOpt);
                        } else {
                            AbstractC0182.m1149("ISAdQualityConfig", "setMetaData( " + string + " , " + objOpt + " ) value must be a string");
                        }
                    } catch (Exception unused) {
                    }
                }
            }
            return this;
        }

        @Deprecated
        public Builder setTestMode(boolean z) {
            this.f23 = z;
            this.f22 = true;
            return this;
        }

        @Deprecated
        public Builder setUserId(String str) {
            this.f25 = str;
            this.f24 = true;
            return this;
        }

        @Deprecated
        public Builder setMetaData(String str, String str2) {
            try {
                if (!TextUtils.isEmpty(str2)) {
                    if (!AbstractC0206.f1368.contains(str)) {
                        if (AbstractC0206.m1184(this.f15, str)) {
                            AbstractC0182.m1149("ISAdQualityConfig", "setMetaData( " + str + " , " + str2 + " ) limited to 5 meta data values. Ignoring meta data value.");
                            return this;
                        }
                        if (!AbstractC0611.m1377(str, 64) || !AbstractC0611.m1377(str2, 64)) {
                            AbstractC0182.m1149("ISAdQualityConfig", "setMetaData( " + str + " , " + str2 + " ) the length of both the key and the value should be between 1 and 64 characters.");
                            return this;
                        }
                    }
                    this.f15.put(str, str2);
                }
            } catch (Exception unused) {
            }
            return this;
        }
    }
}
