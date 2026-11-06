package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﻣ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0962 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final String f3633 = StringFog.decrypt("+kRr+nhhtIbD\n", "sBcktC0V3eo=\n");

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static JSONObject m1573(JSONObject jSONObject, boolean z) {
        if (jSONObject != null) {
            try {
                JSONObject jSONObject2 = new JSONObject(jSONObject.toString());
                if (z) {
                    jSONObject2.remove(AbstractC0047.f625);
                }
                return jSONObject2;
            } catch (JSONException unused) {
            }
        }
        return new JSONObject();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1575(JSONObject jSONObject, JSONObject jSONObject2, boolean z) {
        if (jSONObject == null || jSONObject2 == null) {
            return;
        }
        Iterator<String> itKeys = jSONObject2.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            try {
                jSONObject.put(next, jSONObject2.opt(next));
            } catch (JSONException unused) {
            }
        }
        if (z) {
            jSONObject.remove(AbstractC0047.f625);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static List m1571(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            Object objOpt = jSONArray.opt(i);
            if (objOpt != null) {
                arrayList.add(objOpt);
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1574(JSONObject jSONObject, int i, HashMap map) {
        try {
            JSONArray jSONArrayNames = jSONObject.names();
            if (jSONArrayNames != null) {
                for (int i2 = 0; i2 < jSONArrayNames.length(); i2++) {
                    String strOptString = jSONArrayNames.optString(i2);
                    Object obj = null;
                    Integer num = map != null ? (Integer) map.get(strOptString) : null;
                    String strM1569 = m1569(jSONObject.opt(strOptString), num != null ? num.intValue() : i);
                    if (strM1569 != null) {
                        if (!strM1569.equals("")) {
                            obj = strM1569;
                        }
                        jSONObject.put(strOptString, obj);
                    }
                }
            }
        } catch (JSONException e) {
            String str = f3633;
            AbstractC0182.m1156(str, str, StringFog.decrypt("NrjgKzhigbcfo/YlPiuZsVOg4Ssk\n", "c8qSREpC99Y=\n"), e, null, false);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m1569(Object obj, int i) throws JSONException {
        if (obj instanceof JSONObject) {
            m1574((JSONObject) obj, i, (HashMap) null);
        } else {
            if (obj instanceof JSONArray) {
                JSONArray jSONArray = (JSONArray) obj;
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    String strM1569 = m1569(jSONArray.opt(i2), i);
                    if (strM1569 != null) {
                        jSONArray.put(i2, strM1569);
                    }
                }
            } else if (obj instanceof String) {
                String str = (String) obj;
                if (str.length() <= i) {
                    return str;
                }
                StringBuilder sb = new StringBuilder();
                sb.append(str.substring(0, i));
                return AbstractC0829.m1456("ueiLTMXDZaT0p9EB1Zg=\n", "l8alZLGxEMo=\n", sb);
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static LinkedHashMap m1570(JSONObject jSONObject, C0530 c0530) {
        AbstractC0963 abstractC0963M1478;
        if (jSONObject == null) {
            return null;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            c0530.getClass();
            try {
                String strOptString = jSONObject.optString(next);
                if (jSONObject.opt(next) instanceof String) {
                    strOptString = StringFog.decrypt("EA==\n", "MrduBYxPT7I=\n") + strOptString + StringFog.decrypt("JA==\n", "Bjx11s/6ISg=\n");
                }
                abstractC0963M1478 = new C0882().m1478(AbstractC0727.m1434(c0530.f2426.f2381, strOptString, strOptString));
            } catch (Throwable th) {
                String str = c0530.f2426.f2381;
                StringBuilder sbM1349 = AbstractC0594.m1349("BZWfkhCHay4ylISTBYc=\n", "QOft/WKnG08=\n", new StringBuilder(), next);
                sbM1349.append(StringFog.decrypt("6ilgi5JjtIQ=\n", "ykoP5eEXjqQ=\n"));
                sbM1349.append(jSONObject.optString(next));
                AbstractC0923.m1543(str, sbM1349.toString(), th, null);
                abstractC0963M1478 = null;
            }
            linkedHashMap.put(next, abstractC0963M1478);
        }
        return linkedHashMap;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static JSONObject m1572(int i, int i2, long j, long j2) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (j > -1) {
                jSONObject.put(StringFog.decrypt("dA==\n", "DBqGdhc7P+Q=\n"), i);
                jSONObject.put(StringFog.decrypt("Kw==\n", "Un41ZDV2oXM=\n"), i2);
                jSONObject.put(StringFog.decrypt("Pg==\n", "Shj+5fYQzjE=\n"), j);
                jSONObject.put(StringFog.decrypt("Fg==\n", "Y/xOYdy43zg=\n"), j2);
                return jSONObject;
            }
            jSONObject.put(StringFog.decrypt("Fg==\n", "buXt1ewFydk=\n"), -1);
            jSONObject.put(StringFog.decrypt("/Q==\n", "hKucsh4Gc84=\n"), -1);
            jSONObject.put(StringFog.decrypt("/Q==\n", "iVG09x4PVl8=\n"), -1);
            jSONObject.put(StringFog.decrypt("cw==\n", "Bl3e9vfVqIk=\n"), -1);
            return jSONObject;
        } catch (JSONException e) {
            String str = f3633;
            AbstractC0182.m1156(str, str, StringFog.decrypt("ZQ41k+DrkXRFHTOV/KzSakEPM6j9vpFuABY0k/w=\n", "IHxH/JLL8gY=\n"), e, null, false);
            return jSONObject;
        }
    }
}
