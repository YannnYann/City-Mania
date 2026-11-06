package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｖ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0987 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String f3704;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final boolean f3705;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final boolean f3706;

    static {
        StringFog.decrypt("hKWC2sUqH0enuoA=\n", "wdPntLFpcCk=\n");
        StringFog.decrypt("JX7VW3SR15Epew==\n", "SB+8NSD5pfQ=\n");
        StringFog.decrypt("NCWln9LBK5A7\n", "VUPR+qCMSvk=\n");
        StringFog.decrypt("4SRG7dS1\n", "jEEyhbvR3Aw=\n");
    }

    public C0987(JSONObject jSONObject) {
        this.f3706 = jSONObject.optBoolean(StringFog.decrypt("Zs1ICrJb05FqyA==\n", "C6whZOYzofQ=\n"));
        this.f3705 = jSONObject.optBoolean(StringFog.decrypt("NspeYLFlZSA5\n", "V6wqBcMoBEk=\n"));
        this.f3704 = AbstractC0668.m1416(jSONObject.optString(StringFog.decrypt("QZ49dLQS\n", "LPtJHNt2OR8=\n")));
    }
}
