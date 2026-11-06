package ads_mobile_sdk;

import android.net.Uri;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.ironsource.C3522b4;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class wy {
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [T, com.google.gson.JsonObject] */
    /* JADX WARN: Type inference failed for: r10v0, types: [T, com.google.gson.JsonObject] */
    /* JADX WARN: Type inference failed for: r3v11, types: [com.google.gson.JsonObject] */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v18, types: [com.google.gson.JsonObject] */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v21, types: [T] */
    /* JADX WARN: Type inference failed for: r3v24, types: [com.google.gson.JsonObject] */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r3v31, types: [com.google.gson.JsonObject] */
    /* JADX WARN: Type inference failed for: r3v33 */
    /* JADX WARN: Type inference failed for: r3v34, types: [T] */
    /* JADX WARN: Type inference failed for: r3v46, types: [com.google.gson.JsonObject] */
    /* JADX WARN: Type inference failed for: r3v49 */
    /* JADX WARN: Type inference failed for: r3v51 */
    /* JADX WARN: Type inference failed for: r3v53, types: [com.google.gson.JsonObject] */
    /* JADX WARN: Type inference failed for: r3v55 */
    /* JADX WARN: Type inference failed for: r3v56, types: [T] */
    /* JADX WARN: Type inference failed for: r9v0, types: [T, com.google.gson.JsonObject] */
    public static zy a(JsonObject jsonObject, ex0 ex0Var) {
        JsonObject jsonObject2;
        long j;
        String str;
        String str2;
        String str3;
        String str4;
        long j2;
        int i;
        boolean z;
        int i2;
        boolean z2;
        JsonObject jsonObject3;
        boolean z3;
        et etVar;
        long j3;
        String str5;
        String str6;
        String str7;
        yy yyVar;
        JsonObject jsonObject4;
        long j4;
        ArrayList arrayList = new ArrayList();
        Duration.Companion companion = Duration.Companion;
        long jM2911getZEROUwyO8pc = companion.m2911getZEROUwyO8pc();
        boolean z4 = true;
        long jM2896minusLRDsOJo = Duration.m2896minusLRDsOJo(companion.m2911getZEROUwyO8pc(), DurationKt.toDuration(1, DurationUnit.SECONDS));
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ref$ObjectRef.element = new JsonObject();
        JsonObject jsonObject5 = new JsonObject();
        Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
        ref$ObjectRef2.element = new JsonObject();
        Ref$ObjectRef ref$ObjectRef3 = new Ref$ObjectRef();
        ref$ObjectRef3.element = new JsonObject();
        String asString = "";
        if (jsonObject != null) {
            int asInt = 1;
            String str8 = "";
            String str9 = str8;
            String str10 = str9;
            String str11 = str10;
            String str12 = str11;
            long asLong = 0;
            int asInt2 = 0;
            et etVar2 = null;
            boolean asBoolean = false;
            boolean asBoolean2 = false;
            JsonObject jsonObjectA = null;
            boolean asBoolean3 = false;
            long duration = jM2896minusLRDsOJo;
            String asString2 = str12;
            long duration2 = jM2911getZEROUwyO8pc;
            JsonObject asJsonObject = jsonObject5;
            for (Map.Entry<String, JsonElement> entry : jsonObject.entrySet()) {
                Intrinsics.checkNotNull(entry);
                boolean z5 = z4;
                String key = entry.getKey();
                JsonElement json = entry.getValue();
                if (key != null) {
                    jsonObject4 = asJsonObject;
                    j4 = duration2;
                    switch (key.hashCode()) {
                        case -2068795272:
                            if (key.equals("is_persistent_ad_enabled")) {
                                asBoolean2 = json.getAsBoolean();
                            }
                            break;
                        case -1934789405:
                            if (key.equals("adRequestUrl")) {
                                String asString3 = json.getAsString();
                                Intrinsics.checkNotNullExpressionValue(asString3, "getAsString(...)");
                                asJsonObject = jsonObject4;
                                str8 = asString3;
                            }
                            z4 = z5;
                            duration2 = j4;
                            break;
                        case -1664768712:
                            if (key.equals("inspector_ad_transaction_extras")) {
                                ?? A = ds1.a(json);
                                if (A == 0) {
                                    try {
                                        A = (JsonObject) new Gson().fromJson(json.getAsString(), JsonObject.class);
                                    } catch (Exception e) {
                                        List list = a2.a(e, "t", e).s;
                                        String message = e.getMessage();
                                        if (message == null) {
                                            message = e.getClass().getName();
                                        }
                                        Intrinsics.checkNotNull(message);
                                        list.add(message);
                                        A = 0;
                                    }
                                    if (A == 0) {
                                        A = (JsonObject) ref$ObjectRef2.element;
                                    }
                                }
                                ref$ObjectRef2.element = A;
                            }
                            break;
                        case -1620470467:
                            if (key.equals("backend_query_id")) {
                                String asString4 = json.getAsString();
                                Intrinsics.checkNotNullExpressionValue(asString4, "getAsString(...)");
                                asJsonObject = jsonObject4;
                                str12 = asString4;
                            }
                            z4 = z5;
                            duration2 = j4;
                            break;
                        case -1550155393:
                            if (key.equals("nofill_urls")) {
                                ds1 ds1Var = ds1.a;
                                JsonArray asJsonArray = json.getAsJsonArray();
                                Intrinsics.checkNotNullExpressionValue(asJsonArray, "getAsJsonArray(...)");
                                int i3 = 0;
                                for (JsonElement jsonElement : asJsonArray) {
                                    int i4 = i3 + 1;
                                    if (i3 < 0) {
                                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                                    }
                                    JsonElement jsonElement2 = jsonElement;
                                    Intrinsics.checkNotNull(jsonElement2);
                                    String asString5 = jsonElement2.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString5, "getAsString(...)");
                                    Uri uri = Uri.parse(asString5);
                                    if (uri != null) {
                                        arrayList.add(uri);
                                    }
                                    i3 = i4;
                                }
                            }
                            break;
                        case -1076723292:
                            if (key.equals("adapter_response_replacement_key")) {
                                String asString6 = json.getAsString();
                                Intrinsics.checkNotNullExpressionValue(asString6, "getAsString(...)");
                                asJsonObject = jsonObject4;
                                str10 = asString6;
                            }
                            z4 = z5;
                            duration2 = j4;
                            break;
                        case -996058782:
                            if (key.equals("adResponseHeaders")) {
                                ?? A2 = ds1.a(json);
                                if (A2 == 0) {
                                    try {
                                        A2 = (JsonObject) new Gson().fromJson(json.getAsString(), JsonObject.class);
                                    } catch (Exception e2) {
                                        List list2 = a2.a(e2, "t", e2).s;
                                        String message2 = e2.getMessage();
                                        if (message2 == null) {
                                            message2 = e2.getClass().getName();
                                        }
                                        Intrinsics.checkNotNull(message2);
                                        list2.add(message2);
                                        A2 = 0;
                                    }
                                    if (A2 == 0) {
                                        A2 = (JsonObject) ref$ObjectRef3.element;
                                    }
                                }
                                ref$ObjectRef3.element = A2;
                            }
                            break;
                        case -878581970:
                            if (key.equals("gws_query_id")) {
                                asString = json.getAsString();
                                Intrinsics.checkNotNullExpressionValue(asString, "getAsString(...)");
                            }
                            break;
                        case -729197079:
                            if (key.equals("is_idless")) {
                                asBoolean = json.getAsBoolean();
                            }
                            break;
                        case -644504941:
                            if (key.equals("max_parallel_renderers")) {
                                asInt = json.getAsInt();
                            }
                            break;
                        case -430112607:
                            if (key.equals("throttle_configuration")) {
                                jsonObjectA = ds1.a(json);
                            }
                            break;
                        case -46576386:
                            if (key.equals("latency")) {
                                asLong = json.getAsLong();
                            }
                            break;
                        case 532938054:
                            if (key.equals("adResponseBody")) {
                                String asString7 = json.getAsString();
                                Intrinsics.checkNotNullExpressionValue(asString7, "getAsString(...)");
                                asJsonObject = jsonObject4;
                                str11 = asString7;
                            }
                            z4 = z5;
                            duration2 = j4;
                            break;
                        case 864007346:
                            if (key.equals("public_error")) {
                                Intrinsics.checkNotNull(json);
                                Intrinsics.checkNotNullParameter(json, "json");
                                if (!json.isJsonNull()) {
                                    try {
                                        ds1 ds1Var2 = ds1.a;
                                        JsonObject asJsonObject2 = json.getAsJsonObject();
                                        Intrinsics.checkNotNullExpressionValue(asJsonObject2, "getAsJsonObject(...)");
                                        Intrinsics.checkNotNullParameter(asJsonObject2, "<this>");
                                        Intrinsics.checkNotNullParameter("code", C3522b4.i.W);
                                        int asInt3 = asJsonObject2.get("code").getAsInt();
                                        JsonObject asJsonObject3 = json.getAsJsonObject();
                                        Intrinsics.checkNotNullExpressionValue(asJsonObject3, "getAsJsonObject(...)");
                                        asJsonObject = jsonObject4;
                                        etVar2 = new et(asInt3, ds1.a(asJsonObject3, "description"));
                                        z4 = z5;
                                        duration2 = j4;
                                    } catch (Exception e3) {
                                        List list3 = a2.a(e3, "t", e3).s;
                                        String message3 = e3.getMessage();
                                        if (message3 == null) {
                                            message3 = e3.getClass().getName();
                                        }
                                        Intrinsics.checkNotNull(message3);
                                        list3.add(message3);
                                        asJsonObject = jsonObject4;
                                        z4 = z5;
                                        duration2 = j4;
                                        etVar2 = null;
                                    }
                                    break;
                                }
                                asJsonObject = jsonObject4;
                                z4 = z5;
                                duration2 = j4;
                                etVar2 = null;
                            }
                            break;
                        case 868720662:
                            if (key.equals("response_info_extras")) {
                                asJsonObject = json.getAsJsonObject();
                                Intrinsics.checkNotNullExpressionValue(asJsonObject, "getAsJsonObject(...)");
                            }
                            z4 = z5;
                            duration2 = j4;
                            break;
                        case 961728366:
                            if (key.equals("adRequestPostBody")) {
                                String asString8 = json.getAsString();
                                Intrinsics.checkNotNullExpressionValue(asString8, "getAsString(...)");
                                asJsonObject = jsonObject4;
                                str9 = asString8;
                            }
                            z4 = z5;
                            duration2 = j4;
                            break;
                        case 1128093708:
                            if (key.equals("analytics_query_ad_event_id")) {
                                asString2 = json.getAsString();
                                Intrinsics.checkNotNullExpressionValue(asString2, "getAsString(...)");
                            }
                            break;
                        case 1282999366:
                            if (key.equals("refresh_load_delay_time_interval")) {
                                Duration.Companion companion2 = Duration.Companion;
                                duration = DurationKt.toDuration(json.getAsInt(), DurationUnit.SECONDS);
                            }
                            break;
                        case 1474602697:
                            if (key.equals("is_cross_process_ad_enabled")) {
                                asBoolean3 = json.getAsBoolean();
                            }
                            break;
                        case 1676268331:
                            if (key.equals("response_code")) {
                                asInt2 = json.getAsInt();
                            }
                            break;
                        case 1722800622:
                            if (key.equals("bidding_data")) {
                                ?? A3 = ds1.a(json);
                                if (A3 == 0) {
                                    try {
                                        A3 = (JsonObject) new Gson().fromJson(json.getAsString(), JsonObject.class);
                                    } catch (Exception e4) {
                                        List list4 = a2.a(e4, "t", e4).s;
                                        String message4 = e4.getMessage();
                                        if (message4 == null) {
                                            message4 = e4.getClass().getName();
                                        }
                                        Intrinsics.checkNotNull(message4);
                                        list4.add(message4);
                                        A3 = 0;
                                    }
                                    if (A3 == 0) {
                                        A3 = (JsonObject) ref$ObjectRef.element;
                                    }
                                }
                                ref$ObjectRef.element = A3;
                            }
                            break;
                        case 1816824233:
                            if (key.equals("refresh_interval")) {
                                Duration.Companion companion3 = Duration.Companion;
                                duration2 = DurationKt.toDuration(json.getAsInt(), DurationUnit.SECONDS);
                                asJsonObject = jsonObject4;
                                z4 = z5;
                            }
                            break;
                    }
                } else {
                    jsonObject4 = asJsonObject;
                    j4 = duration2;
                }
                asJsonObject = jsonObject4;
                z4 = z5;
                duration2 = j4;
            }
            JsonObject jsonObject6 = asJsonObject;
            long j5 = duration2;
            str6 = str8;
            str5 = str9;
            str = str10;
            str2 = str11;
            i2 = asInt2;
            etVar = etVar2;
            z = asBoolean;
            i = asInt;
            jsonObject2 = jsonObject6;
            str3 = asString2;
            j = duration;
            str4 = str12;
            j2 = asLong;
            z2 = asBoolean2;
            jsonObject3 = jsonObjectA;
            z3 = asBoolean3;
            j3 = j5;
        } else {
            jsonObject2 = jsonObject5;
            j = jM2896minusLRDsOJo;
            str = "";
            str2 = str;
            str3 = str2;
            str4 = str3;
            j2 = 0;
            i = 1;
            z = false;
            i2 = 0;
            z2 = false;
            jsonObject3 = null;
            z3 = false;
            etVar = null;
            j3 = jM2911getZEROUwyO8pc;
            str5 = str4;
            str6 = str5;
        }
        String str13 = str;
        if (ex0Var != null) {
            Intrinsics.checkNotNullParameter("gads:fullscreen_on_show_trigger", C3522b4.i.W);
            str7 = str5;
            Intrinsics.checkNotNullParameter("create", "defaultValue");
            String value = (String) ex0Var.a("gads:fullscreen_on_show_trigger", "create", yr.o);
            if (value != null) {
                yy.b.getClass();
                Intrinsics.checkNotNullParameter(value, "value");
                yyVar = (yy) yy.c.get(value);
                if (yyVar == null) {
                    yyVar = yy.d;
                }
            }
            return new zy(str13, str7, str6, str2, (JsonObject) ref$ObjectRef3.element, (JsonObject) ref$ObjectRef.element, etVar, asString, (JsonObject) ref$ObjectRef2.element, z, j2, i, arrayList, j3, j, i2, jsonObject2, str3, z2, jsonObject3, z3, yyVar, str4);
        }
        str7 = str5;
        yyVar = yy.d;
        return new zy(str13, str7, str6, str2, (JsonObject) ref$ObjectRef3.element, (JsonObject) ref$ObjectRef.element, etVar, asString, (JsonObject) ref$ObjectRef2.element, z, j2, i, arrayList, j3, j, i2, jsonObject2, str3, z2, jsonObject3, z3, yyVar, str4);
    }
}
