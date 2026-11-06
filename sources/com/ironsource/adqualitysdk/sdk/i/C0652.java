package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.ISAdQualityAdType;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴰ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0652 {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final String f2679;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final String f2680;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final List f2681;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final JSONObject f2682;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final ISAdQualityAdType f2683;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String f2684;

    static {
        StringFog.decrypt("fpEzoA==\n", "CuhDxUIrPCQ=\n");
        StringFog.decrypt("sLFy+KFO\n", "0dUmgdErzN4=\n");
        StringFog.decrypt("QzeZ8peB\n", "M1brk/rybqU=\n");
        StringFog.decrypt("uAePaKeYqme8Fw==\n", "2WT7AdHx3g4=\n");
        StringFog.decrypt("LDP6vlDWglo/KA==\n", "WlqfyRa/7i4=\n");
        StringFog.decrypt("cwWmc9lcK7NDBbBR1Us=\n", "BGDEJbA5XMA=\n");
    }

    public C0652(JSONObject jSONObject) {
        this.f2683 = ISAdQualityAdType.UNKNOWN;
        this.f2684 = AbstractC0668.m1416(jSONObject.optString(StringFog.decrypt("jVBmMA==\n", "+SkWVVTKHMY=\n")));
        String strM1416 = AbstractC0668.m1416(jSONObject.optString(StringFog.decrypt("VLHCIdRR\n", "NdWWWKQ0kIg=\n")));
        if (!TextUtils.isEmpty(strM1416)) {
            this.f2683 = ISAdQualityAdType.fromInt(Integer.parseInt(strM1416));
        }
        this.f2682 = jSONObject.optJSONObject(StringFog.decrypt("2N49vfcf\n", "qL9P3JpsiPY=\n"));
        String strDecrypt = StringFog.decrypt("mtPFROVCNYeeww==\n", "+7CxLZMrQe4=\n");
        List arrayList = new ArrayList();
        String str = AbstractC0962.f3633;
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(strDecrypt);
        this.f2681 = jSONArrayOptJSONArray != null ? AbstractC0962.m1571(jSONArrayOptJSONArray) : arrayList;
        this.f2680 = AbstractC0668.m1416(jSONObject.optString(StringFog.decrypt("VF3ChYNGasZHRg==\n", "IjSn8sUvBrI=\n")));
        this.f2679 = AbstractC0668.m1416(jSONObject.optString(StringFog.decrypt("ypPmMPOW1Zj6k/AS/4E=\n", "vfaEZprzous=\n")));
    }
}
