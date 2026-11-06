package com.ironsource.sdk.controller;

import com.ironsource.C3522b4;
import com.ironsource.C3525b7;
import com.ironsource.C3551cf;
import com.ironsource.C3813r4;
import com.ironsource.InterfaceC3817r8;
import com.ironsource.O3;
import com.ironsource.P3;
import com.ironsource.Pb;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.sdk.utils.SDKUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class FeaturesManager {
    private static volatile FeaturesManager d = null;
    private static final String e = "debugMode";
    private Map<String, ?> a;
    private final ArrayList<String> b = new a();
    private InterfaceC3817r8 c = Pb.k0().t();

    public class a extends ArrayList<String> {
        public a() {
            add(C3522b4.d.f);
            add(C3522b4.d.e);
            add(C3522b4.d.g);
            add(C3522b4.d.h);
            add(C3522b4.d.i);
            add(C3522b4.d.j);
            add(C3522b4.d.k);
            add(C3522b4.d.l);
            add(C3522b4.d.m);
        }
    }

    private FeaturesManager() {
        if (d != null) {
            throw new RuntimeException("Use getInstance() method to get the single instance of this class.");
        }
        this.a = new HashMap();
    }

    public static FeaturesManager getInstance() {
        if (d == null) {
            synchronized (FeaturesManager.class) {
                try {
                    if (d == null) {
                        d = new FeaturesManager();
                    }
                } finally {
                }
            }
        }
        return d;
    }

    public ArrayList<String> a() {
        return new ArrayList<>(this.b);
    }

    public JSONObject getDataManagerConfig() {
        JSONObject networkConfiguration = SDKUtils.getNetworkConfiguration();
        return networkConfiguration.has(C3522b4.a.d) ? networkConfiguration.optJSONObject(C3522b4.a.d) : new JSONObject();
    }

    public int getDebugMode() {
        Integer num = 0;
        try {
            if (this.a.containsKey("debugMode")) {
                num = (Integer) this.a.get("debugMode");
            }
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
        }
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public O3 getFeatureFlagCatchUrlError() {
        return new O3(SDKUtils.getNetworkConfiguration().optJSONObject(O3.a.c));
    }

    public P3 getFeatureFlagClickCheck() {
        return new P3(SDKUtils.getNetworkConfiguration());
    }

    public C3525b7 getFeatureFlagHealthCheck() {
        JSONObject jSONObjectA = this.c.a(C3522b4.a.r);
        return jSONObjectA != null ? new C3525b7(jSONObjectA) : new C3525b7(null);
    }

    public boolean getFeatureFlagLoadControllerAndPlayerFromBundle() {
        return SDKUtils.getNetworkFeatureConfiguration().optBoolean(C3522b4.a.w, false);
    }

    public int getInitRecoverTrials() {
        JSONObject jSONObjectOptJSONObject = SDKUtils.getNetworkConfiguration().optJSONObject("init");
        if (jSONObjectOptJSONObject != null) {
            return jSONObjectOptJSONObject.optInt(C3522b4.a.e, 0);
        }
        return 0;
    }

    public C3551cf getSessionHistoryConfig() {
        JSONObject networkConfiguration = SDKUtils.getNetworkConfiguration();
        return new C3551cf(networkConfiguration.has(C3522b4.a.s) ? networkConfiguration.optJSONObject(C3522b4.a.s) : new JSONObject());
    }

    public boolean getStopUseOnResumeAndPause() {
        return Boolean.TRUE.equals(this.c.c(C3522b4.a.u));
    }

    public void updateDebugConfigurations(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        this.a = map;
    }
}
