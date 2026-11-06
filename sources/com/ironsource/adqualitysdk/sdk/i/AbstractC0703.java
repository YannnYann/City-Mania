package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵤ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0703 {

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static final String f2834;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static final String f2835 = StringFog.decrypt("QFtEhg==\n", "JTUyqSlkUjY=\n");

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public String f2838;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String f2839;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String f2840;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String f2841;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public boolean f2837 = true;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public boolean f2836 = true;

    static {
        StringFog.decrypt("wjoNhXohqfk=\n", "qEli61REx5o=\n");
        StringFog.decrypt("DmjCADKTRFgBdc4=\n", "ZButbhz0PnY=\n");
        f2834 = StringFog.decrypt("uRLI\n", "2HyspJ2XJdc=\n");
    }

    public AbstractC0703(String str, String str2, String str3, String str4) {
        this.f2841 = str;
        this.f2840 = str2;
        this.f2839 = str3;
        this.f2838 = str4;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String m1424() {
        JSONObject jSONObject;
        String strDecrypt = StringFog.decrypt("AP+ZsW/epM1d\n", "cpr03hu7wK8=\n");
        if (this.f2837) {
            C0893 c0893 = (C0893) AbstractC0885.m1491();
            synchronized (c0893) {
                jSONObject = c0893.f2612;
            }
            String strOptString = jSONObject.optString(c0893.f3448);
            if (!TextUtils.isEmpty(strOptString)) {
                StringBuilder sb = new StringBuilder();
                sb.append(strDecrypt);
                sb.append(f2835);
                sb.append(strOptString);
                return AbstractC0829.m1456("0A==\n", "/8CP2rwjuOk=\n", sb);
            }
        }
        return strDecrypt;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public String mo1425() {
        return m1424() + this.f2841 + StringFog.decrypt("5Q==\n", "yvBA5yAbzI8=\n") + this.f2840 + StringFog.decrypt("Bw==\n", "KVzCTMcgVq0=\n") + f2834 + StringFog.decrypt("gw==\n", "reAedyvC47E=\n") + this.f2839 + StringFog.decrypt("tg==\n", "mLg6SqjSr3A=\n") + this.f2838;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m1426(String str) {
        String strM1424 = m1424();
        StringBuilder sb = new StringBuilder();
        sb.append(strM1424);
        sb.append(this.f2841);
        sb.append(StringFog.decrypt("Cg==\n", "JTtQephaXsQ=\n"));
        String str2 = f2834;
        sb.append(str2);
        StringBuilder sbM1349 = AbstractC0594.m1349("LQ==\n", "Au4YzE2wleo=\n", sb, str);
        sbM1349.append(StringFog.decrypt("6w==\n", "xIGQGJ/hafk=\n"));
        sbM1349.append(this.f2840);
        StringBuilder sbM13492 = AbstractC0594.m1349("DA==\n", "Iq9li92Z6DQ=\n", sbM1349, str2);
        sbM13492.append(StringFog.decrypt("lA==\n", "uimNU/MwyCM=\n"));
        sbM13492.append(this.f2839);
        sbM13492.append(StringFog.decrypt("ow==\n", "jflR5SOcIJc=\n"));
        sbM13492.append(this.f2838);
        return sbM13492.toString();
    }
}
