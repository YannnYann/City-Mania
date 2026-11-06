package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﮇ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0893 extends AbstractC0885 {

    /* JADX INFO: renamed from: ᕆ, reason: contains not printable characters */
    public static final String f3400;

    /* JADX INFO: renamed from: ᖸ, reason: contains not printable characters */
    public r f3405;

    /* JADX INFO: renamed from: ᖺ, reason: contains not printable characters */
    public volatile long f3406;

    /* JADX INFO: renamed from: ᗀ, reason: contains not printable characters */
    public boolean f3407;

    /* JADX INFO: renamed from: ᘥ, reason: contains not printable characters */
    public ArrayList f3408;

    /* JADX INFO: renamed from: ᵆ, reason: contains not printable characters */
    public C0143 f3409;

    /* JADX INFO: renamed from: Ḟ, reason: contains not printable characters */
    public boolean f3410;

    /* JADX INFO: renamed from: Ḹ, reason: contains not printable characters */
    public int f3411;

    /* JADX INFO: renamed from: Ḽ, reason: contains not printable characters */
    public boolean f3412;

    /* JADX INFO: renamed from: Ṿ, reason: contains not printable characters */
    public C0500 f3413;

    /* JADX INFO: renamed from: Ὑ, reason: contains not printable characters */
    public ArrayList f3414;

    /* JADX INFO: renamed from: Ῠ, reason: contains not printable characters */
    public ArrayList f3415;

    /* JADX INFO: renamed from: Ῡ, reason: contains not printable characters */
    public C0497 f3416;

    /* JADX INFO: renamed from: Ὺ, reason: contains not printable characters */
    public C1029 f3417;

    /* JADX INFO: renamed from: Ύ, reason: contains not printable characters */
    public C0316 f3418;

    /* JADX INFO: renamed from: K, reason: contains not printable characters */
    public C0601 f3419;

    /* JADX INFO: renamed from: Ⅽ, reason: contains not printable characters */
    public C3500o0 f3420;

    /* JADX INFO: renamed from: Ↄ, reason: contains not printable characters */
    public Handler f3421;

    /* JADX INFO: renamed from: く, reason: contains not printable characters */
    public C0785 f3422;

    /* JADX INFO: renamed from: っ, reason: contains not printable characters */
    public C0773 f3423;

    /* JADX INFO: renamed from: へ, reason: contains not printable characters */
    public final String f3424;

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public final String f3425;

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public final int f3426;

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public final int f3427;

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public final int f3428;

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public final int f3429;

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public final String f3430;

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public final String f3431;

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public final String f3432;

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public final String f3433;

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public final String f3434;

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public final String f3435;

    /* JADX INFO: renamed from: ףּ, reason: contains not printable characters */
    public final String f3436;

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public final String f3437;

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public final String f3438;

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public final String f3439;

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public final String f3440;

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public final String f3441;

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public final String f3442;

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final String f3443;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final String f3444;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final String f3445;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final String f3446;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final String f3447;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final String f3448 = StringFog.decrypt("FllY\n", "czcuKrGm3sU=\n");

    /* JADX INFO: renamed from: ᖭ, reason: contains not printable characters */
    public static final String f3404 = StringFog.decrypt("tLMMfkX4XISIsAh2\n", "5tZhETGdH+s=\n");

    /* JADX INFO: renamed from: ᖫ, reason: contains not printable characters */
    public static final String f3403 = StringFog.decrypt("oVxNi8njMNewXkGNyg==\n", "0z8i5a+KV/k=\n");

    /* JADX INFO: renamed from: ᖩ, reason: contains not printable characters */
    public static final String f3402 = StringFog.decrypt("XvsJPPUime9BpwMpviSaoljsBTDkJZvjRO8BOA==\n", "KoloX5BA+Iw=\n");

    /* JADX INFO: renamed from: ᖅ, reason: contains not printable characters */
    public static final String f3401 = StringFog.decrypt("KGt7PXi9FEg+Z2Y1YPENSThrejY=\n", "WwQUUBTcOTs=\n");

    static {
        StringFog.decrypt("4nXj\n", "kRGPFT5H+Q4=\n");
        f3400 = StringFog.decrypt("4EHUkFG3lpyiQtuEC5Wdg+JL2YMQpKed6E/Okiu/n4j/WtuaDw==\n", "jC6693/W8u0=\n");
    }

    public C0893() {
        StringFog.decrypt("SsGH\n", "L6zjLnhjHQk=\n");
        this.f3447 = StringFog.decrypt("a6JpEg==\n", "CMUFZkQZWEg=\n");
        this.f3446 = StringFog.decrypt("x91WVA==\n", "pK46IGeABno=\n");
        this.f3445 = StringFog.decrypt("UxjUtA==\n", "PXGxxLS8H+0=\n");
        this.f3444 = StringFog.decrypt("AT0ACA==\n", "YEl0agXK/Z8=\n");
        this.f3443 = StringFog.decrypt("jfZ/vA==\n", "7oUT2GaQluk=\n");
        this.f3442 = StringFog.decrypt("b4BA\n", "HOwkmkxWpLc=\n");
        this.f3441 = StringFog.decrypt("ZEfthw==\n", "AS6O4YxLET0=\n");
        this.f3440 = StringFog.decrypt("+cr7\n", "kKmfXVxiJmE=\n");
        this.f3439 = StringFog.decrypt("P23+xw==\n", "SwaQpOZ0w+s=\n");
        this.f3438 = StringFog.decrypt("HuCaPw==\n", "bIfiXCx9H1w=\n");
        this.f3437 = StringFog.decrypt("HninuQ==\n", "fQrL3cMjbcY=\n");
        this.f3436 = StringFog.decrypt("Nybs1N8=\n", "QECYoLNhgF4=\n");
        this.f3435 = StringFog.decrypt("VxB3vg==\n", "JHEGzTrQDLI=\n");
        this.f3434 = StringFog.decrypt("Jg5Z\n", "RXk6aDsuzy8=\n");
        this.f3433 = StringFog.decrypt("IUQD\n", "VDd3ndXL1jA=\n");
        this.f3432 = StringFog.decrypt("VQZS4A==\n", "OHI2lPWwvhw=\n");
        this.f3431 = StringFog.decrypt("x7Zf\n", "qt8sC2DO0XI=\n");
        this.f3430 = StringFog.decrypt("p5bm+g==\n", "1PWVk0T7LS8=\n");
        TimeUnit timeUnit = TimeUnit.HOURS;
        timeUnit.toMillis(24L);
        TimeUnit timeUnit2 = TimeUnit.SECONDS;
        this.f3429 = (int) timeUnit2.toMillis(5L);
        this.f3428 = (int) timeUnit.toMillis(12L);
        this.f3427 = (int) timeUnit2.toMillis(3L);
        this.f3426 = (int) timeUnit2.toMillis(10L);
        this.f3425 = StringFog.decrypt("WsKZ\n", "P6z6pbOesDU=\n");
        this.f3424 = StringFog.decrypt("BUcb\n", "MmkrfjJ57ks=\n");
        this.f3411 = 0;
        this.f3408 = null;
        this.f3407 = false;
        this.f3406 = 0L;
    }

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public final synchronized void m1523() {
        this.f3412 = false;
    }

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public final synchronized void m1524() {
        Handler handler = this.f3421;
        if (handler != null) {
            handler.post(new C0952(this));
        }
    }

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public final boolean m1525() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2612;
        }
        return jSONObject.optBoolean(this.f3425, false);
    }

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public final synchronized C0785 m1526() {
        return this.f3422;
    }

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public final int m1527() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2612;
        }
        return jSONObject.optInt(StringFog.decrypt("43aowg==\n", "jhXEsCi3+bU=\n"), 3);
    }

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public final void m1528() {
        if (mo1498()) {
            C0617 c0617 = C0617.f2607;
            c0617.getClass();
            try {
                if (c0617.f2610 != null) {
                    return;
                }
                synchronized (c0617) {
                    try {
                        if (c0617.f2610 != null) {
                            return;
                        }
                        C0159 c0159 = C0697.f2826.f2829;
                        C0625 c0625M1133 = c0159 == null ? null : c0159.m1133();
                        if (c0625M1133 != null) {
                            c0617.f2610 = c0625M1133;
                        }
                    } finally {
                    }
                }
            } catch (Exception e) {
                String str = C0617.f2608;
                AbstractC0182.m1156(str, str, StringFog.decrypt("V2SxOTJmuvRnKqQvJnGg83Nvqyh1crLpcm+h\n", "HgrFXFUU04A=\n"), e, null, false);
            }
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0885
    /* JADX INFO: renamed from: 乁 */
    public final boolean mo1492() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2612;
        }
        return jSONObject.optBoolean(this.f3443);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0885
    /* JADX INFO: renamed from: 爫 */
    public final synchronized void mo1493() {
        this.f3421.removeCallbacksAndMessages(null);
        this.f3421 = null;
        AbstractC0272.m1210(new C1010(this));
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0885
    /* JADX INFO: renamed from: ﬤ */
    public final boolean mo1494() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2612;
        }
        return jSONObject.optBoolean(this.f3435);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0885
    /* JADX INFO: renamed from: טּ */
    public final boolean mo1495() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2612;
        }
        return jSONObject.optBoolean(StringFog.decrypt("T2EjLw==\n", "PQdATqpK25Y=\n"), true);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0885
    /* JADX INFO: renamed from: סּ */
    public final boolean mo1496() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2612;
        }
        if (jSONObject == null) {
            return false;
        }
        return jSONObject.optBoolean(StringFog.decrypt("PA3A\n", "VHmvxhRyZ4g=\n"), false);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0885
    /* JADX INFO: renamed from: ףּ */
    public final boolean mo1497() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2612;
        }
        return jSONObject.optBoolean(StringFog.decrypt("efkq\n", "C51Pc9SLxuQ=\n"), true);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0885
    /* JADX INFO: renamed from: ﭖ */
    public final boolean mo1498() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2612;
        }
        return jSONObject.optBoolean(this.f3431, false);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0885
    /* JADX INFO: renamed from: ﭴ */
    public final boolean mo1499() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2612;
        }
        return jSONObject != null && jSONObject.optBoolean(this.f3439, false);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0885
    /* JADX INFO: renamed from: ﭸ */
    public final boolean mo1500() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2612;
        }
        return jSONObject != null && jSONObject.optBoolean(this.f3438, false);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0885
    /* JADX INFO: renamed from: ﮉ */
    public final boolean mo1501() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2612;
        }
        if (jSONObject == null) {
            return false;
        }
        return jSONObject.optBoolean(this.f3441, false);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0885
    /* JADX INFO: renamed from: ﮌ */
    public final boolean mo1502() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2612;
        }
        return jSONObject.optBoolean(StringFog.decrypt("TlkQ\n", "Kz9jzTsrgNg=\n"), false);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0885
    /* JADX INFO: renamed from: ﮐ */
    public final synchronized boolean mo1503() {
        return this.f3412;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0885
    /* JADX INFO: renamed from: ﱟ */
    public final String mo1504() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2612;
        }
        if (jSONObject == null) {
            return null;
        }
        String strOptString = m1380().optString(StringFog.decrypt("lwtzNg==\n", "838XQhxs39Y=\n"));
        return TextUtils.isEmpty(strOptString) ? this.f2611.f3676.optString(C0975.f3674, C0975.f3672) : strOptString;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0885
    /* JADX INFO: renamed from: ﺙ */
    public final int mo1505() {
        synchronized (this) {
            try {
                JSONObject jSONObjectM1380 = m1380();
                if (jSONObjectM1380 == null) {
                    return 20000;
                }
                return jSONObjectM1380.optInt(this.f3440, 20000);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0885
    /* JADX INFO: renamed from: ﻏ */
    public final HashMap mo1506() {
        JSONObject jSONObject;
        HashMap map = new HashMap();
        try {
            synchronized (this) {
                jSONObject = this.f2612;
            }
            String strOptString = jSONObject.optString(StringFog.decrypt("axvi\n", "D3iRhGywX9w=\n"));
            if (!TextUtils.isEmpty(strOptString)) {
                JSONObject jSONObject2 = new JSONObject(strOptString);
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    linkedHashMap.put(next, new C0512(jSONObject2.optJSONObject(next)));
                }
                return linkedHashMap;
            }
        } catch (JSONException e) {
            AbstractC1003.m1592(f3404, StringFog.decrypt("oYQRsvakoRvEkQapx+umG4GVF7L295waoJ8QvOborQ==\n", "5PZj3YSEyHU=\n"), (Throwable) e, false);
        }
        return map;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0885
    /* JADX INFO: renamed from: ﻐ */
    public final int mo1507() {
        int iOptInt;
        synchronized (this) {
            iOptInt = m1380().optInt(this.f3442, 100);
        }
        return iOptInt;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0885
    /* JADX INFO: renamed from: ﻛ */
    public final int mo1508() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2612;
        }
        return jSONObject.optInt(this.f3446, this.f3426);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0885
    /* JADX INFO: renamed from: ｋ */
    public final int mo1509() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2612;
        }
        if (jSONObject == null) {
            return 2000;
        }
        return Math.max(0, jSONObject.optInt(this.f3437, 2000));
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0885
    /* JADX INFO: renamed from: ﾇ */
    public final String mo1510() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2612;
        }
        return jSONObject.optString(StringFog.decrypt("5lWf\n", "hTLpetQNrUU=\n"), this.f3424);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0885
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1512(Context context, C0785 c0785, C0143 c0143, C0500 c0500, boolean z) {
        JSONObject jSONObject;
        this.f3423 = new C0773(context, f3402, f3401);
        this.f3422 = c0785;
        this.f3412 = false;
        this.f3410 = z;
        this.f3409 = c0143;
        this.f3421 = new Handler(Looper.getMainLooper());
        C0975 c0975 = new C0975();
        this.f3420 = new C3500o0(c0975);
        this.f3419 = new C0601(c0975);
        this.f3418 = new C0316(c0975);
        this.f3417 = new C1029();
        String strM1448 = this.f3423.m1448(f3403);
        if (strM1448 != null) {
            try {
                jSONObject = new JSONObject(strM1448);
            } catch (JSONException unused) {
                jSONObject = new JSONObject();
            }
        } else {
            jSONObject = new JSONObject();
        }
        mo1381(jSONObject);
        this.f2611 = c0975;
        this.f3413 = c0500;
        this.f3415 = new ArrayList();
        this.f3414 = new ArrayList();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0885
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1511(Context context, r rVar, boolean z) {
        boolean z2;
        JSONObject jSONObject;
        String str = AbstractC0061.f813;
        this.f3406 = SystemClock.elapsedRealtime();
        this.f3405 = rVar;
        if (z) {
            C1008 c1008 = new C1008(this);
            C0893 c0893 = (C0893) AbstractC0885.m1491();
            synchronized (c0893) {
                jSONObject = c0893.f2612;
            }
            AbstractC0272.m1213(c1008, jSONObject.optInt(c0893.f3447, c0893.f3427));
        }
        m1523();
        JSONObject jSONObject2 = new JSONObject();
        try {
            String strM1448 = this.f3423.m1448(f3400);
            jSONObject2 = new C0181(context, rVar, !TextUtils.isEmpty(strM1448) ? Long.parseLong(strM1448) : 0L).m1146(m1526().f3122.m1445());
        } catch (JSONException e) {
            String str2 = f3404;
            AbstractC0182.m1156(str2, str2, StringFog.decrypt("HcrGhMQSrUw92cCC2FXuVzbRwMvEV79LPcvA\n", "WLi067Yyzj4=\n"), e, null, false);
        }
        JSONObject jSONObject3 = jSONObject2;
        C0785 c0785M1526 = m1526();
        C0143 c0143 = this.f3409;
        String strDecrypt = StringFog.decrypt("LlRv0g==\n", "RzoGpnwpJr0=\n");
        String str3 = c0143.f1096;
        StringBuilder sb = new StringBuilder();
        if (str3 == null) {
            str3 = "";
        }
        sb.append(str3);
        sb.append(StringFog.decrypt("Eg==\n", "Pf7MGvBw9pE=\n"));
        if (strDecrypt == null) {
            strDecrypt = "";
        }
        sb.append(strDecrypt);
        String string = sb.toString();
        boolean z3 = true;
        if (!m1525() || this.f3411 == m1527()) {
            z2 = true;
            z3 = false;
        } else {
            z2 = true;
        }
        C0968 c0968 = new C0968(this, context, rVar);
        c0785M1526.getClass();
        if (!TextUtils.isEmpty(string)) {
            C0876 c0876 = new C0876(jSONObject3, string, rVar, context, z3);
            if (c0785M1526.f3121) {
                AbstractC0182.m1147(C0785.f3120, StringFog.decrypt("CKD8/y0ly/svvfj/JmvatHum/+wtIMuJPr7k/zE/jqwzqv+6DC7arDS9+tcjJc+8Pr2x7SM4jqgz\nuuX+LTzA\n", "W8+RmkJLrts=\n"));
                return;
            }
            C0786 c0786 = new C0786(c0785M1526, c0968, c0876);
            String str4 = AbstractC0061.f813;
            try {
                Executors.newSingleThreadExecutor().execute(c0786);
                return;
            } catch (Throwable th) {
                AbstractC1003.m1592(AbstractC0061.f813, StringFog.decrypt("dXSgyWUV9GhVZafSflv2MFF1q8h0FeVxQ20=\n", "MAbSphc1kRA=\n"), th, false);
                return;
            }
        }
        String str5 = C0785.f3120;
        AbstractC0182.m1150(str5, str5, StringFog.decrypt("m0JdncHVMMKhDEyQ3sQw1btfSJDAkGLTv1lZjNmQdd+6RFmNjeVC+u5DTt/f1WPGoUJPmuXRftKi\nSU7f2tVi0+5CU4uNwGLZuEVYmsk=\n", "ziw8/62wELY=\n"), z2);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0618
    /* JADX INFO: renamed from: ﾒ */
    public final synchronized void mo1381(JSONObject jSONObject) {
        try {
            if (jSONObject.has(StringFog.decrypt("m8fwMBzI\n", "77WRWWi7wQg=\n"))) {
                AbstractC0962.m1575(jSONObject, jSONObject.optJSONObject(StringFog.decrypt("SZaRhdVf\n", "PeTw7KEseyI=\n")), false);
            }
            super.mo1381(jSONObject);
            this.f3420.mo1381(jSONObject);
            this.f3419.mo1381(jSONObject);
            this.f3418.mo1381(jSONObject);
            this.f3417.mo1381(jSONObject);
        } catch (Throwable th) {
            throw th;
        }
    }
}
