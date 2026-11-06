package com.ironsource;

import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.unity3d.mediation.LevelPlay;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class Ec {
    private final String a;
    private final String b;
    private final String c;
    private final String d;
    private final String e;
    private final JSONObject f;
    private final Map<String, JSONObject> g;
    private final String h;
    private final String i;
    private final boolean j;
    private Ec k;
    private final Lazy l;

    public Ec(String providerName, JSONObject networkSettings) {
        JSONObject jSONObject;
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        Intrinsics.checkNotNullParameter(networkSettings, "networkSettings");
        this.a = providerName;
        this.b = providerName;
        String strOptString = networkSettings.optString(Fc.d, providerName);
        Intrinsics.checkNotNullExpressionValue(strOptString, "optString(...)");
        this.c = strOptString;
        String strOptString2 = networkSettings.optString(Fc.f, strOptString);
        Intrinsics.checkNotNullExpressionValue(strOptString2, "optString(...)");
        this.d = strOptString2;
        Object objOpt = networkSettings.opt("providerNetworkKey");
        this.e = objOpt instanceof String ? (String) objOpt : null;
        this.f = networkSettings.optJSONObject("application");
        LevelPlay.AdFormat[] adFormatArrValues = LevelPlay.AdFormat.values();
        ArrayList arrayList = new ArrayList(adFormatArrValues.length);
        for (LevelPlay.AdFormat adFormat : adFormatArrValues) {
            arrayList.add(If.a(adFormat));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10)), 16));
        for (Object obj : arrayList) {
            String str = (String) obj;
            JSONObject jSONObjectOptJSONObject = networkSettings.optJSONObject("adFormats");
            if (jSONObjectOptJSONObject == null || (jSONObject = jSONObjectOptJSONObject.optJSONObject(str)) == null) {
                jSONObject = new JSONObject();
            }
            linkedHashMap.put(obj, jSONObject);
        }
        this.g = linkedHashMap;
        String strOptString3 = networkSettings.optString("spId", "0");
        Intrinsics.checkNotNullExpressionValue(strOptString3, "optString(...)");
        this.h = strOptString3;
        String strOptString4 = networkSettings.optString(Fc.a);
        Intrinsics.checkNotNullExpressionValue(strOptString4, "optString(...)");
        this.i = strOptString4;
        this.j = networkSettings.optBoolean(Fc.c, false);
        this.l = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.Ec$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Ec.a(this.f$0);
            }
        });
    }

    public final Map<String, JSONObject> a() {
        return this.g;
    }

    public final String b() {
        return this.i;
    }

    public final JSONObject c() {
        return this.f;
    }

    public final JSONObject d() {
        JSONObject jSONObjectB = IronSourceUtils.b(this.g.get("banner"), this.f);
        Intrinsics.checkNotNullExpressionValue(jSONObjectB, "mergeJsons(...)");
        return jSONObjectB;
    }

    public final JSONObject e() {
        JSONObject jSONObjectB = IronSourceUtils.b(this.g.get("interstitial"), this.f);
        Intrinsics.checkNotNullExpressionValue(jSONObjectB, "mergeJsons(...)");
        return jSONObjectB;
    }

    public final NetworkSettings f() {
        return (NetworkSettings) this.l.getValue();
    }

    public final JSONObject g() {
        JSONObject jSONObjectB = IronSourceUtils.b(this.g.get("nativeAd"), this.f);
        Intrinsics.checkNotNullExpressionValue(jSONObjectB, "mergeJsons(...)");
        return jSONObjectB;
    }

    public final String h() {
        return this.d;
    }

    public final String i() {
        return this.b;
    }

    public final String j() {
        return this.a;
    }

    public final String k() {
        return this.e;
    }

    public final String l() {
        return this.c;
    }

    public final JSONObject m() {
        JSONObject jSONObjectB = IronSourceUtils.b(this.g.get("rewarded"), this.f);
        Intrinsics.checkNotNullExpressionValue(jSONObjectB, "mergeJsons(...)");
        return jSONObjectB;
    }

    public final String n() {
        return this.h;
    }

    public final boolean o() {
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NetworkSettings a(Ec ec) {
        String str = ec.a;
        String str2 = ec.c;
        String str3 = ec.d;
        String str4 = ec.e;
        JSONObject jSONObject = ec.f;
        Ec ec2 = ec.k;
        JSONObject jSONObjectB = IronSourceUtils.b(jSONObject, ec2 != null ? ec2.f : null);
        JSONObject jSONObjectM = ec.m();
        Ec ec3 = ec.k;
        JSONObject jSONObjectB2 = IronSourceUtils.b(jSONObjectM, ec3 != null ? ec3.m() : null);
        JSONObject jSONObjectE = ec.e();
        Ec ec4 = ec.k;
        JSONObject jSONObjectB3 = IronSourceUtils.b(jSONObjectE, ec4 != null ? ec4.e() : null);
        JSONObject jSONObjectD = ec.d();
        Ec ec5 = ec.k;
        JSONObject jSONObjectB4 = IronSourceUtils.b(jSONObjectD, ec5 != null ? ec5.d() : null);
        JSONObject jSONObjectG = ec.g();
        Ec ec6 = ec.k;
        NetworkSettings networkSettings = new NetworkSettings(str, str2, str3, str4, jSONObjectB, jSONObjectB2, jSONObjectB3, jSONObjectB4, IronSourceUtils.b(jSONObjectG, ec6 != null ? ec6.g() : null));
        networkSettings.setIsMultipleInstances(ec.j);
        networkSettings.setSubProviderId(ec.h);
        networkSettings.setAdSourceNameForEvents(ec.i);
        return networkSettings;
    }

    public final void b(Ec ec) {
        this.k = ec;
    }
}
