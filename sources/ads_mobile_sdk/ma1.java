package ads_mobile_sdk;

import android.util.Base64;
import android.util.Log;
import com.google.common.io.BaseEncoding;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.ironsource.C3522b4;
import com.ironsource.R6;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: loaded from: classes.dex */
public final class ma1 {
    public static final ma1 a = new ma1();

    public static ts a(JsonObject jsonObject, String str, String str2) {
        try {
            if (!StringsKt__StringsJVMKt.equals(ds1.a(jsonObject, R6.H, ""), str2, true)) {
                return null;
            }
            if (f01.a(2, "GoogleMobileAds")) {
                for (String str3 : f01.a().split("Adapter settings from permission set: " + jsonObject)) {
                    Log.v("GoogleMobileAds", Thread.currentThread().getName() + ": " + str3);
                }
            }
            ss ssVarY = ts.y();
            Intrinsics.checkNotNullExpressionValue(ssVarY, "newBuilder(...)");
            vs vsVarA = us.a(ssVarY);
            vsVarA.a(str);
            String lowerCase = ds1.a(jsonObject, R6.H, "").toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            vsVarA.b(lowerCase);
            vsVarA.b(ds1.a(jsonObject, "collect_secure_signals", false));
            vsVarA.a(ds1.a(jsonObject, "collect_secure_signals_on_full_app", false));
            no0 no0VarB = vsVarA.b();
            JsonElement jsonElement = jsonObject.get("data");
            JsonObject asJsonObject = jsonElement != null ? jsonElement.getAsJsonObject() : null;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (asJsonObject != null) {
                for (Map.Entry<String, JsonElement> entry : asJsonObject.entrySet()) {
                    Intrinsics.checkNotNull(entry);
                    String key = entry.getKey();
                    JsonElement value = entry.getValue();
                    Intrinsics.checkNotNull(key);
                    Intrinsics.checkNotNull(value);
                    Pair pair = new Pair(key, value.getAsString());
                    linkedHashMap.put(pair.getFirst(), pair.getSecond());
                }
            }
            vsVarA.a(no0VarB, linkedHashMap);
            return vsVarA.a();
        } catch (Exception e) {
            xs3.a(e);
            return null;
        }
    }

    public static Pair b(JsonObject jsonObject) {
        ds1 ds1Var = ds1.a;
        try {
            if (f01.a(2, "GoogleMobileAds")) {
                for (String str : f01.a().split("AppSettings MediationConfig for request signals: " + jsonObject)) {
                    Log.v("GoogleMobileAds", Thread.currentThread().getName() + ": " + str);
                }
            }
            String strA = ds1.a(jsonObject, "format", "");
            Locale locale = Locale.ROOT;
            String lowerCase = strA.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            String lowerCase2 = ds1.a(jsonObject, "ad_unit_id", "").toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
            JsonElement jsonElement = jsonObject.get("request_signals");
            if (lowerCase.length() != 0 && lowerCase2.length() != 0 && jsonElement != null) {
                return new Pair(lowerCase2 + "," + lowerCase, jsonElement.toString());
            }
            return null;
        } catch (Exception e) {
            xs3.a(e);
            return null;
        }
    }

