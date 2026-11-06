package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺭ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0949 extends AbstractC0925 implements InterfaceC0429 {

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public JSONObject f3612;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public String f3614;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public boolean f3615;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public String f3618;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static final String f3611 = StringFog.decrypt("uaERNPBr3h+agBQp8A==\n", "9MR1XZEft3A=\n");

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public static final String f3610 = StringFog.decrypt("MugBhzf5bNAi+Rq2FvZv0A==\n", "QY11xFiXArU=\n");

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public static final String f3609 = StringFog.decrypt("BKexyS6K708Atqr4D4XsTw==\n", "Y8LFikHkgSo=\n");

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public static final String f3608 = StringFog.decrypt("ZCHgOjuD+7ljIfA5O5Plt2Uv2hYzgg==\n", "F0SUd17nktg=\n");

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public static final String f3607 = StringFog.decrypt("z6G6sTltVDXcoaqyOX1KO9qvgJ0xbA==\n", "qMTO/FwJPVQ=\n");

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public static final String f3606 = StringFog.decrypt("G1gH2wVqdI0NUwb/\n", "aD1zmmE4Efs=\n");

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public static final String f3605 = StringFog.decrypt("tS1C7utvVCe3JkPK\n", "0kg2r489MVE=\n");

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public static final String f3604 = StringFog.decrypt("3TdVWJrEGLzCIUJjjOcDkco=\n", "rlIhEemCbdA=\n");

    /* JADX INFO: renamed from: ףּ, reason: contains not printable characters */
    public static final String f3603 = StringFog.decrypt("dB5mVLlr3Tt/CHFvr0jGFnc=\n", "E3sSHcotqFc=\n");

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f3602 = StringFog.decrypt("H7/xE5GHNagBv+s3tII=\n", "bNqFQ/3mVs0=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f3601 = StringFog.decrypt("LFqltfGcyzYmWr+R1Jk=\n", "Sz/R5Z39qFM=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f3600 = StringFog.decrypt("YYBhxT9mf2Rming=\n", "EuUVjEwlChc=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f3599 = StringFog.decrypt("35MkpMmLtaPMmT0=\n", "uPZQ7brIwNA=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f3598 = StringFog.decrypt("0xB3KL5gD7LNMWIfqg==\n", "oHUDa8sTe90=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f3597 = StringFog.decrypt("IwDbe3lhr44pIc5MbQ==\n", "RGWvOAwS2+E=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f3596 = StringFog.decrypt("Fl+pBTe/Ch0SW64zAKYOFwV0vCog\n", "cTrdR0XQa3k=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f3595 = StringFog.decrypt("IuXrjHXF\n", "Voqh/xqrG3A=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public String f3617 = "";

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public double f3616 = -1.0d;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public boolean f3613 = false;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final JSONObject m1566() {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put(AbstractC0047.f629, this.f3618);
            double d = this.f3616;
            if (d > -1.0d) {
                jSONObject2.put(AbstractC0047.f579, d);
            }
            jSONObject2.put(AbstractC0047.f578, this.f3614);
            JSONObject jSONObject3 = this.f3612;
            if (jSONObject3 != null) {
                jSONObject2.put(AbstractC0047.f576, jSONObject3);
            }
        } catch (JSONException unused) {
        }
        try {
            if (jSONObject2.length() > 0) {
                if (this.f3613) {
                    jSONObject2.put(AbstractC0047.f577, true);
                }
                jSONObject.put(AbstractC0047.f580, jSONObject2);
            }
        } catch (JSONException unused2) {
        }
        return jSONObject;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m1567() {
        String strDecrypt = this.f3615 ? StringFog.decrypt("yj6SYl24DiHJJQ==\n", "rEv+Di7bfEQ=\n") : StringFog.decrypt("KCdghhew\n", "SkYO6HLCo5I=\n");
        StringBuilder sb = new StringBuilder();
        sb.append(StringFog.decrypt("D0IU3SJjvN4MCQ==\n", "YidwtEMX1bE=\n"));
        sb.append(this.f3617);
        return AbstractC0202.m1159("Kw==\n", "BT/O+I6woF4=\n", sb, strDecrypt);
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00bc  */
    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0429
    /* JADX INFO: renamed from: ﾒ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object mo1012(com.ironsource.adqualitysdk.sdk.i.C0048 r5, java.lang.String r6, java.util.ArrayList r7, com.ironsource.adqualitysdk.sdk.i.C0875 r8, com.ironsource.adqualitysdk.sdk.i.C0915 r9) {
        /*
            Method dump skipped, instruction units count: 466
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.C0949.mo1012(com.ironsource.adqualitysdk.sdk.i.İ, java.lang.String, java.util.ArrayList, com.ironsource.adqualitysdk.sdk.i.ﭘ, com.ironsource.adqualitysdk.sdk.i.ﹲ):java.lang.Object");
    }
}
