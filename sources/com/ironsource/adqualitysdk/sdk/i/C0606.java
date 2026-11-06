package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Calendar;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᖽ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0606 extends C0181 {

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public static final String f2572 = StringFog.decrypt("b4cHBLT7BzNdrBANo/spNUCMFAm54Bw=\n", "LulmaM2PblA=\n");

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final Handler f2573;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public int f2574;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public int f2575;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final int f2576;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final String f2577;

    public C0606(Context context, r rVar, int i, String str, long j) {
        super(context, rVar, j);
        this.f2576 = i;
        this.f2575 = 0;
        this.f2574 = 1;
        this.f2577 = str;
        HandlerThread handlerThread = new HandlerThread(StringFog.decrypt("R0mNVuGDTud1Yppf9oNg4WhCnlvsmFU=\n", "BifsOpj3J4Q=\n"));
        handlerThread.start();
        this.f2573 = new Handler(handlerThread.getLooper());
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m1369(String str, JSONObject jSONObject, JSONObject jSONObject2, boolean z, C0730 c0730) {
        try {
            try {
                this.f2573.post(new C0610(this, str, jSONObject, jSONObject2, z, c0730));
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.C0181
    /* JADX INFO: renamed from: ﾒ */
    public final JSONObject mo1145(JSONObject jSONObject, boolean z, boolean z2, boolean z3) throws JSONException {
        long timeInMillis;
        long jElapsedRealtime;
        synchronized (this) {
            String str = AbstractC0061.f813;
            timeInMillis = Calendar.getInstance().getTimeInMillis();
            jElapsedRealtime = SystemClock.elapsedRealtime();
        }
        JSONObject jSONObjectMo1145 = super.mo1145(jSONObject, z, z2, z3);
        try {
            String str2 = AbstractC0047.f625;
            long jOptLong = jSONObjectMo1145.optLong(str2);
            jSONObjectMo1145.remove(str2);
            if (jOptLong != 0) {
                long j = jElapsedRealtime - (timeInMillis - jOptLong);
                jSONObjectMo1145.put(StringFog.decrypt("a1xd\n", "GCgui2v6aD4=\n"), timeInMillis);
                jSONObjectMo1145.put(StringFog.decrypt("dQk+\n", "BnxKANzLBWQ=\n"), jElapsedRealtime);
                timeInMillis = jOptLong;
                jElapsedRealtime = j;
            }
            jSONObjectMo1145.put(StringFog.decrypt("MA6Y\n", "VHrrJraVyFk=\n"), timeInMillis);
            jSONObjectMo1145.put(StringFog.decrypt("M5k=\n", "Ru2tv05T01E=\n"), jElapsedRealtime);
            jSONObjectMo1145.put(StringFog.decrypt("42mIaQ==\n", "kBzhDSEKr7g=\n"), this.f2577);
            jSONObjectMo1145.put(StringFog.decrypt("XxwS\n", "LHV2P2JEQbY=\n"), this.f2576);
            String strDecrypt = StringFog.decrypt("3d8F\n", "rrFoNvPORGo=\n");
            int i = this.f2575;
            if (i == 0) {
                i = 1;
            }
            jSONObjectMo1145.put(strDecrypt, i);
            if (AbstractC0885.m1491().mo1492()) {
                jSONObjectMo1145.put(StringFog.decrypt("De8Bzw==\n", "bpxtq/zDph4=\n"), true);
            }
            jSONObjectMo1145.put(StringFog.decrypt("inTM\n", "6RO6+t6vOmo=\n"), AbstractC0885.m1491().mo1510());
            C1029 c1029 = ((C0893) AbstractC0885.m1491()).f3417;
            if (c1029 != null) {
                String strM1602 = c1029.m1602();
                if (!TextUtils.isEmpty(strM1602)) {
                    jSONObjectMo1145.put(StringFog.decrypt("Dx/f\n", "amurAH575Co=\n"), strM1602);
                }
                Object objM1604 = c1029.m1604();
                if (objM1604 != null) {
                    jSONObjectMo1145.put(StringFog.decrypt("cl0Hiw==\n", "Fylz+PaELvg=\n"), objM1604);
                }
            }
            if (z2) {
                m1370(jSONObjectMo1145);
                return jSONObjectMo1145;
            }
        } catch (JSONException e) {
            String str3 = f2572;
            AbstractC0182.m1156(str3, str3, StringFog.decrypt("iUZX21GzLFSpVVHdTfRvQ7pRS8Bu9jtH\n", "zDQltCOTTyY=\n"), e, null, false);
        }
        return jSONObjectMo1145;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m1370(JSONObject jSONObject) {
        C0163 c0163M1440 = C0752.m1435().m1440();
        try {
            jSONObject.put(StringFog.decrypt("N9JixDfsNu8z\n", "W7MRsGODQ4w=\n"), AbstractC0962.m1572(c0163M1440.f1165, c0163M1440.f1164, c0163M1440.f1163, c0163M1440.f1162));
        } catch (JSONException e) {
            String str = f2572;
            AbstractC0182.m1156(str, str, StringFog.decrypt("/Vwi4m0gEaj8Rz7qP2wRv+xBJe53IASjuEsm6HF0\n", "mC5QjR8AcMw=\n"), e, null, false);
        }
    }
}
