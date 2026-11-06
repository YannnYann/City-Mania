package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Calendar;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﻪ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0968 implements InterfaceC0387 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0893 f3666;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ r f3667;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ Context f3668;

    public C0968(C0893 c0893, Context context, r rVar) {
        this.f3666 = c0893;
        this.f3668 = context;
        this.f3667 = rVar;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0387
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1262(C0571 c0571, String str) {
        JSONObject jSONObject;
        int i = c0571 != null ? c0571.f2516.f2540 : -1;
        AbstractC0182.m1149(StringFog.decrypt("Ngj3nkY9Q+wKC/OW\n", "ZG2a8TJYAIM=\n"), StringFog.decrypt("E7Zww3M0UvcisGvCZjRW/Tiia8shckf9O+RxyXNiUOBs5A==\n", "VsQCrAEUNZI=\n") + i);
        if (i != 403) {
            C0893 c0893 = this.f3666;
            int i2 = c0893.f3411;
            c0893.f3411 = i2 + 1;
            if (i2 < c0893.m1527()) {
                C0893 c08932 = this.f3666;
                synchronized (c08932) {
                    jSONObject = c08932.f2612;
                }
                m1581(jSONObject.optInt(StringFog.decrypt("D9YX\n", "bKRjadZuJfU=\n"), c08932.f3429));
            }
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0387
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1261(C0571 c0571) {
        JSONObject jSONObject;
        int i;
        String str;
        JSONObject jSONObject2;
        try {
            C0593 c0593 = c0571.f2516;
            i = c0593.f2540;
            str = c0593.f2539;
        } catch (Exception e) {
            try {
                AbstractC1003.m1593(StringFog.decrypt("2j6UVTmdXo7mPZBd\n", "iFv5Ok34HeE=\n"), StringFog.decrypt("e/V/qfXXrVFM9GSo4NevVVPoeaOnlLJeWO5q5u2Esl4=\n", "PocNxof33TA=\n"), e, false, true, false);
            } catch (Throwable unused) {
            }
        }
        if (i >= 200 && i <= 299) {
            if (!TextUtils.isEmpty(c0571.f2517)) {
                jSONObject2 = new JSONObject(c0571.f2517);
            } else {
                jSONObject2 = new JSONObject();
            }
            if (jSONObject2.optBoolean(StringFog.decrypt("o9Sq\n", "0LDG6tmY+gM=\n"))) {
                C0204.m1165().m1173();
            }
            String strDecrypt = StringFog.decrypt("+R/5QWo0ZtXFHP1J\n", "q3qULh5RJbo=\n");
            AbstractC0182.m1155(strDecrypt, strDecrypt, StringFog.decrypt("iT7h6+zUuKWvJ+7xqdWuoL8i9O3th6istC3r77M=\n", "2kuCiImny8M=\n"), jSONObject2, true);
            JSONObject jSONObjectM1573 = AbstractC0962.m1573(jSONObject2, false);
            C0893 c0893 = this.f3666;
            long jOptLong = jSONObjectM1573.optLong(StringFog.decrypt("xMejtw==\n", "qKTXxAnjKaU=\n"), 0L);
            if (!c0893.f3407) {
                C0773 c0773 = c0893.f3423;
                c0773.getClass();
                C0773.m1446().post(new C0802(c0773, C0893.f3400, "" + jOptLong));
                c0893.f3407 = true;
            }
            jSONObjectM1573.remove(StringFog.decrypt("GLOL\n", "a8f4euHsfKM=\n"));
            C0773 c07732 = this.f3666.f3423;
            String strDecrypt2 = StringFog.decrypt("XxYnPsg+FspOFCs4yw==\n", "LXVIUK5XceQ=\n");
            String string = jSONObjectM1573.toString();
            c07732.getClass();
            C0773.m1446().post(new C0798(c07732, strDecrypt2, string));
            String strDecrypt3 = StringFog.decrypt("Tb0=\n", "Oc5HoheupaU=\n");
            String str2 = AbstractC0061.f813;
            jSONObject2.put(strDecrypt3, Calendar.getInstance().getTimeInMillis());
            jSONObject2.put(StringFog.decrypt("t0k=\n", "wj31RAynJkY=\n"), SystemClock.elapsedRealtime());
            jSONObject2.put(StringFog.decrypt("tM0H9Q==\n", "2aBmgyMfGH8=\n"), AbstractC0077.m1082(this.f3668));
            C0893 c08932 = this.f3666;
            long j = c0571.f2515;
            c08932.getClass();
            if (jSONObject2.has(StringFog.decrypt("odjh\n", "0qyS5hhRKhQ=\n"))) {
                try {
                    jSONObject2.put(StringFog.decrypt("8u59\n", "gZoOLpfP3ns=\n"), jSONObject2.optLong(StringFog.decrypt("HaWc\n", "btHvgI5rRLE=\n")) + (j / 2));
                } catch (JSONException unused2) {
                }
            }
            this.f3666.mo1381(jSONObject2);
            this.f3666.m1528();
            this.f3666.m1524();
            C0893 c08933 = this.f3666;
            synchronized (c08933) {
                jSONObject = c08933.f2612;
            }
            m1581(jSONObject.optInt(StringFog.decrypt("dY/b\n", "Fu6v9X1hrR4=\n"), c08933.f3428));
            if (this.f3666.m1525()) {
                C0893 c08934 = this.f3666;
                if (c08934.f3411 == c08934.m1527()) {
                    AbstractC1003.m1592(StringFog.decrypt("aqVbA23LklBWpl8L\n", "OMA2bBmu0T8=\n"), StringFog.decrypt("w8YyqtztDDrxyiy53b9YM7DGLr/L5lwov8clv8vmXCi8gymy0OtFPfzKOrndv1s15MtgrNX+RTKw\nyi61zb9eOeHWJa/N\n", "kKNA3LmfLFw=\n"), (Throwable) null, true);
                    return;
                }
                return;
            }
            return;
        }
        mo1262(c0571, str);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1581(int i) {
        synchronized (this.f3666) {
            try {
                if (this.f3666.f3421 != null) {
                    AbstractC0272.m1215(new C0998(this), i);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
