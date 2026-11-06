package ads_mobile_sdk;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.common.AdSourceResponseInfo;
import com.google.android.libraries.ads.mobile.sdk.common.MediationAdError;
import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.ironsource.C3522b4;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class pb {
    public final ex0 a;
    public String b;
    public zy c;
    public JsonObject d;
    public AdSourceResponseInfo e;
    public List f;
    public final Map g;

    public pb(ex0 flags) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = flags;
        this.f = Collections.synchronizedList(new ArrayList());
        this.g = Collections.synchronizedMap(new LinkedHashMap());
    }

    public final void a(i2 i2Var, int i) {
        String str = i2Var.d;
        if (str.length() == 0) {
            return;
        }
        Map adapterKeyToAdapterResponseInfo = this.g;
        Intrinsics.checkNotNullExpressionValue(adapterKeyToAdapterResponseInfo, "adapterKeyToAdapterResponseInfo");
        if (adapterKeyToAdapterResponseInfo.containsKey(str)) {
            return;
        }
        String str2 = i2Var.f;
        ds1 ds1Var = ds1.a;
        AdSourceResponseInfo adSourceResponseInfo = new AdSourceResponseInfo(str2, 0L, null, ds1.b(i2Var.c), i2Var.h, i2Var.i, i2Var.j, i2Var.k);
        this.f.add(i, adSourceResponseInfo);
        Map adapterKeyToAdapterResponseInfo2 = this.g;
        Intrinsics.checkNotNullExpressionValue(adapterKeyToAdapterResponseInfo2, "adapterKeyToAdapterResponseInfo");
        adapterKeyToAdapterResponseInfo2.put(str, adSourceResponseInfo);
    }

    public final ResponseInfo a() {
        if (this.c == null) {
            return null;
        }
        AdSourceResponseInfo adSourceResponseInfo = this.e;
        String adapterClassName = adSourceResponseInfo != null ? adSourceResponseInfo.getAdapterClassName() : null;
        String str = this.b;
        Bundle bundleA = a(null);
        AdSourceResponseInfo adSourceResponseInfo2 = this.e;
        List adapterResponses = this.f;
        Intrinsics.checkNotNullExpressionValue(adapterResponses, "adapterResponses");
        return new ResponseInfo(adapterClassName, str, bundleA, adSourceResponseInfo2, adapterResponses);
    }

    public final Bundle a(JsonObject jsonObject) {
        zy zyVar = this.c;
        if (zyVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("commonConfiguration");
            zyVar = null;
        }
        JsonObject jsonObject2 = zyVar.q;
        JsonObject jsonObject3 = this.d;
        if (jsonObject3 == null) {
            jsonObject3 = new JsonObject();
        }
        JsonObject jsonObjectDeepCopy = jsonObject2.deepCopy();
        for (Map.Entry<String, JsonElement> entry : jsonObject3.entrySet()) {
            Intrinsics.checkNotNull(entry);
            jsonObjectDeepCopy.add(entry.getKey(), entry.getValue());
        }
        if (jsonObject != null) {
            ex0 ex0Var = this.a;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:enable_ad_specific_response_info_extras:enabled", C3522b4.i.W);
            if (((Boolean) ex0Var.a("gads:enable_ad_specific_response_info_extras:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                for (Map.Entry<String, JsonElement> entry2 : jsonObject.entrySet()) {
                    Intrinsics.checkNotNull(entry2);
                    jsonObjectDeepCopy.add(entry2.getKey(), entry2.getValue());
                }
            }
        }
        ds1 ds1Var = ds1.a;
        Intrinsics.checkNotNull(jsonObjectDeepCopy);
        Bundle bundleB = ds1.b(jsonObjectDeepCopy);
        if (bundleB.containsKey("ad_value") && (bundleB.get("ad_value") instanceof Integer)) {
            bundleB.putDouble("ad_value", bundleB.getInt("ad_value"));
        }
        return bundleB;
    }

    public final void a(i2 i2Var, long j, MediationAdError mediationAdError) {
        String str = i2Var.d;
        AdSourceResponseInfo adSourceResponseInfo = (AdSourceResponseInfo) this.g.get(str);
        if (adSourceResponseInfo == null) {
            return;
        }
        AdSourceResponseInfo adSourceResponseInfo2 = new AdSourceResponseInfo(adSourceResponseInfo.getAdapterClassName(), Duration.m2881getInWholeMillisecondsimpl(j), mediationAdError, adSourceResponseInfo.getCredentials(), adSourceResponseInfo.getName(), adSourceResponseInfo.getId(), adSourceResponseInfo.getInstanceName(), adSourceResponseInfo.getInstanceId());
        Map adapterKeyToAdapterResponseInfo = this.g;
        Intrinsics.checkNotNullExpressionValue(adapterKeyToAdapterResponseInfo, "adapterKeyToAdapterResponseInfo");
        adapterKeyToAdapterResponseInfo.put(str, adSourceResponseInfo2);
        this.f.set(this.f.indexOf(adSourceResponseInfo), adSourceResponseInfo2);
    }
}
