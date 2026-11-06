package com.ironsource;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public interface W {

    public static final class a implements W {
        private final JSONObject a;
        private final D7 b;

        public a(JSONObject applicationConfig, D7 epService) {
            Intrinsics.checkNotNullParameter(applicationConfig, "applicationConfig");
            Intrinsics.checkNotNullParameter(epService, "epService");
            this.a = applicationConfig;
            this.b = epService;
        }

        @Override // com.ironsource.W
        public String a() {
            String strA = this.b.a();
            if (StringsKt__StringsKt.isBlank(strA)) {
                strA = null;
            }
            if (strA != null) {
                return strA;
            }
            String strOptString = this.a.optString("controllerUrl");
            Intrinsics.checkNotNull(strOptString);
            String str = StringsKt__StringsKt.isBlank(strOptString) ? null : strOptString;
            return str == null ? "" : str;
        }

        @Override // com.ironsource.W
        public JSONObject b() {
            JSONObject jSONObjectOptJSONObject = this.a.optJSONObject("controllerConfig");
            return jSONObjectOptJSONObject == null ? new JSONObject() : jSONObjectOptJSONObject;
        }

        @Override // com.ironsource.W
        public int c() {
            int iOptInt = this.a.optInt("debugMode", 0);
            if (this.a.optBoolean(b.e, false)) {
                return 3;
            }
            return iOptInt;
        }
    }

    public static final class b {
        public static final b a = new b();
        public static final String b = "controllerUrl";
        public static final String c = "controllerConfig";
        public static final String d = "debugMode";
        public static final String e = "adptDebugMode";

        private b() {
        }
    }

    String a();

    JSONObject b();

    int c();
}
