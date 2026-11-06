package com.ironsource;

import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.g4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3613g4 {
    public static final String a = "SSA_CORE.SDKController.runFunction";

    public static String a(C3631h4 c3631h4) {
        return String.format("%1$s('%2$s%3$s'%4$s)", a, c3631h4.b(), a(c3631h4.c()), b(c3631h4));
    }

    private static String b(C3631h4 c3631h4) {
        return (c3631h4.d() == null || c3631h4.a() == null) ? "" : String.format(", '%1$s', '%2$s'", c3631h4.d(), c3631h4.a());
    }

    private static String a(JSONObject jSONObject) {
        if (jSONObject != null && jSONObject.length() != 0) {
            return jSONObject.toString();
        }
        return "";
    }
}