    public static hc c(JsonObject jsonObject) {
        gc gcVarY = hc.y();
        Intrinsics.checkNotNullExpressionValue(gcVarY, "newBuilder(...)");
        jc jcVarA = ic.a(gcVarY);
        if (f01.a(2, "GoogleMobileAds")) {
            for (String str : f01.a().split("AdUnitPatterns: " + jsonObject)) {
                Log.v("GoogleMobileAds", Thread.currentThread().getName() + ": " + str);
            }
        }
        lo0 lo0VarC = jcVarA.c();
        ds1 ds1Var = ds1.a;
        JsonArray asJsonArray = jsonObject.getAsJsonArray("including");
        ArrayList arrayList = new ArrayList();
        int i = 0;
        if (asJsonArray != null) {
            int i2 = 0;
            for (JsonElement jsonElement : asJsonArray) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                JsonElement jsonElement2 = jsonElement;
                Intrinsics.checkNotNull(jsonElement2);
                String asString = jsonElement2.getAsString();
                if (asString != null) {
                    arrayList.add(asString);
                }
                i2 = i3;
            }
        }
        jcVarA.b(lo0VarC, arrayList);
        lo0 lo0VarB = jcVarA.b();
        ds1 ds1Var2 = ds1.a;
        JsonArray asJsonArray2 = jsonObject.getAsJsonArray("excluding");
        ArrayList arrayList2 = new ArrayList();
        if (asJsonArray2 != null) {
            for (JsonElement jsonElement3 : asJsonArray2) {
                int i4 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                JsonElement jsonElement4 = jsonElement3;
                Intrinsics.checkNotNull(jsonElement4);
                String asString2 = jsonElement4.getAsString();
                if (asString2 != null) {
                    arrayList2.add(asString2);
                }
                i = i4;
            }
        }
        jcVarA.a(lo0VarB, arrayList2);
        String lowerCase = ds1.a(jsonObject, "effective_ad_unit_id", "").toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        jcVarA.a(lowerCase);
        return jcVarA.a();
    }

    public static qb0 d(JsonObject jsonObject) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        ds1 ds1Var = ds1.a;
        try {
            pb0 builder = qb0.z();
            Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
            Intrinsics.checkNotNullParameter(builder, "builder");
            hj2 value = hj2.a(Base64.decode(ds1.a(jsonObject, "client_pat"), 0));
            Intrinsics.checkNotNullExpressionValue(value, "parseFrom(...)");
            Intrinsics.checkNotNullParameter(value, "value");
            builder.a(value);
            Intrinsics.checkNotNullParameter(jsonObject, "<this>");
            Intrinsics.checkNotNullParameter("client_pre", C3522b4.i.W);
            String asString = jsonObject.get("client_pre").getAsString();
            Intrinsics.checkNotNullExpressionValue(asString, "getAsString(...)");
            yp2 value2 = yp2.a(Base64.decode(asString, 0));
            Intrinsics.checkNotNullExpressionValue(value2, "parseFrom(...)");
            Intrinsics.checkNotNullParameter(value2, "value");
            builder.a(value2);
            Map mapH = builder.h();
            Intrinsics.checkNotNullExpressionValue(mapH, "getConcatenatedSignalsMapMap(...)");
            no0 no0Var = new no0(mapH);
            Gson gson = new Gson();
            Intrinsics.checkNotNullParameter(jsonObject, "<this>");
            Intrinsics.checkNotNullParameter("arr_params", C3522b4.i.W);
            String asString2 = jsonObject.get("arr_params").getAsString();
            Intrinsics.checkNotNullExpressionValue(asString2, "getAsString(...)");
            Map<String, JsonElement> mapAsMap = ((JsonObject) gson.fromJson(asString2, JsonObject.class)).asMap();
            Intrinsics.checkNotNullExpressionValue(mapAsMap, "asMap(...)");
            LinkedHashMap map = new LinkedHashMap(MapsKt__MapsJVMKt.mapCapacity(mapAsMap.size()));
            for (Object obj : mapAsMap.entrySet()) {
                map.put(((Map.Entry) obj).getKey(), ((JsonElement) ((Map.Entry) obj).getValue()).getAsJsonPrimitive().getAsString());
            }
            Intrinsics.checkNotNullParameter(no0Var, "<this>");
            Intrinsics.checkNotNullParameter(map, "map");
            builder.a(map);
            jsonObject.remove("client_pat");
            jsonObject.remove("client_pre");
            jsonObject.remove("arr_params");
            vz0 vz0VarB = builder.b();
            Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
            return (qb0) vz0VarB;
        } catch (Exception e) {
            List list = a2.a(e, "t", e).s;
            String message = e.getMessage();
            if (message == null) {
                message = e.getClass().getName();
            }
            Intrinsics.checkNotNull(message);
            list.add(message);
            return null;
        }
    }

    public static xp0 e(JsonObject jsonObject) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        try {
            String value = ds1.a(jsonObject, "eoid", "");
            long jG = ds1.g(jsonObject, "eoid_timestamp_ms");
            if (value.length() != 0 && jG > 0) {
                wp0 builder = xp0.y();
                Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
                Intrinsics.checkNotNullParameter(builder, "builder");
                Intrinsics.checkNotNullParameter(value, "value");
                builder.a(value);
                builder.a(jG);
                vz0 vz0VarB = builder.b();
                Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
                return (xp0) vz0VarB;
            }
            return null;
        } catch (Exception e) {
            List list = a2.a(e, "t", e).s;
            String message = e.getMessage();
            if (message == null) {
                message = e.getClass().getName();
            }
            Intrinsics.checkNotNull(message);
            list.add(message);
            return null;
        }
    }

    public static ev1 h(JsonObject jsonObject) {
        JsonObject jsonObject2;
        JsonObject jsonObject3;
        ds1 ds1Var = ds1.a;
        try {
            dv1 dv1VarY = ev1.y();
            Intrinsics.checkNotNullExpressionValue(dv1VarY, "newBuilder(...)");
            gv1 gv1VarA = fv1.a(dv1VarY);
            if (f01.a(2, "GoogleMobileAds")) {
                for (String str : f01.a().split("AppSettings MediationAdNetworkInfo: " + jsonObject)) {
                    Log.v("GoogleMobileAds", Thread.currentThread().getName() + ": " + str);
                }
            }
            JsonObject asJsonObject = jsonObject.getAsJsonObject("data");
            no0 no0VarC = gv1VarA.c();
            ds1 ds1Var2 = ds1.a;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (asJsonObject != null) {
                for (Map.Entry<String, JsonElement> entry : asJsonObject.entrySet()) {
                    Intrinsics.checkNotNull(entry);
                    String key = entry.getKey();
                    JsonElement value = entry.getValue();
                    Intrinsics.checkNotNull(key);
                    Intrinsics.checkNotNull(value);
                    Pair pair = new Pair(key, value.getAsString());
                    linkedHashMap.put(pair.getFirst(), pair.getSecond());
                }
            }
            gv1VarA.a(no0VarC, linkedHashMap);
            lo0 lo0VarB = gv1VarA.b();
            ds1 ds1Var3 = ds1.a;
            JsonArray asJsonArray = jsonObject.getAsJsonArray("rtb_adapters");
            ArrayList arrayList = new ArrayList();
            int i = 0;
            if (asJsonArray != null) {
                int i2 = 0;
                for (JsonElement jsonElement : asJsonArray) {
                    int i3 = i2 + 1;
                    if (i2 < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    JsonElement jsonElement2 = jsonElement;
                    Intrinsics.checkNotNull(jsonElement2);
                    List list = i2.J0;
                    String asString = jsonElement2.getAsString();
                    Intrinsics.checkNotNullExpressionValue(asString, "getAsString(...)");
                    if (asJsonObject == null) {
                        jsonObject3 = new JsonObject();
                    } else {
                        Intrinsics.checkNotNull(asJsonObject);
                        jsonObject3 = asJsonObject;
                    }
                    String strA = c2.a(jsonObject3, asString);
                    if (strA != null) {
                        arrayList.add(strA);
                    }
                    i2 = i3;
                }
            }
            gv1VarA.a(lo0VarB, arrayList);
            lo0 lo0VarD = gv1VarA.d();
            ds1 ds1Var4 = ds1.a;
            JsonArray asJsonArray2 = jsonObject.getAsJsonArray("adapters");
            ArrayList arrayList2 = new ArrayList();
            if (asJsonArray2 != null) {
                for (JsonElement jsonElement3 : asJsonArray2) {
                    int i4 = i + 1;
                    if (i < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    JsonElement jsonElement4 = jsonElement3;
                    Intrinsics.checkNotNull(jsonElement4);
                    List list2 = i2.J0;
                    String asString2 = jsonElement4.getAsString();
                    Intrinsics.checkNotNullExpressionValue(asString2, "getAsString(...)");
                    if (asJsonObject == null) {
                        jsonObject2 = new JsonObject();
                    } else {
                        Intrinsics.checkNotNull(asJsonObject);
                        jsonObject2 = asJsonObject;
                    }
                    String strA2 = c2.a(jsonObject2, asString2);
                    if (strA2 != null) {
                        arrayList2.add(strA2);
                    }
                    i = i4;
                }
            }
            gv1VarA.b(lo0VarD, arrayList2);
            return gv1VarA.a();
        } catch (Exception e) {
            xs3.a(e);
            return null;
        }
    }

    public static Pair i(JsonObject jsonObject) {
        ds1 ds1Var = ds1.a;
        try {
            if (f01.a(2, "GoogleMobileAds")) {
                for (String str : f01.a().split("Signal adapters: " + jsonObject)) {
                    Log.v("GoogleMobileAds", Thread.currentThread().getName() + ": " + str);
                }
            }
            String strA = ds1.a(jsonObject, "adapter_class_name", "");
            if (strA.length() == 0) {
                return null;
            }
            ss ssVarY = ts.y();
            Intrinsics.checkNotNullExpressionValue(ssVarY, "newBuilder(...)");
            vs vsVarA = us.a(ssVarY);
            vsVarA.a(strA);
            vsVarA.b(ds1.a(jsonObject, "collect_signals", false));
            vsVarA.a(true);
            no0 no0VarB = vsVarA.b();
            JsonElement jsonElement = jsonObject.get("data");
            JsonObject asJsonObject = jsonElement != null ? jsonElement.getAsJsonObject() : null;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (asJsonObject != null) {
                for (Map.Entry<String, JsonElement> entry : asJsonObject.entrySet()) {
                    Intrinsics.checkNotNull(entry);
                    String key = entry.getKey();
                    JsonElement value = entry.getValue();
                    Intrinsics.checkNotNull(key);
                    Intrinsics.checkNotNull(value);
                    Pair pair = new Pair(key, value.getAsString());
                    linkedHashMap.put(pair.getFirst(), pair.getSecond());
                }
            }
            vsVarA.a(no0VarB, linkedHashMap);
            return new Pair(strA, vsVarA.a());
        } catch (Exception e) {
            xs3.a(e);
            return null;
        }
    }

    public static be f(JsonObject jsonObject) {
        ds1 ds1Var = ds1.a;
        try {
            ae builder = be.x();
            Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
            Intrinsics.checkNotNullParameter(builder, "builder");
            List listH = builder.h();
            Intrinsics.checkNotNullExpressionValue(listH, "getInitializationDataList(...)");
            lo0 lo0Var = new lo0(listH);
            JsonElement jsonElement = jsonObject.get("data");
            JsonArray asJsonArray = jsonElement != null ? jsonElement.getAsJsonArray() : null;
            ArrayList values = new ArrayList();
            if (asJsonArray != null) {
                int i = 0;
                for (JsonElement jsonElement2 : asJsonArray) {
                    int i2 = i + 1;
                    if (i < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    JsonElement jsonElement3 = jsonElement2;
                    Intrinsics.checkNotNull(jsonElement3);
                    JsonObject asJsonObject = jsonElement3.getAsJsonObject();
                    Intrinsics.checkNotNullExpressionValue(asJsonObject, "getAsJsonObject(...)");
                    ee eeVarG = g(asJsonObject);
                    if (eeVarG != null) {
                        values.add(eeVarG);
                    }
                    i = i2;
                }
            }
            Intrinsics.checkNotNullParameter(lo0Var, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            builder.a(values);
            vz0 vz0VarB = builder.b();
            Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
            return (be) vz0VarB;
        } catch (Exception e) {
            List list = a2.a(e, "t", e).s;
            String message = e.getMessage();
            if (message == null) {
                message = e.getClass().getName();
            }
            Intrinsics.checkNotNull(message);
            list.add(message);
            return null;
        }
    }

    public static ee g(JsonObject jsonObject) {
        JsonObject asJsonObject;
        de builder = ee.x();
        Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
        Intrinsics.checkNotNullParameter(builder, "builder");
        JsonElement jsonElement = jsonObject.get("format");
        String value = jsonElement != null ? jsonElement.getAsString() : null;
        if (value == null) {
            value = "";
        } else {
            Intrinsics.checkNotNull(value);
        }
        Intrinsics.checkNotNullParameter(value, "value");
        builder.a(value);
        JsonElement jsonElement2 = jsonObject.get("data");
        if (jsonElement2 != null && (asJsonObject = jsonElement2.getAsJsonObject()) != null) {
            Intrinsics.checkNotNull(asJsonObject);
            ds1 ds1Var = ds1.a;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<String, JsonElement> entry : asJsonObject.entrySet()) {
                Intrinsics.checkNotNull(entry);
                String key = entry.getKey();
                JsonElement value2 = entry.getValue();
                Intrinsics.checkNotNull(key);
                Intrinsics.checkNotNull(value2);
                Pair pair = new Pair(key, value2.getAsString());
                linkedHashMap.put(pair.getFirst(), pair.getSecond());
            }
            for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                String key2 = (String) entry2.getKey();
                String value3 = (String) entry2.getValue();
                Map mapH = builder.h();
                Intrinsics.checkNotNullExpressionValue(mapH, "getExtrasMap(...)");
                no0 no0Var = new no0(mapH);
                Intrinsics.checkNotNull(value3);
                Intrinsics.checkNotNullParameter(no0Var, "<this>");
                Intrinsics.checkNotNullParameter(key2, "key");
                Intrinsics.checkNotNullParameter(value3, "value");
                builder.a(key2, value3);
            }
        }
        vz0 vz0VarB = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (ee) vz0VarB;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Pair a(JsonObject json, long j) {
        Pair pair;
        JsonObject jsonObject;
        String str;
        JsonObject jsonObject2;
        Pair pair2;
        JsonElement jsonElement;
        Intrinsics.checkNotNullParameter(json, "json");
        ds1 ds1Var = ds1.a;
        Pair pair3 = null;
        try {
            if (f01.a(2, "GoogleMobileAds")) {
                for (String str2 : f01.a().split("AppSettings raw response: " + json)) {
                    Log.v("GoogleMobileAds", Thread.currentThread().getName() + ": " + str2);
                }
            }
            if (ds1.a(json)) {
                String strA = ds1.a(json, "appSettingsJson");
                JsonObject jsonObject3 = (JsonObject) new Gson().fromJson(strA, JsonObject.class);
                if (ds1.a(jsonObject3, "status", 0) != 1) {
                    JsonElement jsonElement2 = jsonObject3.get("errorReason");
                    String asString = jsonElement2 != null ? jsonElement2.getAsString() : null;
                    if (asString == null) {
                        asString = "status is not 1, was " + ds1.a(jsonObject3, "status", 0);
                    }
                    xs3.a(asString, null, 6);
                } else {
                    long jG = ds1.g(jsonObject3, "cache_ttl_sec");
                    JsonObject asJsonObject = jsonObject3.getAsJsonObject("common_settings");
                    JsonArray asJsonArray = asJsonObject != null ? asJsonObject.getAsJsonArray("loeid") : null;
                    ArrayList arrayList = new ArrayList();
                    if (asJsonArray != null) {
                        int i = 0;
                        for (JsonElement jsonElement3 : asJsonArray) {
                            int i2 = i + 1;
                            if (i < 0) {
                                CollectionsKt__CollectionsKt.throwIndexOverflow();
                            }
                            JsonElement jsonElement4 = jsonElement3;
                            Intrinsics.checkNotNull(jsonElement4);
                            arrayList.add(Long.valueOf(jsonElement4.getAsLong()));
                            Unit unit = Unit.INSTANCE;
                            i = i2;
                        }
                    }
                    ds1 ds1Var2 = ds1.a;
                    JsonObject asJsonObject2 = jsonObject3.getAsJsonObject("ad_unit_patterns");
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    if (asJsonObject2 != null) {
                        for (Map.Entry<String, JsonElement> entry : asJsonObject2.entrySet()) {
                            Intrinsics.checkNotNull(entry);
                            String key = entry.getKey();
                            JsonElement value = entry.getValue();
                            Intrinsics.checkNotNull(key);
                            Intrinsics.checkNotNull(value);
                            JsonArray asJsonArray2 = value.getAsJsonArray();
                            Intrinsics.checkNotNullExpressionValue(asJsonArray2, "getAsJsonArray(...)");
                            mc mcVarA = a(asJsonArray2);
                            Pair pair4 = mcVarA != null ? new Pair(key, mcVarA) : null;
                            if (pair4 != null) {
                                linkedHashMap.put(pair4.getFirst(), pair4.getSecond());
                                Unit unit2 = Unit.INSTANCE;
                            }
                        }
                    }
                    ds1 ds1Var3 = ds1.a;
                    JsonArray asJsonArray3 = jsonObject3.getAsJsonArray("ad_unit_id_settings");
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                    if (asJsonArray3 != null) {
                        for (JsonElement jsonElement5 : asJsonArray3.getAsJsonArray()) {
                            Intrinsics.checkNotNull(jsonElement5);
                            JsonObject asJsonObject3 = jsonElement5.getAsJsonObject();
                            Intrinsics.checkNotNullExpressionValue(asJsonObject3, "getAsJsonObject(...)");
                            Pair pairB = b(asJsonObject3);
                            if (pairB != null) {
                                linkedHashMap2.put(pairB.getFirst(), pairB.getSecond());
                                Unit unit3 = Unit.INSTANCE;
                            }
                        }
                    }
                    ds1 ds1Var4 = ds1.a;
                    JsonArray asJsonArray4 = jsonObject3.getAsJsonArray("ad_unit_id_settings");
                    LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                    if (asJsonArray4 != null) {
                        for (JsonElement jsonElement6 : asJsonArray4.getAsJsonArray()) {
                            Intrinsics.checkNotNull(jsonElement6);
                            JsonObject asJsonObject4 = jsonElement6.getAsJsonObject();
                            Intrinsics.checkNotNullExpressionValue(asJsonObject4, "getAsJsonObject(...)");
                            Pair pairA = a(asJsonObject4);
                            if (pairA != null) {
                                linkedHashMap3.put(pairA.getFirst(), pairA.getSecond());
                                Unit unit4 = Unit.INSTANCE;
                            }
                        }
                    }
                    ds1 ds1Var5 = ds1.a;
                    JsonArray asJsonArray5 = jsonObject3.getAsJsonArray("signal_adapters");
                    LinkedHashMap linkedHashMap4 = new LinkedHashMap();
                    if (asJsonArray5 != null) {
                        for (JsonElement jsonElement7 : asJsonArray5.getAsJsonArray()) {
                            Intrinsics.checkNotNull(jsonElement7);
                            JsonObject asJsonObject5 = jsonElement7.getAsJsonObject();
                            Intrinsics.checkNotNullExpressionValue(asJsonObject5, "getAsJsonObject(...)");
                            Pair pairI = i(asJsonObject5);
                            if (pairI != null) {
                                linkedHashMap4.put(pairI.getFirst(), pairI.getSecond());
                                Unit unit5 = Unit.INSTANCE;
                            }
                        }
                    }
                    ds1 ds1Var6 = ds1.a;
                    JsonArray asJsonArray6 = jsonObject3.getAsJsonArray("adapter_settings");
                    LinkedHashMap linkedHashMap5 = new LinkedHashMap();
                    if (asJsonArray6 != null) {
                        for (JsonElement jsonElement8 : asJsonArray6.getAsJsonArray()) {
                            Intrinsics.checkNotNull(jsonElement8);
                            JsonObject asJsonObject6 = jsonElement8.getAsJsonObject();
                            Intrinsics.checkNotNullExpressionValue(asJsonObject6, "getAsJsonObject(...)");
                            pair = pair3;
                            try {
                                Pair pairA2 = a(asJsonObject6, "admob");
                                if (pairA2 != null) {
                                    linkedHashMap5.put(pairA2.getFirst(), pairA2.getSecond());
                                    Unit unit6 = Unit.INSTANCE;
                                }
                                pair3 = pair;
                            } catch (Exception e) {
                                e = e;
                                xs3.a(e);
                                return pair;
                            }
                        }
                    }
                    pair = pair3;
                    ds1 ds1Var7 = ds1.a;
                    JsonArray asJsonArray7 = jsonObject3.getAsJsonArray("adapter_settings");
                    LinkedHashMap linkedHashMap6 = new LinkedHashMap();
                    if (asJsonArray7 != null) {
                        for (JsonElement jsonElement9 : asJsonArray7.getAsJsonArray()) {
                            Intrinsics.checkNotNull(jsonElement9);
                            JsonObject asJsonObject7 = jsonElement9.getAsJsonObject();
                            Intrinsics.checkNotNullExpressionValue(asJsonObject7, "getAsJsonObject(...)");
                            Pair pairA3 = a(asJsonObject7, "ad_manager");
                            if (pairA3 != null) {
                                linkedHashMap6.put(pairA3.getFirst(), pairA3.getSecond());
                                Unit unit7 = Unit.INSTANCE;
                            }
                        }
                    }
                    JsonElement jsonElement10 = jsonObject3.get("initializer_settings");
                    JsonObject asJsonObject8 = jsonElement10 != null ? jsonElement10.getAsJsonObject() : pair;
                    Object asJsonObject9 = (asJsonObject8 == 0 || (jsonElement = asJsonObject8.get("config")) == null) ? pair : jsonElement.getAsJsonObject();
                    if (asJsonObject9 == null) {
                        jsonObject = new JsonObject();
                    } else {
                        Intrinsics.checkNotNull(asJsonObject9);
                        jsonObject = asJsonObject9;
                    }
                    ds1 ds1Var8 = ds1.a;
                    LinkedHashMap linkedHashMap7 = new LinkedHashMap();
                    Iterator<Map.Entry<String, JsonElement>> it = jsonObject.entrySet().iterator();
                    while (it.hasNext()) {
                        Map.Entry<String, JsonElement> next = it.next();
                        Intrinsics.checkNotNull(next);
                        Iterator<Map.Entry<String, JsonElement>> it2 = it;
                        String key2 = next.getKey();
                        JsonElement value2 = next.getValue();
                        Intrinsics.checkNotNull(key2);
                        Intrinsics.checkNotNull(value2);
                        JsonObject asJsonObject10 = value2.getAsJsonObject();
                        Intrinsics.checkNotNullExpressionValue(asJsonObject10, "getAsJsonObject(...)");
                        be beVarF = f(asJsonObject10);
                        if (beVarF != null) {
                            jsonObject2 = asJsonObject;
                            pair2 = new Pair(key2, beVarF);
                        } else {
                            jsonObject2 = asJsonObject;
                            pair2 = pair;
                        }
                        if (pair2 != null) {
                            linkedHashMap7.put(pair2.getFirst(), pair2.getSecond());
                            Unit unit8 = Unit.INSTANCE;
                        }
                        it = it2;
                        asJsonObject = jsonObject2;
                    }
                    JsonObject jsonObject4 = asJsonObject;
                    im imVarH = jm.H();
                    Intrinsics.checkNotNullExpressionValue(imVarH, "newBuilder(...)");
                    sm smVarA = rm.a(imVarH);
                    smVarA.j();
                    smVarA.a(j);
                    smVarA.b(jG);
                    smVarA.a(strA);
                    smVarA.a(smVarA.h(), arrayList);
                    Object string = jsonObject4 != null ? jsonObject4.toString() : pair;
                    if (string == null) {
                        str = "";
                    } else {
                        Intrinsics.checkNotNull(string);
                        str = string;
                    }
                    smVarA.b(str);
                    smVarA.d(smVarA.e(), linkedHashMap);
                    smVarA.g(smVarA.i(), linkedHashMap4);
                    smVarA.f(smVarA.g(), linkedHashMap5);
                    smVarA.a(smVarA.b(), linkedHashMap6);
                    smVarA.e(smVarA.f(), linkedHashMap7);
                    smVarA.c(smVarA.d(), linkedHashMap2);
                    smVarA.b(smVarA.c(), linkedHashMap3);
                    return new Pair(smVarA.a(), jsonObject3);
                }
            }
            return null;
        } catch (Exception e2) {
            e = e2;
            pair = null;
        }
    }

    public static k30 a(JsonObject jsonObject, JsonObject consentStrings) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        Intrinsics.checkNotNullParameter(consentStrings, "consentStrings");
        ds1 ds1Var = ds1.a;
        try {
            j30 builder = k30.D();
            Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
            Intrinsics.checkNotNullParameter(builder, "builder");
            String value = new Gson().toJson((JsonElement) consentStrings);
            Intrinsics.checkNotNullExpressionValue(value, "toJson(...)");
            Intrinsics.checkNotNullParameter(value, "value");
            builder.b(value);
            String value2 = ds1.a(jsonObject, "consent_state");
            Intrinsics.checkNotNullParameter(value2, "value");
            builder.a(value2);
            BaseEncoding baseEncodingBase64Url = BaseEncoding.base64Url();
            Intrinsics.checkNotNullParameter(jsonObject, "<this>");
            Intrinsics.checkNotNullParameter("allowlist", C3522b4.i.W);
            String asString = jsonObject.get("allowlist").getAsString();
            Intrinsics.checkNotNullExpressionValue(asString, "getAsString(...)");
            u00 value3 = u00.a(baseEncodingBase64Url.decode(asString));
            Intrinsics.checkNotNullExpressionValue(value3, "parseFrom(...)");
            Intrinsics.checkNotNullParameter(value3, "value");
            builder.a(value3);
            vz0 vz0VarB = builder.b();
            Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
            return (k30) vz0VarB;
        } catch (Exception e) {
            List list = a2.a(e, "t", e).s;
            String message = e.getMessage();
            if (message == null) {
                message = e.getClass().getName();
            }
            Intrinsics.checkNotNull(message);
            list.add(message);
            return null;
        }
    }

    public static Pair a(JsonObject jsonObject) {
        ds1 ds1Var = ds1.a;
        try {
            if (f01.a(2, "GoogleMobileAds")) {
                for (String str : f01.a().split("AppSettings MediationConfig: " + jsonObject)) {
                    Log.v("GoogleMobileAds", Thread.currentThread().getName() + ": " + str);
                }
            }
            String strA = ds1.a(jsonObject, "format");
            Locale locale = Locale.ROOT;
            String lowerCase = strA.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            String lowerCase2 = ds1.a(jsonObject, "ad_unit_id").toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
            if (lowerCase.length() != 0 && lowerCase2.length() != 0) {
                JsonObject asJsonObject = jsonObject.getAsJsonObject("mediation_config");
                JsonArray asJsonArray = asJsonObject != null ? asJsonObject.getAsJsonArray("ad_networks") : null;
                ArrayList arrayList = new ArrayList();
                if (asJsonArray != null) {
                    int i = 0;
                    for (JsonElement jsonElement : asJsonArray) {
                        int i2 = i + 1;
                        if (i < 0) {
                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                        }
                        JsonElement jsonElement2 = jsonElement;
                        Intrinsics.checkNotNull(jsonElement2);
                        JsonObject asJsonObject2 = jsonElement2.getAsJsonObject();
                        Intrinsics.checkNotNullExpressionValue(asJsonObject2, "getAsJsonObject(...)");
                        ev1 ev1VarH = h(asJsonObject2);
                        if (ev1VarH != null) {
                            arrayList.add(ev1VarH);
                        }
                        i = i2;
                    }
                }
                if (!arrayList.isEmpty()) {
                    String str2 = lowerCase2 + "," + lowerCase;
                    jw1 jw1VarX = kw1.x();
                    Intrinsics.checkNotNullExpressionValue(jw1VarX, "newBuilder(...)");
                    mw1 mw1VarA = lw1.a(jw1VarX);
                    mw1VarA.a(mw1VarA.b(), arrayList);
                    return new Pair(str2, mw1VarA.a());
                }
            }
            return null;
        } catch (Exception e) {
            xs3.a(e);
            return null;
        }
    }

    public static mc a(JsonArray jsonArray) {
        ds1 ds1Var = ds1.a;
        try {
            lc lcVarX = mc.x();
            Intrinsics.checkNotNullExpressionValue(lcVarX, "newBuilder(...)");
            oc ocVarA = nc.a(lcVarX);
            if (f01.a(2, "GoogleMobileAds")) {
                for (String str : f01.a().split("AdUnitPatterns: " + jsonArray)) {
                    Log.v("GoogleMobileAds", Thread.currentThread().getName() + ": " + str);
                }
            }
            lo0 lo0VarB = ocVarA.b();
            ds1 ds1Var2 = ds1.a;
            ArrayList arrayList = new ArrayList();
            if (jsonArray != null) {
                int i = 0;
                for (JsonElement jsonElement : jsonArray) {
                    int i2 = i + 1;
                    if (i < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    JsonElement jsonElement2 = jsonElement;
                    Intrinsics.checkNotNull(jsonElement2);
                    JsonObject asJsonObject = jsonElement2.getAsJsonObject();
                    Intrinsics.checkNotNullExpressionValue(asJsonObject, "getAsJsonObject(...)");
                    hc hcVarC = c(asJsonObject);
                    if (hcVarC != null) {
                        arrayList.add(hcVarC);
                    }
                    i = i2;
                }
            }
            ocVarA.a(lo0VarB, arrayList);
            return ocVarA.a();
        } catch (Exception e) {
            xs3.a(e);
            return null;
        }
    }

    public static Pair a(JsonObject jsonObject, String str) {
        ds1 ds1Var = ds1.a;
        try {
            if (f01.a(2, "GoogleMobileAds")) {
                for (String str2 : f01.a().split("Adapter settings: " + jsonObject)) {
                    Log.v("GoogleMobileAds", Thread.currentThread().getName() + ": " + str2);
                }
            }
            String strA = ds1.a(jsonObject, "adapter_class_name", "");
            if (strA.length() == 0) {
                return null;
            }
            JsonElement jsonElement = jsonObject.get("permission_set");
            JsonArray asJsonArray = jsonElement != null ? jsonElement.getAsJsonArray() : null;
            ArrayList arrayList = new ArrayList();
            if (asJsonArray != null) {
                int i = 0;
                for (JsonElement jsonElement2 : asJsonArray) {
                    int i2 = i + 1;
                    if (i < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    JsonElement jsonElement3 = jsonElement2;
                    Intrinsics.checkNotNull(jsonElement3);
                    JsonObject asJsonObject = jsonElement3.getAsJsonObject();
                    Intrinsics.checkNotNullExpressionValue(asJsonObject, "getAsJsonObject(...)");
                    ts tsVarA = a(asJsonObject, strA, str);
                    Pair pair = tsVarA != null ? new Pair(strA, tsVarA) : null;
                    if (pair != null) {
                        arrayList.add(pair);
                    }
                    i = i2;
                }
            }
            return (Pair) CollectionsKt___CollectionsKt.firstOrNull((List) arrayList);
        } catch (Exception e) {
            xs3.a(e);
            return null;
        }
    }
}
