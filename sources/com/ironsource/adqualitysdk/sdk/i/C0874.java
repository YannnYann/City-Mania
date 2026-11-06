package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﭖ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0874 extends C0263 {

    /* JADX INFO: renamed from: ףּ, reason: contains not printable characters */
    public final boolean f3354;

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public final boolean f3355;

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public final int f3356;

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public final String f3357;

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public final String f3358;

    public C0874(JSONObject jSONObject) {
        this.f3354 = false;
        this.f3358 = jSONObject.optString(StringFog.decrypt("1aL6To4wyDrAv/VMlzw=\n", "tMa7LfpZvlM=\n"));
        this.f3357 = jSONObject.optString(StringFog.decrypt("n3OixTyTR9GEd7PgG5dd97hkpfU8jg==\n", "6BbAk1X2MJI=\n"));
        this.f3356 = jSONObject.optInt(StringFog.decrypt("JUc44c7cags2\n", "UiJat6e5HUI=\n"), -1);
        this.f3355 = jSONObject.optBoolean(StringFog.decrypt("TuQ6B0l/p/RC6jIQRGq98E4=\n", "K5xbZD0+xIA=\n"));
        this.f3354 = jSONObject.optBoolean(StringFog.decrypt("tWlS0Tny/hm1aU3hFvHWHrhrXw==\n", "1Aomkliekns=\n"));
        this.f1592 = jSONObject.optString(StringFog.decrypt("aI/6kOHsFgFhiA==\n", "Avyu/6iCfGQ=\n"));
        ArrayList arrayList = null;
        this.f1591 = TextUtils.isEmpty(jSONObject.optString(StringFog.decrypt("8kgiC8Q1+Ur/\n", "hzpOW7ZQnyM=\n"))) ? null : Arrays.asList(jSONObject.optString(StringFog.decrypt("atyijbjZZYVn\n", "H67O3cq8A+w=\n")).split(StringFog.decrypt("wQ==\n", "7e3i5AK26+k=\n")));
        this.f1590 = jSONObject.optBoolean(StringFog.decrypt("OceM9zgUZW8pw6HBLh4=\n", "TLTpoF12MwY=\n"));
        boolean z = true;
        this.f1589 = jSONObject.optBoolean(StringFog.decrypt("lC0JEQ4EnuyCLAUrGw==\n", "4V5sW29y/58=\n"), true);
        if (TextUtils.isEmpty(jSONObject.optString(StringFog.decrypt("U485S9jOdvtaiA==\n", "OfxtJJGgHJ4=\n"))) && !jSONObject.optBoolean(StringFog.decrypt("u8vrVUga3Mqrz81uRB3k1w==\n", "zriOAi14iqM=\n")) && !jSONObject.optBoolean(StringFog.decrypt("D5fwGL5IG3IIi/gqmEYxfxSQ\n", "euSVT9sqWBo=\n"))) {
            z = false;
        }
        this.f1587 = z;
        this.f1586 = jSONObject.optBoolean(StringFog.decrypt("cSq9HVv6Ua1hLpsmV/1psA==\n", "BFnYSj6YB8Q=\n"));
        this.f1585 = jSONObject.optBoolean(StringFog.decrypt("7OXqvZBLdHXT5Q==\n", "mZaP+Og/BhQ=\n"));
        this.f1588 = jSONObject.optBoolean(StringFog.decrypt("rwec4Ae+co6qGJz6F7BQjr8Dig==\n", "2nT5rXLSBuc=\n"));
        this.f1584 = jSONObject.optBoolean(StringFog.decrypt("HeVp3OYRCLI5/nbc7g8HsgM=\n", "cJAFqI9hZNc=\n"));
        this.f1583 = jSONObject.optBoolean(StringFog.decrypt("YVaDL/VkjfZ8\n", "CDvzYJs04oU=\n"));
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(StringFog.decrypt("nJ0Vk/xw/Z+Nmh+W6g==\n", "6vRw5I8kktY=\n"));
        if (jSONArrayOptJSONArray != null) {
            arrayList = new ArrayList();
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                Object objOpt = jSONArrayOptJSONArray.opt(i);
                if (objOpt != null) {
                    arrayList.add(objOpt);
                }
            }
        }
        if (arrayList != null) {
            this.f1582 = arrayList;
        }
    }
}
