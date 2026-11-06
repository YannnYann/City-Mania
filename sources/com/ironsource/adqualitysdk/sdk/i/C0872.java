package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.concurrent.Executors;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﭔ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0872 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static final String f3345;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final ArrayList f3346 = new ArrayList();

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String f3347;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0785 f3348;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0773 f3349;

    static {
        StringFog.decrypt("WWBEJ86pFGw=\n", "CwUpSLrMUC4=\n");
        StringFog.decrypt("doJDwKjD6v5p3knV48Xps3CVT8y5xO//\n", "AvAio82hi50=\n");
        StringFog.decrypt("Am0oj7q563AUYTWHovXyZxM=\n", "cQJH4tbYxgM=\n");
        f3345 = StringFog.decrypt("+Xm35udf8M+xBpaywF2uiJ8sz7zuGeTSvjuB+/9a59LwGYq7/Vqz2eg3jOPuCbLPqTfN7ugepdWJ\nMJHF/yOy67I7lO+gRg==\n", "3Un4i4tr17w=\n");
    }

    public C0872(Context context, C0785 c0785, String str) {
        this.f3349 = new C0773(context, StringFog.decrypt("+nYldWBAVyflKi9gK0ZUavxhKXlxR1Im\n", "jgREFgUiNkQ=\n"), StringFog.decrypt("7PMttIbBDPf6/zC8no0V4P0=\n", "n5xC2eqgIYQ=\n"));
        this.f3348 = c0785;
        this.f3347 = str;
        AbstractC0885 abstractC0885M1491 = AbstractC0885.m1491();
        C0913 c0913 = new C0913(this);
        C0893 c0893 = (C0893) abstractC0885M1491;
        Handler handler = c0893.f3421;
        if (handler != null) {
            handler.post(new C0902(c0893, c0913));
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m1464(AbstractC0703 abstractC0703, InterfaceC0054 interfaceC0054) {
        String str;
        AbstractC0703 abstractC0703M1462 = m1462(abstractC0703);
        String strMo1425 = abstractC0703M1462.mo1425();
        StringBuilder sb = new StringBuilder();
        synchronized (this) {
            str = this.f3347;
        }
        sb.append(str);
        String strM1159 = AbstractC0202.m1159("NQ==\n", "GmqP9jFVV2M=\n", sb, strMo1425);
        String strReplace = abstractC0703M1462.mo1425().replace(StringFog.decrypt("yw==\n", "5Nfc4POVeY0=\n"), StringFog.decrypt("GQ==\n", "N9KS+cTCU2o=\n"));
        if (AbstractC0885.m1491().mo1497() && (AbstractC0885.m1491().mo1495() || this.f3349.m1448(strReplace) == null)) {
            C0903 c0903 = new C0903(this, strM1159, abstractC0703, strReplace, interfaceC0054);
            String str2 = AbstractC0061.f813;
            try {
                Executors.newSingleThreadExecutor().execute(c0903);
            } catch (Throwable th) {
                AbstractC1003.m1592(AbstractC0061.f813, StringFog.decrypt("dXSgyWUV9GhVZafSflv2MFF1q8h0FeVxQ20=\n", "MAbSphc1kRA=\n"), th, false);
            }
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m1465(AbstractC0703 abstractC0703, InterfaceC0054 interfaceC0054) {
        boolean z;
        if (TextUtils.isEmpty(abstractC0703.f2841) || TextUtils.isEmpty(abstractC0703.f2839)) {
            return null;
        }
        String strReplace = m1462(abstractC0703).mo1425().replace(StringFog.decrypt("yw==\n", "5Nfc4POVeY0=\n"), StringFog.decrypt("GQ==\n", "N9KS+cTCU2o=\n"));
        synchronized (this) {
            try {
                if (AbstractC0885.m1491().mo1503()) {
                    z = true;
                } else {
                    this.f3346.add(new C0907(this, abstractC0703, interfaceC0054));
                    z = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            m1464(abstractC0703, interfaceC0054);
        }
        return this.f3349.m1448(strReplace);
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static AbstractC0703 m1462(AbstractC0703 abstractC0703) {
        JSONObject jSONObject;
        if (abstractC0703 instanceof C0795) {
            AbstractC0885 abstractC0885M1491 = AbstractC0885.m1491();
            C0893 c0893 = (C0893) abstractC0885M1491;
            synchronized (c0893) {
                jSONObject = c0893.f2612;
            }
            if (jSONObject.has(StringFog.decrypt("gMxq\n", "46scbCEZHkI=\n"))) {
                String strMo1510 = abstractC0885M1491.mo1510();
                if (!strMo1510.equals(abstractC0703.f2839)) {
                    abstractC0703 = ((C0795) abstractC0703).mo1451(strMo1510);
                }
            }
        }
        m1463(abstractC0703);
        return abstractC0703;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002d  */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void m1463(com.ironsource.adqualitysdk.sdk.i.AbstractC0703 r3) {
        /*
            boolean r0 = r3 instanceof com.ironsource.adqualitysdk.sdk.i.C0795
            if (r0 != 0) goto L5
            return
        L5:
            boolean r0 = r3.f2836
            if (r0 == 0) goto L2d
            com.ironsource.adqualitysdk.sdk.i.ﭩ r0 = com.ironsource.adqualitysdk.sdk.i.AbstractC0885.m1491()
            com.ironsource.adqualitysdk.sdk.i.ﮇ r0 = (com.ironsource.adqualitysdk.sdk.i.C0893) r0
            monitor-enter(r0)
            org.json.JSONObject r1 = r0.f2612     // Catch: java.lang.Throwable -> L2a
            monitor-exit(r0)
            java.lang.String r0 = "FT7g\n"
            java.lang.String r2 = "ckSDo0Z7orE=\n"
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.StringFog.decrypt(r0, r2)
            boolean r0 = r1.optBoolean(r0)
            if (r0 == 0) goto L2d
            java.lang.String r0 = "iwmGXo3UOEKEFIo=\n"
            java.lang.String r1 = "4XrpMKOzQmw=\n"
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.StringFog.decrypt(r0, r1)
            goto L35
        L2a:
            r3 = move-exception
            monitor-exit(r0)
            throw r3
        L2d:
            java.lang.String r0 = "+dogH3oKYL0=\n"
            java.lang.String r1 = "k6lPcVRvDt4=\n"
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.StringFog.decrypt(r0, r1)
        L35:
            r3.f2838 = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.C0872.m1463(com.ironsource.adqualitysdk.sdk.i.ᵤ):void");
    }
}
