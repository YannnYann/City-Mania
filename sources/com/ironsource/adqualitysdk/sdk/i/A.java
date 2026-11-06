package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class A {

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public final List f61;

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public final List f62;

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public final List f63;

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public final List f64;

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public final boolean f65;

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public final boolean f66;

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final boolean f67;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final boolean f68;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final boolean f69;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final boolean f70;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final String f71;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final boolean f72;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String f73;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String f74;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String f75;

    public A() {
        this.f64 = new ArrayList();
        this.f63 = new ArrayList();
        this.f62 = new ArrayList();
        this.f61 = new ArrayList();
    }

    public A(JSONObject jSONObject) {
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        this.f64 = new ArrayList();
        this.f63 = new ArrayList();
        this.f62 = new ArrayList();
        this.f61 = new ArrayList();
        this.f75 = jSONObject.optString(StringFog.decrypt("jQ7m87YdPEONGcPUsgca\n", "7GqwmtNqfy8=\n"));
        this.f74 = jSONObject.optString(StringFog.decrypt("yFF3icAcFUDKXkCHwA==\n", "qTUh4KVrRSE=\n"));
        this.f73 = jSONObject.optString(StringFog.decrypt("sU+aje9T6U64SA==\n", "2zzO4qY9gys=\n"));
        this.f72 = jSONObject.optBoolean(StringFog.decrypt("jmGRVlGgbKGeZbdtXadUvA==\n", "+xL0ATTCOsg=\n"));
        jSONObject.optBoolean(StringFog.decrypt("yxi6Tw0Vw43MBLJ9KxvpgNAf\n", "vmvfGGh3gOU=\n"));
        this.f71 = jSONObject.optString(StringFog.decrypt("MV+gB3priF08\n", "RC3MVwgO7jQ=\n"));
        this.f70 = jSONObject.optBoolean(StringFog.decrypt("kFmINW9u9fG4Tg==\n", "+SrGVBsHg5Q=\n"));
        this.f69 = jSONObject.optBoolean(StringFog.decrypt("Vq045OG/hJ1UgybrwZqEnUSx\n", "MMJKh4Ts4fM=\n"));
        this.f68 = jSONObject.optBoolean(StringFog.decrypt("2lPCdL9X+6nN\n", "qDahAc0kkt8=\n"));
        this.f67 = jSONObject.optBoolean(StringFog.decrypt("STDFaoxpY7JfMclQmQ==\n", "PEOgIO0fAsE=\n"), true);
        this.f66 = jSONObject.optBoolean(StringFog.decrypt("yF6sNMvU2hL3Xg==\n", "vS3JcbOgqHM=\n"));
        this.f65 = jSONObject.optBoolean(StringFog.decrypt("gy70w/cmpeOaOezT3Tub1Joyz8jgMLfR\n", "81yboJJV1rU=\n"), true);
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(StringFog.decrypt("pmXcMRnM9A==\n", "0Ay5RlCoh08=\n"));
        ArrayList arrayList4 = null;
        if (jSONArrayOptJSONArray != null) {
            arrayList = new ArrayList();
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                Object objOpt = jSONArrayOptJSONArray.opt(i);
                if (objOpt != null) {
                    arrayList.add(objOpt);
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null) {
            this.f64 = arrayList;
        }
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray(StringFog.decrypt("RgQ1/IXCS+FCFBX6usxR51UC\n", "J2dBlfOrP4g=\n"));
        if (jSONArrayOptJSONArray2 != null) {
            arrayList2 = new ArrayList();
            for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                Object objOpt2 = jSONArrayOptJSONArray2.opt(i2);
                if (objOpt2 != null) {
                    arrayList2.add(objOpt2);
                }
            }
        } else {
            arrayList2 = null;
        }
        if (arrayList2 != null) {
            this.f63 = arrayList2;
        }
        JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray(StringFog.decrypt("QL2EOVC2KOFRuo48Rg==\n", "NtThTiPiR6g=\n"));
        if (jSONArrayOptJSONArray3 != null) {
            arrayList3 = new ArrayList();
            for (int i3 = 0; i3 < jSONArrayOptJSONArray3.length(); i3++) {
                Object objOpt3 = jSONArrayOptJSONArray3.opt(i3);
                if (objOpt3 != null) {
                    arrayList3.add(objOpt3);
                }
            }
        } else {
            arrayList3 = null;
        }
        if (arrayList3 != null) {
            this.f62 = arrayList3;
        }
        JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray(StringFog.decrypt("vplGf3f2KTCyvkJpdA==\n", "3fUnDASTWmQ=\n"));
        if (jSONArrayOptJSONArray4 != null) {
            arrayList4 = new ArrayList();
            for (int i4 = 0; i4 < jSONArrayOptJSONArray4.length(); i4++) {
                Object objOpt4 = jSONArrayOptJSONArray4.opt(i4);
                if (objOpt4 != null) {
                    arrayList4.add(objOpt4);
                }
            }
        }
        if (arrayList4 != null) {
            this.f61 = arrayList4;
        }
    }
}
