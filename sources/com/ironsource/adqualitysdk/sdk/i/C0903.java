package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Calendar;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﯦ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0903 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ C0872 f3464;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0054 f3465;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ String f3466;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0703 f3467;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f3468;

    public C0903(C0872 c0872, String str, AbstractC0703 abstractC0703, String str2, InterfaceC0054 interfaceC0054) {
        this.f3464 = c0872;
        this.f3468 = str;
        this.f3467 = abstractC0703;
        this.f3466 = str2;
        this.f3465 = interfaceC0054;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        boolean z;
        int i;
        String str = this.f3468;
        AbstractC0703 abstractC0703 = this.f3467;
        String str2 = this.f3466;
        InterfaceC0054 interfaceC0054 = this.f3465;
        C0767 c0767 = this.f3464.f3348.f3122;
        synchronized (c0767) {
            z = c0767.f3097;
        }
        if (!z) {
            m1534(abstractC0703, interfaceC0054);
            return;
        }
        try {
            C0571 c0571M1513 = AbstractC0890.m1513(str);
            if (c0571M1513 == null || c0571M1513.f2516.f2540 != 200) {
                boolean z2 = c0571M1513 != null && ((i = c0571M1513.f2516.f2540) == 403 || i == 404);
                if (!this.f3464.f3348.f3122.m1445()) {
                    m1534(abstractC0703, interfaceC0054);
                    return;
                }
                if (z2 && str.contains(StringFog.decrypt("tHp/pA==\n", "0RQJiwc/KeM=\n"))) {
                    abstractC0703.f2837 = false;
                    this.f3464.m1465(abstractC0703, interfaceC0054);
                    return;
                }
                if (z2 && str.endsWith(StringFog.decrypt("kZT7mXS2wg+eifc=\n", "++eU91rRuCE=\n"))) {
                    abstractC0703.f2836 = false;
                    this.f3464.m1465(abstractC0703, interfaceC0054);
                    return;
                }
                int i2 = c0571M1513 != null ? c0571M1513.f2516.f2540 : -1;
                AbstractC1003.m1592(StringFog.decrypt("N1PeNSKKCeE=\n", "ZTazWlbvTaM=\n"), StringFog.decrypt("3cVwJAiC0yT+0HogBIiUYg==\n", "m6QZSG3m80I=\n") + str + StringFog.decrypt("O4CsXr8pyNw3w7BOu30=\n", "F6DfKt5dva8=\n") + i2, (Throwable) null, false);
                this.f3464.getClass();
                AbstractC0272.m1212(new C0880(interfaceC0054, str2, null));
                return;
            }
            String strM1533 = m1533(c0571M1513.f2517);
            if (!Charset.forName(StringFog.decrypt("GXo0wvIY1/E=\n", "TCkZg6Fbnrg=\n")).newEncoder().canEncode(strM1533)) {
                AbstractC1003.m1592(StringFog.decrypt("WjtlGFy9agg=\n", "CF4IdyjYLko=\n"), StringFog.decrypt("VMOfoDeNL8N0ho+mPJQ1wTDAjr0j3Q==\n", "EKb80k79W6Y=\n") + str + StringFog.decrypt("9suTpTYQ6hyliJWlNBDvG7KIn6MjA/A=\n", "1qj8y0Jxg3I=\n"), (Throwable) null, false);
                this.f3464.getClass();
                AbstractC0272.m1212(new C0880(interfaceC0054, str2, null));
                return;
            }
            if (TextUtils.isEmpty(strM1533)) {
                AbstractC1003.m1592(StringFog.decrypt("vNnG+NOj4jM=\n", "7ryrl6fGpnE=\n"), StringFog.decrypt("Ns5KQOPth3EdgRpU6eCKfByBDEf/4cU=\n", "eKFqNZCM5R0=\n") + str, (Throwable) null, false);
                this.f3464.getClass();
                AbstractC0272.m1212(new C0880(interfaceC0054, str2, null));
                return;
            }
            C0773 c0773 = this.f3464.f3349;
            c0773.m1449(str2, strM1533);
            String str3 = str2 + StringFog.decrypt("EvGq2S0W0iNd6a4=\n", "PJ3Lqlljokc=\n");
            String str4 = AbstractC0061.f813;
            c0773.m1449(str3, Long.toString(Calendar.getInstance().getTimeInMillis()));
            this.f3464.getClass();
            AbstractC0272.m1212(new C0880(interfaceC0054, str2, strM1533));
        } catch (Exception e) {
            if (!this.f3464.f3348.f3122.m1445()) {
                m1534(abstractC0703, interfaceC0054);
                return;
            }
            AbstractC1003.m1592(StringFog.decrypt("fhXBSMASTfs=\n", "LHCsJ7R3Cbk=\n"), AbstractC0202.m1159("XTynex5BWFRsOrx6C0FNVHUhoXFMMktDcSCyNAoTUFw4\n", "GE7VFGxhPzE=\n", new StringBuilder(), str), (Throwable) e, false);
            this.f3464.getClass();
            AbstractC0272.m1212(new C0880(interfaceC0054, str2, null));
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m1533(String str) {
        JSONObject jSONObject = new JSONObject(str);
        String strOptString = jSONObject.optString(StringFog.decrypt("3IXF\n", "ueumkwYM14Q=\n"));
        if (TextUtils.isEmpty(strOptString)) {
            return str;
        }
        byte[] bArrM1072 = AbstractC0061.m1072(strOptString, C0872.f3345, jSONObject.optString(StringFog.decrypt("q0U=\n", "wjOcLppNo9U=\n")), jSONObject.optString(StringFog.decrypt("S6hCOQ==\n", "OMkuTYSHYOI=\n")));
        if (bArrM1072 == null) {
            return "";
        }
        try {
            if (bArrM1072.length >= 2 && (bArrM1072[0] & 255) == 31 && (bArrM1072[1] & 255) == 139) {
                bArrM1072 = AbstractC0236.m1198(bArrM1072);
            }
            return new String(bArrM1072, StringFog.decrypt("lLO8eN0=\n", "wef6VeVPYHg=\n"));
        } catch (IOException e) {
            AbstractC1003.m1592(StringFog.decrypt("evfSYcGnDO0=\n", "KJK/DrXCSK8=\n"), StringFog.decrypt("kLgt8Vfjohazpj7qTK2sWLKwNu5Vpq9Ypasm8kqirw==\n", "1cpfniXDy3g=\n"), (Throwable) e, false);
            return "";
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1534(AbstractC0703 abstractC0703, InterfaceC0054 interfaceC0054) {
        C0767 c0767 = this.f3464.f3348.f3122;
        C0906 c0906 = new C0906(this, abstractC0703, interfaceC0054);
        synchronized (c0767) {
            c0767.f3096.add(c0906);
        }
    }
}
