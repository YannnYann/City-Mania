package ads_mobile_sdk;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.ironsource.C3522b4;
import com.unity3d.ads.core.data.datasource.AndroidTcfDataSource;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class x00 extends yr {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x00(xw0 flagValueProvider) {
        super(flagValueProvider);
        Intrinsics.checkNotNullParameter(flagValueProvider, "flagValueProvider");
    }

    public final String b() {
        JsonArray jsonArray = new JsonArray();
        o30 o30Var = o30.b;
        jsonArray.add(a("IABTCF_AddtlConsent", o30Var));
        jsonArray.add(a("IABConsent_CMPPresent", o30.d));
        o30 o30Var2 = o30.c;
        jsonArray.add(a("IABTCF_CmpSdkID", o30Var2));
        jsonArray.add(a("IABConsent_ConsentString", o30Var));
        jsonArray.add(a("IABTCF_gdprApplies", o30Var2));
        jsonArray.add(a("IABGPP_HDR_GppString", o30Var));
        jsonArray.add(a("IABGPP_GppSID", o30Var));
        jsonArray.add(a("gad_has_consent_for_cookies", o30Var2));
        jsonArray.add(a("IABConsent_ParsedPurposeConsents", o30Var));
        jsonArray.add(a("personalized_ad_status", o30Var));
        jsonArray.add(a("IABTCF_PolicyVersion", o30Var2));
        jsonArray.add(a("IABUSPrivacy_String", o30Var));
        jsonArray.add(a("IABTCF_PurposeConsents", o30Var));
        jsonArray.add(a("gad_rdp", o30Var2));
        jsonArray.add(a("IABConsent_SubjectToGDPR", o30Var));
        jsonArray.add(a(AndroidTcfDataSource.TCF_TCSTRING_KEY, o30Var));
        jsonArray.add(a("IABConsent_ParsedVendorConsents", o30Var));
        jsonArray.add(a("UMP_eids", o30Var));
        Unit unit = Unit.INSTANCE;
        String defaultValue = jsonArray.toString();
        Intrinsics.checkNotNullExpressionValue(defaultValue, "toString(...)");
        Intrinsics.checkNotNullParameter("gads:sp:json_string", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (String) a("gads:sp:json_string", defaultValue, yr.o);
    }

    public final String a() {
        JsonArray jsonArray = new JsonArray();
        o30 o30Var = o30.b;
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("consent_key", "gad_has_consent_for_cookies");
        jsonObject.addProperty("consent_value_match", "0");
        jsonObject.addProperty("consent_value_type", (Number) 1);
        jsonArray.add(jsonObject);
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.addProperty("consent_key", "IABTCF_gdprApplies");
        jsonObject2.addProperty("consent_value_match", "1");
        jsonObject2.addProperty("consent_value_type", (Number) 1);
        jsonArray.add(jsonObject2);
        Unit unit = Unit.INSTANCE;
        String defaultValue = jsonArray.toString();
        Intrinsics.checkNotNullExpressionValue(defaultValue, "toString(...)");
        Intrinsics.checkNotNullParameter("gads:full_consent_check_map", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (String) a("gads:full_consent_check_map", defaultValue, yr.o);
    }

    public static JsonObject a(String str, o30 o30Var) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("bk", str);
        jsonObject.addProperty("sk", str);
        jsonObject.addProperty("type", Integer.valueOf(o30Var.a));
        return jsonObject;
    }
}
